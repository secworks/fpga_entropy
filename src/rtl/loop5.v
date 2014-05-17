
module loop5(output wire d);

  wire d0;
  wire d1;
  wire d2;
  wire d3;
  wire d4;
  
  inv1 i0(.s(d4), d(d0));
  inv1 i1(.s(d0), d(d1));
  inv1 i2(.s(d1), d(d2));
  inv1 i3(.s(d2), d(d3));
  inv1 i4(.s(d3), d(d4));
  
  assign d = d4;
  
endmodule // loop5

  
