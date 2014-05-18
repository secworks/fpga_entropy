//======================================================================
//
// loop13.v
// --------
// Combinational loop with 13 inverters and external seed.
//
//
// Author: Joachim Strombergson
// Copyright (c) 2014, Secworks Sweden AB
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or 
// without modification, are permitted provided that the following 
// conditions are met: 
// 
// 1. Redistributions of source code must retain the above copyright 
//    notice, this list of conditions and the following disclaimer. 
// 
// 2. Redistributions in binary form must reproduce the above copyright 
//    notice, this list of conditions and the following disclaimer in 
//    the documentation and/or other materials provided with the 
//    distribution. 
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS 
// FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE 
// COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, 
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF 
// ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//======================================================================

module loop13(
              input wire  ctrl,
              input wire  seed,
              output wire d
             );

  wire s00;
  wire s01;
  wire s02;
  wire s03;
  wire s04;
  wire s05;
  wire s06;
  wire s07;
  wire s08;
  wire s09;
  wire s10;
  wire s11;
  wire s12;

  wire d00;
  wire d01;
  wire d02;
  wire d03;
  wire d04;
  wire d05;
  wire d06;
  wire d07;
  wire d08;
  wire d09;
  wire d10;
  wire d11;
  wire d12;
  
  inv1 i00(.s(s00), .d(d00));
  inv1 i01(.s(s01), .d(d01));
  inv1 i02(.s(s02), .d(d02));
  inv1 i03(.s(s03), .d(d03));
  inv1 i04(.s(s04), .d(d04));
  inv1 i05(.s(s05), .d(d05));
  inv1 i06(.s(s06), .d(d06));
  inv1 i07(.s(s07), .d(d07));
  inv1 i08(.s(s08), .d(d08));
  inv1 i09(.s(s09), .d(d09));

  inv1 i10(.s(s10), .d(d10));
  inv1 i11(.s(s11), .d(d11));
  inv1 i12(.s(s12), .d(d12));

  assign s00 = ctrl ? ~seed : d12;
  assign s01 = ctrl ?  seed : d00;
  assign s02 = ctrl ?  seed : d01;
  assign s03 = ctrl ?  seed : d02;
  assign s04 = ctrl ?  seed : d03;
  assign s05 = ctrl ?  seed : d04;
  assign s06 = ctrl ?  seed : d05;
  assign s07 = ctrl ?  seed : d06;
  assign s08 = ctrl ?  seed : d07;
  assign s09 = ctrl ?  seed : d08;

  assign s10 = ctrl ?  seed : d09;
  assign s11 = ctrl ?  seed : d10;
  assign s12 = ctrl ?  seed : d11;
  
  assign d = d12;
  
endmodule // loop13

//======================================================================
// EOF loop13.v
//======================================================================
