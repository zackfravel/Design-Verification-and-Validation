
module bcdCounter ( clk, rst, out );
  output [3:0] out;
  input clk, rst;
  wire   n34, n35, n62, n36, N11, N12, n28, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n49, n50, n51, n52, n53, n54, n56, n58, n59, n60;
  assign out[3] = n34;

  DFFX2 \out_reg[0]  ( .D(n37), .CLK(clk), .Q(n36), .QN(n28) );
  DFFX2 \out_reg[1]  ( .D(n50), .CLK(clk), .Q(n62), .QN(n60) );
  DFFX2 \out_reg[2]  ( .D(N11), .CLK(clk), .Q(n35), .QN(n56) );
  DFFX2 \out_reg[3]  ( .D(N12), .CLK(clk), .Q(n34), .QN(n58) );
  NAND3X4 U16 ( .IN1(n36), .IN2(n39), .IN3(out[1]), .QN(n43) );
  NAND3X4 U21 ( .IN1(n40), .IN2(n41), .IN3(n42), .QN(n49) );
  INVX8 U24 ( .IN(n45), .QN(n39) );
  AO22X2 U28 ( .IN1(n39), .IN2(n34), .IN3(out[2]), .IN4(n38), .Q(N12) );
  OAI22X2 U29 ( .IN1(n35), .IN2(n43), .IN3(n44), .IN4(n42), .QN(N11) );
  OA21X1 U30 ( .IN1(out[1]), .IN2(n45), .IN3(n54), .Q(n44) );
  AO21X2 U31 ( .IN1(n59), .IN2(n49), .IN3(rst), .Q(n45) );
  ISOLORX2 U32 ( .D(n52), .ISO(n51), .Q(n50) );
  AND3X2 U33 ( .IN1(n39), .IN2(n41), .IN3(out[0]), .Q(n51) );
  INVX2 U34 ( .IN(n35), .QN(n42) );
  AND2X1 U35 ( .IN1(n37), .IN2(n62), .Q(n52) );
  INVX2 U36 ( .IN(n62), .QN(n41) );
  INVX2 U37 ( .IN(n53), .QN(n54) );
  INVX2 U38 ( .IN(n54), .QN(n37) );
  AND2X2 U39 ( .IN1(n39), .IN2(n40), .Q(n53) );
  INVX2 U40 ( .IN(n40), .QN(out[0]) );
  INVX4 U41 ( .IN(n36), .QN(n40) );
  INVX2 U42 ( .IN(n56), .QN(out[2]) );
  AOINVX2 U43 ( .IN(n58), .QN(n59) );
  AOINVX4 U44 ( .IN(n60), .QN(out[1]) );
  AOINVX2 U45 ( .IN(n43), .QN(n38) );
endmodule

