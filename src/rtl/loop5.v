
module loop5(output wire d);

  wire d00;
  wire d01;
  wire d02;
  wire d03;
  wire d04;
  
  inv1 i0(.s(d04), d(d00));
  inv1 i1(.s(d00), d(d01));
  inv1 i2(.s(d01), d(d02));
  inv1 i3(.s(d02), d(d03));
  inv1 i4(.s(d03), d(d04));
  
  assign d = d04;
  
endmodule // loop5

  
