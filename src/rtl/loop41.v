
module loop41(output wire d);

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
  wire d13;
  wire d14;
  wire d15;
  wire d16;
  wire d17;
  wire d18;
  wire d19;

  wire d20;
  wire d21;
  wire d22;
  wire d23;
  wire d24;
  wire d25;
  wire d26;
  wire d27;
  wire d28;
  wire d29;

  wire d30;
  wire d31;
  wire d32;
  wire d33;
  wire d34;
  wire d35;
  wire d36;
  wire d37;
  wire d38;
  wire d39;

  wire d40;
  
  inv1 i00(.s(d40), d(d00));
  inv1 i01(.s(d00), d(d01));
  inv1 i02(.s(d01), d(d02));
  inv1 i03(.s(d02), d(d03));
  inv1 i04(.s(d03), d(d04));
  inv1 i05(.s(d04), d(d05));
  inv1 i06(.s(d05), d(d06));
  inv1 i07(.s(d06), d(d07));
  inv1 i08(.s(d07), d(d08));
  inv1 i09(.s(d08), d(d09));

  inv1 i10(.s(d09), d(d10));
  inv1 i11(.s(d10), d(d11));
  inv1 i12(.s(d11), d(d12));
  inv1 i13(.s(d12), d(d13));
  inv1 i14(.s(d13), d(d14));
  inv1 i15(.s(d14), d(d15));
  inv1 i16(.s(d15), d(d16));
  inv1 i17(.s(d16), d(d17));
  inv1 i18(.s(d17), d(d18));
  inv1 i19(.s(d18), d(d19));

  inv1 i20(.s(d19), d(d20));
  inv1 i21(.s(d20), d(d21));
  inv1 i22(.s(d21), d(d22));
  inv1 i23(.s(d22), d(d23));
  inv1 i24(.s(d23), d(d24));
  inv1 i25(.s(d24), d(d25));
  inv1 i26(.s(d25), d(d26));
  inv1 i27(.s(d26), d(d27));
  inv1 i28(.s(d27), d(d28));
  inv1 i29(.s(d28), d(d29));

  inv1 i30(.s(d29), d(d30));
  inv1 i31(.s(d30), d(d31));
  inv1 i32(.s(d31), d(d32));
  inv1 i33(.s(d32), d(d33));
  inv1 i34(.s(d33), d(d34));
  inv1 i35(.s(d34), d(d35));
  inv1 i36(.s(d35), d(d36));
  inv1 i37(.s(d36), d(d37));
  inv1 i38(.s(d37), d(d38));
  inv1 i39(.s(d38), d(d39));

  inv1 i40(.s(d39), d(d40));
  
  assign d = d40;
  
endmodule // loop41

  
