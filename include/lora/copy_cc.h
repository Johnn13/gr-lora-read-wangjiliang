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

#ifndef INCLUDED_LORA_COPY_CC_H
#define INCLUDED_LORA_COPY_CC_H

#include <lora/api.h>
#include <gnuradio/tagged_stream_block.h>

namespace gr {
  namespace lora {

    /*!
     * \brief <+description of block+>
     * \ingroup lora
     *
     */
    class LORA_API copy_cc : virtual public gr::tagged_stream_block
    {
     public:
      typedef boost::shared_ptr<copy_cc> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of lora::copy_cc.
       *
       * To avoid accidental use of raw pointers, lora::copy_cc's
       * constructor is in a private implementation
       * class. lora::copy_cc::make is the public interface for
       * creating new instances.
       */
      static sptr make(const std::string &len_tag_key="");
    };

  } // namespace lora
} // namespace gr

#endif /* INCLUDED_LORA_COPY_CC_H */

