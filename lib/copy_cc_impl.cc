/* -*- c++ -*- */
/*
 * Copyright 2022 Damon@rssdr.com.
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
#include "copy_cc_impl.h"

namespace gr {
  namespace lora {

    copy_cc::sptr
    copy_cc::make(const std::string &len_tag_key)
    {
      return gnuradio::get_initial_sptr
        (new copy_cc_impl(len_tag_key));
    }


    /*
     * The private constructor
     */
    copy_cc_impl::copy_cc_impl(const std::string &len_tag_key)
      : gr::tagged_stream_block("copy_cc",
              gr::io_signature::make(1, 1, sizeof(gr_complex)),
              gr::io_signature::make(1, 1, sizeof(gr_complex)), len_tag_key)
    {}

    /*
     * Our virtual destructor.
     */
    copy_cc_impl::~copy_cc_impl()
    {
    }

    int
    copy_cc_impl::calculate_output_stream_length(const gr_vector_int &ninput_items)
    {
      int noutput_items = ninput_items[0];
      return noutput_items ;
    }

    int
    copy_cc_impl::work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
        memcpy(output_items[0], input_items[0], ninput_items[0]*sizeof(gr_complex));
        return ninput_items[0];
    }

  } /* namespace lora */
} /* namespace gr */

