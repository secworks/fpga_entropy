
module loop5(
             input wire  ctrl,
             input wire  seed,
             output wire d
            );

  wire s00;
  wire s01;
  wire s02;
  wire s03;
  wire s04;

  wire d00;
  wire d01;
  wire d02;
  wire d03;
  wire d04;
  
  inv1 i0(.s(s00), .d(d00));
  inv1 i1(.s(s01), .d(d01));
  inv1 i2(.s(s02), .d(d02));
  inv1 i3(.s(s03), .d(d03));
  inv1 i4(.s(s04), .d(d04));

  assign s00 = ctrl ? seed : d04;
  assign s01 = ctrl ? seed : d00;
  assign s02 = ctrl ? seed : d01;
  assign s03 = ctrl ? seed : d02;
  assign s04 = ctrl ? seed : d03;
  
  assign d = d04;
  
endmodule // loop5

  
