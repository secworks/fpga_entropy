//======================================================================
//
// bp_osc.v
// --------
// Digital ring oscillator used as entropy source. Based on the
// idea of using carry chain in adders as inverter by Bernd Paysan.
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

module bp_osc #(parameter WIDTH = 8)
             (
              input wire                   clk,
              input wire                   reset_n,

              input wire [(WIDTH - 1) : 0] opa,
              input wire [(WIDTH - 1) : 0] opb,

              output wire                  dout
             );

  //----------------------------------------------------------------
  // Registers.
  //----------------------------------------------------------------
  reg dout_reg;


  //----------------------------------------------------------------
  // Wires.
  //----------------------------------------------------------------
  reg [WIDTH : 0] sum;
  reg 	          cin;


  //----------------------------------------------------------------
  // Concurrent assignment.
  //----------------------------------------------------------------
  assign dout = dout_reg;


  //----------------------------------------------------------------
  // reg_update
  //----------------------------------------------------------------
     always @ (posedge clk)
       begin
         if (!reset_n)
           begin
             dout_reg <= 1'b0;
           end
         else
           begin
             dout_reg <= cin;
           end
       end


  //----------------------------------------------------------------
  // adder_osc
  //
  // Adder logic that generates the oscillator.
  //
  // NOTE: This logic contains a combinational loop and does
  // not play well with an event driven simulator.
  //----------------------------------------------------------------
  always @*
    begin: adder_osc
      cin = ~sum[WIDTH];
      sum = opa + opb + cin;
    end
endmodule // bp_osc

//======================================================================
// EOF bp_osc.v
//======================================================================
