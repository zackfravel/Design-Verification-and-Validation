
module bitCounter ( in, out );
  input [7:0] in;
  output [3:0] out;
  wire   n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63;

  ISOLANDX1 U40 ( .D(n53), .ISO(n47), .Q(n52) );
  NOR2X1 U41 ( .IN1(n58), .IN2(n59), .QN(n47) );
  ISOLANDX1 U42 ( .D(n48), .ISO(n49), .Q(out[3]) );
  XNOR2X2 U43 ( .IN1(n48), .IN2(n49), .Q(out[2]) );
  NAND3X0 U44 ( .IN1(n50), .IN2(n51), .IN3(n52), .QN(n49) );
  NAND2X0 U45 ( .IN1(n53), .IN2(n54), .QN(n48) );
  NAND2X0 U46 ( .IN1(n55), .IN2(n56), .QN(n54) );
  XNOR2X2 U47 ( .IN1(n52), .IN2(n57), .Q(out[1]) );
  NAND2X0 U48 ( .IN1(n50), .IN2(n51), .QN(n57) );
  NAND2X0 U49 ( .IN1(n59), .IN2(n58), .QN(n53) );
  AO22X2 U50 ( .IN1(in[6]), .IN2(in[7]), .IN3(n60), .IN4(n61), .Q(n58) );
  XOR2X2 U51 ( .IN1(n55), .IN2(n56), .Q(n59) );
  AO22X2 U52 ( .IN1(in[3]), .IN2(in[4]), .IN3(in[5]), .IN4(n62), .Q(n56) );
  AO22X2 U53 ( .IN1(in[0]), .IN2(in[1]), .IN3(in[2]), .IN4(n63), .Q(n55) );
  XOR2X2 U54 ( .IN1(n51), .IN2(n50), .Q(out[0]) );
  XOR2X2 U55 ( .IN1(n61), .IN2(n60), .Q(n50) );
  XOR2X2 U56 ( .IN1(in[6]), .IN2(in[7]), .Q(n60) );
  XOR2X2 U57 ( .IN1(in[2]), .IN2(n63), .Q(n61) );
  XOR2X2 U58 ( .IN1(in[0]), .IN2(in[1]), .Q(n63) );
  XOR2X2 U59 ( .IN1(in[5]), .IN2(n62), .Q(n51) );
  XOR2X2 U60 ( .IN1(in[3]), .IN2(in[4]), .Q(n62) );
endmodule

