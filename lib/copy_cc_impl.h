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

#ifndef INCLUDED_LORA_COPY_CC_IMPL_H
#define INCLUDED_LORA_COPY_CC_IMPL_H

#include <lora/copy_cc.h>

namespace gr {
  namespace lora {

    class copy_cc_impl : public copy_cc
    {
     private:
      // Nothing to declare in this block.

     protected:
      int calculate_output_stream_length(const gr_vector_int &ninput_items);

     public:
      copy_cc_impl(const std::string &len_tag_key);
      ~copy_cc_impl();

      // Where all the action really happens
      int work(
              int noutput_items,
              gr_vector_int &ninput_items,
              gr_vector_const_void_star &input_items,
              gr_vector_void_star &output_items
      );
    };

  } // namespace lora
} // namespace gr

#endif /* INCLUDED_LORA_COPY_CC_IMPL_H */

