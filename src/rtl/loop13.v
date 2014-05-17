
module loop13(output wire d);

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
  
  inv1 i00(.s(d12), d(d00));
  inv1 i01(.s(d00), d(d01));
  inv1 i02(.s(d01), d(d02));
  inv1 i03(.s(d02), d(d03));
  inv1 i04(.s(d03), d(d04));
  inv1 i05(.s(d04), d(d05));
  inv1 i06(.s(d05), d(d06));
  inv1 i07(.s(d06), d(d07));
  inv1 i08(.s(d07), d(d08));
  inv1 i09(.s(d08), d(d09));
  inv1 i00(.s(d09), d(d10));
  inv1 i11(.s(d10), d(d11));
  inv1 i12(.s(d11), d(d12));
  
  assign d = d12;
  
endmodule // loop13

  
