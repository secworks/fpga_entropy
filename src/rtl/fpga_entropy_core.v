//======================================================================
//
// fpga_entropy_core.v
// -------------------
// fpga entropy generation core.
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

module fpga_entropy_core(
                         // Clock and reset.
                         input wire           clk,
                         input wire           reset_n,

                         input wire           init,
                         input wire           update,
                         output wire          seed,

                         output wire [31 : 0] rnd
                        );

  
  //----------------------------------------------------------------
  // Registers including update variables and write enable.
  //----------------------------------------------------------------
  reg [31 : 0] shift_reg;
  reg [31 : 0] rnd_reg;
  reg [4 : 0]  bit_ctr_reg;

  
  //----------------------------------------------------------------
  // Wires.
  //----------------------------------------------------------------
  wire l5d;
  wire l7d;
  wire l13d;
  wire l41d;
  wire l43d;
  
  
  //----------------------------------------------------------------
  // Concurrent connectivity for ports etc.
  //----------------------------------------------------------------
  assign rnd     = rnd_reg;
  
             
  //----------------------------------------------------------------
  // module instantiations.
  //----------------------------------------------------------------
  loop5   l5(.ctrl(init), .seed(seed), .d(l5d));
  loop7   l7(.ctrl(init), .seed(seed), .d(l7d));
  loop13 l13(.ctrl(init), .seed(seed), .d(l13d));
  loop41 l41(.ctrl(init), .seed(seed), .d(l41d));
  loop43 l43(.ctrl(init), .seed(seed), .d(l43d));
  
  
  //----------------------------------------------------------------
  // reg_update
  //
  // Update functionality for all registers in the core.
  // All registers are positive edge triggered with synchronous
  // active low reset. All registers have write enable.
  //----------------------------------------------------------------
  always @ (posedge clk)
    begin
      if (!reset_n)
        begin
          shift_reg   <= 32'h00000000;
          rnd_reg     <= 32'h00000000;
          bit_ctr_reg <= 5'h00;
        end
      else
        begin
          if (update)
            begin
              shift_reg   <= {shift_reg[30 : 0], l5d ^ l7d ^ l13d ^ l41d ^ l43d};
              bit_ctr_reg <= bit_ctr_reg + 1'b1;
            end
          
          if (bit_ctr_reg == 5'h1f)
            begin
              rnd_reg <= shift_reg;
            end
        end
    end // reg_update
  
endmodule // fpga_entropy_core

//======================================================================
// EOF fpga_entropy_core.v
//======================================================================
