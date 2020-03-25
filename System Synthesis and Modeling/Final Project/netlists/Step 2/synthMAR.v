
module MAR ( clk, reset, data_in, enI, data_out );
  input [15:0] data_in;
  output [15:0] data_out;
  input clk, reset, enI;
  wire   n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51;

  AO22X2 U22 ( .IN1(n51), .IN2(data_out[15]), .IN3(enI), .IN4(data_in[15]), 
        .Q(n49) );
  AO22X2 U23 ( .IN1(n51), .IN2(data_out[14]), .IN3(data_in[14]), .IN4(enI), 
        .Q(n48) );
  AO22X2 U24 ( .IN1(n51), .IN2(data_out[13]), .IN3(data_in[13]), .IN4(enI), 
        .Q(n47) );
  AO22X2 U25 ( .IN1(n51), .IN2(data_out[12]), .IN3(data_in[12]), .IN4(enI), 
        .Q(n46) );
  AO22X2 U26 ( .IN1(n51), .IN2(data_out[11]), .IN3(data_in[11]), .IN4(enI), 
        .Q(n45) );
  AO22X2 U27 ( .IN1(n51), .IN2(data_out[10]), .IN3(data_in[10]), .IN4(enI), 
        .Q(n44) );
  AO22X2 U28 ( .IN1(n51), .IN2(data_out[9]), .IN3(data_in[9]), .IN4(enI), .Q(
        n43) );
  AO22X2 U29 ( .IN1(n51), .IN2(data_out[8]), .IN3(data_in[8]), .IN4(enI), .Q(
        n42) );
  AO22X2 U30 ( .IN1(n51), .IN2(data_out[7]), .IN3(data_in[7]), .IN4(enI), .Q(
        n41) );
  AO22X2 U31 ( .IN1(n51), .IN2(data_out[6]), .IN3(data_in[6]), .IN4(enI), .Q(
        n40) );
  AO22X2 U32 ( .IN1(n51), .IN2(data_out[5]), .IN3(data_in[5]), .IN4(enI), .Q(
        n39) );
  AO22X2 U33 ( .IN1(n51), .IN2(data_out[4]), .IN3(data_in[4]), .IN4(enI), .Q(
        n38) );
  AO22X2 U34 ( .IN1(n51), .IN2(data_out[3]), .IN3(data_in[3]), .IN4(enI), .Q(
        n37) );
  AO22X2 U35 ( .IN1(n51), .IN2(data_out[2]), .IN3(data_in[2]), .IN4(enI), .Q(
        n36) );
  AO22X2 U36 ( .IN1(n51), .IN2(data_out[1]), .IN3(data_in[1]), .IN4(enI), .Q(
        n35) );
  AO22X2 U37 ( .IN1(n51), .IN2(data_out[0]), .IN3(data_in[0]), .IN4(enI), .Q(
        n34) );
  AODFFARX2 \data_reg[15]  ( .D(n49), .CLK(clk), .RSTB(n50), .Q(data_out[15])
         );
  AODFFARX2 \data_reg[14]  ( .D(n48), .CLK(clk), .RSTB(n50), .Q(data_out[14])
         );
  AODFFARX2 \data_reg[13]  ( .D(n47), .CLK(clk), .RSTB(n50), .Q(data_out[13])
         );
  AODFFARX2 \data_reg[12]  ( .D(n46), .CLK(clk), .RSTB(n50), .Q(data_out[12])
         );
  AODFFARX2 \data_reg[11]  ( .D(n45), .CLK(clk), .RSTB(n50), .Q(data_out[11])
         );
  AODFFARX2 \data_reg[10]  ( .D(n44), .CLK(clk), .RSTB(n50), .Q(data_out[10])
         );
  AODFFARX2 \data_reg[9]  ( .D(n43), .CLK(clk), .RSTB(n50), .Q(data_out[9]) );
  AODFFARX2 \data_reg[8]  ( .D(n42), .CLK(clk), .RSTB(n50), .Q(data_out[8]) );
  AODFFARX2 \data_reg[7]  ( .D(n41), .CLK(clk), .RSTB(n50), .Q(data_out[7]) );
  AODFFARX2 \data_reg[6]  ( .D(n40), .CLK(clk), .RSTB(n50), .Q(data_out[6]) );
  AODFFARX2 \data_reg[5]  ( .D(n39), .CLK(clk), .RSTB(n50), .Q(data_out[5]) );
  AODFFARX2 \data_reg[4]  ( .D(n38), .CLK(clk), .RSTB(n50), .Q(data_out[4]) );
  AODFFARX2 \data_reg[3]  ( .D(n37), .CLK(clk), .RSTB(n50), .Q(data_out[3]) );
  AODFFARX2 \data_reg[2]  ( .D(n36), .CLK(clk), .RSTB(n50), .Q(data_out[2]) );
  AODFFARX2 \data_reg[1]  ( .D(n35), .CLK(clk), .RSTB(n50), .Q(data_out[1]) );
  AODFFARX2 \data_reg[0]  ( .D(n34), .CLK(clk), .RSTB(n50), .Q(data_out[0]) );
  AOINVX2 U38 ( .IN(enI), .QN(n51) );
  AOINVX2 U39 ( .IN(reset), .QN(n50) );
endmodule

