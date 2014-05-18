
module loop41(
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
  wire s13;
  wire s14;
  wire s15;
  wire s16;
  wire s17;
  wire s18;
  wire s19;

  wire s20;
  wire s21;
  wire s22;
  wire s23;
  wire s24;
  wire s25;
  wire s26;
  wire s27;
  wire s28;
  wire s29;

  wire s30;
  wire s31;
  wire s32;
  wire s33;
  wire s34;
  wire s35;
  wire s36;
  wire s37;
  wire s38;
  wire s39;

  wire s40;

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
  inv1 i13(.s(s13), .d(d13));
  inv1 i14(.s(s14), .d(d14));
  inv1 i15(.s(s15), .d(d15));
  inv1 i16(.s(s16), .d(d16));
  inv1 i17(.s(s17), .d(d17));
  inv1 i18(.s(s18), .d(d18));
  inv1 i19(.s(s19), .d(d19));

  inv1 i20(.s(s20), .d(d20));
  inv1 i21(.s(s21), .d(d21));
  inv1 i22(.s(s22), .d(d22));
  inv1 i23(.s(s23), .d(d23));
  inv1 i24(.s(s24), .d(d24));
  inv1 i25(.s(s25), .d(d25));
  inv1 i26(.s(s26), .d(d26));
  inv1 i27(.s(s27), .d(d27));
  inv1 i28(.s(s28), .d(d28));
  inv1 i29(.s(s29), .d(d29));

  inv1 i30(.s(s30), .d(d30));
  inv1 i31(.s(s31), .d(d31));
  inv1 i32(.s(s32), .d(d32));
  inv1 i33(.s(s33), .d(d33));
  inv1 i34(.s(s34), .d(d34));
  inv1 i35(.s(s35), .d(d35));
  inv1 i36(.s(s36), .d(d36));
  inv1 i37(.s(s37), .d(d37));
  inv1 i38(.s(s38), .d(d38));
  inv1 i39(.s(s39), .d(d39));

  inv1 i40(.s(s40), .d(d40));

  assign s00 = ctrl ? ~seed : d40;
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
  assign s13 = ctrl ?  seed : d12;
  assign s14 = ctrl ?  seed : d13;
  assign s15 = ctrl ?  seed : d14;
  assign s16 = ctrl ?  seed : d15;
  assign s17 = ctrl ?  seed : d16;
  assign s18 = ctrl ?  seed : d17;
  assign s19 = ctrl ?  seed : d18;

  assign s20 = ctrl ?  seed : d19;
  assign s21 = ctrl ?  seed : d20;
  assign s22 = ctrl ?  seed : d21;
  assign s23 = ctrl ?  seed : d22;
  assign s24 = ctrl ?  seed : d23;
  assign s25 = ctrl ?  seed : d24;
  assign s26 = ctrl ?  seed : d25;
  assign s27 = ctrl ?  seed : d26;
  assign s28 = ctrl ?  seed : d27;
  assign s29 = ctrl ?  seed : d28;

  assign s30 = ctrl ?  seed : d29;
  assign s31 = ctrl ?  seed : d30;
  assign s32 = ctrl ?  seed : d31;
  assign s33 = ctrl ?  seed : d32;
  assign s34 = ctrl ?  seed : d33;
  assign s35 = ctrl ?  seed : d34;
  assign s36 = ctrl ?  seed : d35;
  assign s37 = ctrl ?  seed : d36;
  assign s38 = ctrl ?  seed : d37;
  assign s39 = ctrl ?  seed : d38;

  assign s40 = ctrl ?  seed : d39;
  
  assign d = d40;
  
endmodule // loop41

  
