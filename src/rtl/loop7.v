
module loop7(output wire d);

  wire d0;
  wire d1;
  wire d2;
  wire d3;
  wire d4;
  wire d5;
  wire d6;
  
  inv1 i0(.s(d4), d(d0));
  inv1 i1(.s(d0), d(d1));
  inv1 i2(.s(d1), d(d2));
  inv1 i3(.s(d2), d(d3));
  inv1 i4(.s(d3), d(d4));
  inv1 i5(.s(d4), d(d5));
  inv1 i6(.s(d5), d(d6));
  
  assign d = d6;
  
endmodule // loop7

  
