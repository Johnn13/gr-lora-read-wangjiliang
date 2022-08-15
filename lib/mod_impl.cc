/* -*- c++ -*- */
/* 
 * Copyright 2016 Bastille Networks.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "mod_impl.h"

#define DUMP_IQ 0 // Enables debug output

namespace gr {
  namespace lora {

    mod::sptr
    mod::make(  short spreading_factor, unsigned char sync_word)
    {
      return gnuradio::get_initial_sptr
        (new mod_impl(spreading_factor, sync_word));
    }

    /*
     * The private constructor
     */
    mod_impl::mod_impl( short spreading_factor,
                        unsigned char sync_word)
      : gr::block("mod",
              gr::io_signature::make(0, 0, 0),
              gr::io_signature::make(0, 0, 0)),
        f_mod("mod.out", std::ios::out),
        d_sf(spreading_factor),
        d_sync_word(sync_word)
    {
      assert((d_sf > 5) && (d_sf < 13));

      d_in_port = pmt::mp("in"); // return the symbol whose name is "In"
      message_port_register_in(d_in_port);
      set_msg_handler(d_in_port, boost::bind(&mod_impl::modulate, this, _1)); // 订阅端口d_in_port，并将这个端口绑定到消息处理模块modulate上

      d_out_port = pmt::mp("out");// return the symbol whose name is "Out"
      message_port_register_out(d_out_port);

      d_fft_size = (1 << d_sf); // d_fft_size = 2^sf

      float phase = -M_PI; // 起始相位 = -pi
      double accumulator = 0;

      for (int i = 0; i < 2*d_fft_size; i++)
      {
        // 生成basic upchirp 和 downchirp
        accumulator += phase;
        d_downchirp.push_back(gr_complex(std::conj(std::polar(1.0, accumulator)))); // 取幅值为1，相位为accumulator的复数的共轭
        d_upchirp.push_back(gr_complex(std::polar(1.0, accumulator)));// 取幅值为1，相位为accumulator的复数
        phase += (2*M_PI)/d_fft_size;
        // 最后生成的 basic upchirp是由相位从 -pi到pi，幅值为1的复数
        // basic downchirp是由相位从pi到-pi，幅值为1的复数
      }

    }

    /*
     * Our virtual destructor.
     */
    mod_impl::~mod_impl()
    {
    }

    void
    mod_impl::modulate (pmt::pmt_t msg)
    {
      pmt::pmt_t symbols(pmt::cdr(msg)); // 将in端口的message放到symbol中

      size_t pkt_len(0); // size_t: unsigned long 
      const uint16_t* symbols_in = pmt::u16vector_elements(symbols, pkt_len); // 得到pkt_len的大小
      d_iq_out.resize(0); // 将d_iq_out重置为长度为0的vector

      std::vector<gr_complex> iq_out;

      // Preamble
      for (int i = 0; i < NUM_PREAMBLE_CHIRPS*d_fft_size; i++)
      { // NUM_PREAMBLE_CHIRPS = 8
        iq_out.push_back(d_upchirp[(i) % d_fft_size]); // 忘iq_out塞入8个upchirp
      }

      // Sync Word 0
      for (int i = 0; i < d_fft_size; i++)
      {// d_sync_word & 0xF0 保留 d_sync_word高4位
      // (8*((d_sync_word & 0xF0) >> 4) + i) 相当于施加的初始频率
        iq_out.push_back(d_upchirp[(8*((d_sync_word & 0xF0) >> 4) + i) % d_fft_size]);
      }

      // Sync Word 1
      for (int i = 0; i < d_fft_size; i++)
      {
        iq_out.push_back(d_upchirp[(8*(d_sync_word & 0x0F) + i) % d_fft_size]);
      }

      // SFD Downchirps
      for (int i = 0; i < (2*d_fft_size+d_fft_size/4); i++) // MAGIC -- adjusting for the SFD quarter chirp
      {
        iq_out.push_back(d_downchirp[(i) % d_fft_size]);
      }

      // Payload
      for (int i = 0; i < pkt_len; i++)
      {
        for (int j = 0; j < d_fft_size; j++)
        {
          iq_out.push_back(d_upchirp[(symbols_in[i] + j) % d_fft_size]); 
        }
      }

      // Prepend zero-magnitude samples
      d_iq_out.insert(d_iq_out.begin(), 4*d_fft_size, gr_complex(std::polar(0.0, 0.0))); // 放入4个chirp长度的幅度为0、相位为0的复数

      // Append samples to IQ output buffer 将样本附加到 IQ输出缓冲区 ： d_iq_out
      for (int i = 0; i < iq_out.size(); i++)
      {
        d_iq_out.push_back(iq_out[i]);  // Writing to buffer separately for now to expose local packet for debugging
      }
      
      // Append zero-magnitude samples to kick squelch in simulation
      // 在d_iq_out前面加入的零幅值样本是为了在模拟中去噪
      d_iq_out.insert(d_iq_out.end(), 4*d_fft_size+128, gr_complex(std::polar(0.0, 0.0)));

      // Uncomment to write out modulated payload to disk
      #if DUMP_IQ
        f_mod.write((const char *)&d_iq_out[0], d_iq_out.size()*sizeof(gr_complex));
      #endif

      pmt::pmt_t pdu_meta = pmt::make_dict();
      pmt::pmt_t pdu_vector = pmt::init_c32vector(d_iq_out.size(), &(d_iq_out.front()));
      // Send msg
      message_port_pub(d_out_port, pmt::cons(pdu_meta, pdu_vector));
      d_iq_out.resize(0);
    }

    int
    mod_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
      // gr_complex *out = (gr_complex *) output_items[0];
      // unsigned int noutput_samples = (noutput_items > d_iq_out.size()) ? d_iq_out.size() : noutput_items;

      // if (noutput_samples)
      // {
      //   memcpy(out, &d_iq_out[0], noutput_samples*sizeof(gr_complex));
      //   d_iq_out.erase(d_iq_out.begin(), d_iq_out.begin()+noutput_samples);
      // }

      // return noutput_samples;
      return 0;
    }

  } /* namespace lora */
} /* namespace gr */
