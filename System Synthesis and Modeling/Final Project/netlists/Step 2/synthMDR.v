
module MDR ( clk, reset, data_bus_in, data_bus_out, data_mem_in, data_mem_out, 
        read_en, write_en, out_en );
  input [15:0] data_bus_in;
  output [15:0] data_bus_out;
  input [15:0] data_mem_in;
  output [15:0] data_mem_out;
  input clk, reset, read_en, write_en, out_en;
  wire   n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n134,
         n135, n136, n138, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174;
  wire   [15:0] read_data;
  tri   \data_bus_out[15] ;
  tri   \data_bus_out[14] ;
  tri   \data_bus_out[13] ;
  tri   \data_bus_out[12] ;
  tri   \data_bus_out[11] ;
  tri   \data_bus_out[10] ;
  tri   \data_bus_out[9] ;
  tri   \data_bus_out[8] ;
  tri   \data_bus_out[7] ;
  tri   \data_bus_out[6] ;
  tri   \data_bus_out[5] ;
  tri   \data_bus_out[4] ;
  tri   \data_bus_out[3] ;
  tri   \data_bus_out[2] ;
  tri   \data_bus_out[1] ;
  tri   \data_bus_out[0] ;

  DFFARX2 \read_data_reg[8]  ( .D(n124), .CLK(clk), .RSTB(n174), .Q(
        read_data[8]) );
  DFFARX2 \write_data_reg[15]  ( .D(n115), .CLK(clk), .RSTB(n173), .Q(
        data_mem_out[15]) );
  DFFARX2 \write_data_reg[14]  ( .D(n114), .CLK(clk), .RSTB(n173), .Q(
        data_mem_out[14]) );
  DFFARX2 \write_data_reg[13]  ( .D(n113), .CLK(clk), .RSTB(n173), .Q(
        data_mem_out[13]) );
  DFFARX2 \write_data_reg[12]  ( .D(n112), .CLK(clk), .RSTB(n173), .Q(
        data_mem_out[12]) );
  DFFARX2 \write_data_reg[11]  ( .D(n111), .CLK(clk), .RSTB(n173), .Q(
        data_mem_out[11]) );
  DFFARX2 \write_data_reg[10]  ( .D(n110), .CLK(clk), .RSTB(n173), .Q(
        data_mem_out[10]) );
  DFFARX2 \write_data_reg[9]  ( .D(n109), .CLK(clk), .RSTB(n173), .Q(
        data_mem_out[9]) );
  DFFARX2 \write_data_reg[8]  ( .D(n108), .CLK(clk), .RSTB(n172), .Q(
        data_mem_out[8]) );
  DFFARX2 \write_data_reg[7]  ( .D(n107), .CLK(clk), .RSTB(n172), .Q(
        data_mem_out[7]) );
  DFFARX2 \write_data_reg[6]  ( .D(n106), .CLK(clk), .RSTB(n172), .Q(
        data_mem_out[6]) );
  DFFARX2 \write_data_reg[5]  ( .D(n105), .CLK(clk), .RSTB(n172), .Q(
        data_mem_out[5]) );
  DFFARX2 \write_data_reg[4]  ( .D(n104), .CLK(clk), .RSTB(n172), .Q(
        data_mem_out[4]) );
  DFFARX2 \write_data_reg[3]  ( .D(n103), .CLK(clk), .RSTB(n172), .Q(
        data_mem_out[3]) );
  DFFARX2 \write_data_reg[2]  ( .D(n102), .CLK(clk), .RSTB(n172), .Q(
        data_mem_out[2]) );
  DFFARX2 \write_data_reg[1]  ( .D(n101), .CLK(clk), .RSTB(n172), .Q(
        data_mem_out[1]) );
  DFFARX2 \write_data_reg[0]  ( .D(n100), .CLK(clk), .RSTB(n172), .Q(
        data_mem_out[0]) );
  TNBUFFHX8 \data_bus_out_tri[0]  ( .IN(n169), .ENB(out_en), .Q(
        data_bus_out[0]) );
  TNBUFFHX8 \data_bus_out_tri[1]  ( .IN(n168), .ENB(out_en), .Q(
        data_bus_out[1]) );
  TNBUFFHX8 \data_bus_out_tri[2]  ( .IN(n167), .ENB(out_en), .Q(
        data_bus_out[2]) );
  TNBUFFHX8 \data_bus_out_tri[3]  ( .IN(n166), .ENB(out_en), .Q(
        data_bus_out[3]) );
  TNBUFFHX8 \data_bus_out_tri[4]  ( .IN(n165), .ENB(out_en), .Q(
        data_bus_out[4]) );
  TNBUFFHX8 \data_bus_out_tri[5]  ( .IN(n164), .ENB(out_en), .Q(
        data_bus_out[5]) );
  TNBUFFHX8 \data_bus_out_tri[6]  ( .IN(n163), .ENB(out_en), .Q(
        data_bus_out[6]) );
  TNBUFFHX8 \data_bus_out_tri[7]  ( .IN(n162), .ENB(out_en), .Q(
        data_bus_out[7]) );
  TNBUFFHX8 \data_bus_out_tri[8]  ( .IN(n161), .ENB(out_en), .Q(
        data_bus_out[8]) );
  TNBUFFHX8 \data_bus_out_tri[9]  ( .IN(n160), .ENB(out_en), .Q(
        data_bus_out[9]) );
  TNBUFFHX8 \data_bus_out_tri[10]  ( .IN(n159), .ENB(out_en), .Q(
        data_bus_out[10]) );
  TNBUFFHX8 \data_bus_out_tri[11]  ( .IN(n158), .ENB(out_en), .Q(
        data_bus_out[11]) );
  TNBUFFHX8 \data_bus_out_tri[12]  ( .IN(n157), .ENB(out_en), .Q(
        data_bus_out[12]) );
  TNBUFFHX8 \data_bus_out_tri[13]  ( .IN(n156), .ENB(out_en), .Q(
        data_bus_out[13]) );
  TNBUFFHX8 \data_bus_out_tri[14]  ( .IN(n155), .ENB(out_en), .Q(
        data_bus_out[14]) );
  TNBUFFHX8 \data_bus_out_tri[15]  ( .IN(n154), .ENB(out_en), .Q(
        data_bus_out[15]) );
  AO22X2 U58 ( .IN1(n154), .IN2(n136), .IN3(read_en), .IN4(data_mem_in[15]), 
        .Q(n131) );
  AO22X2 U59 ( .IN1(n155), .IN2(n136), .IN3(data_mem_in[14]), .IN4(read_en), 
        .Q(n130) );
  AO22X2 U60 ( .IN1(n156), .IN2(n136), .IN3(data_mem_in[13]), .IN4(read_en), 
        .Q(n129) );
  AO22X2 U61 ( .IN1(n157), .IN2(n136), .IN3(data_mem_in[12]), .IN4(read_en), 
        .Q(n128) );
  AO22X2 U62 ( .IN1(n158), .IN2(n136), .IN3(data_mem_in[11]), .IN4(read_en), 
        .Q(n127) );
  AO22X2 U63 ( .IN1(n159), .IN2(n136), .IN3(data_mem_in[10]), .IN4(read_en), 
        .Q(n126) );
  AO22X2 U64 ( .IN1(n160), .IN2(n136), .IN3(data_mem_in[9]), .IN4(read_en), 
        .Q(n125) );
  AO22X2 U65 ( .IN1(n161), .IN2(n136), .IN3(data_mem_in[8]), .IN4(read_en), 
        .Q(n124) );
  AO22X2 U66 ( .IN1(n162), .IN2(n136), .IN3(data_mem_in[7]), .IN4(read_en), 
        .Q(n123) );
  AO22X2 U67 ( .IN1(n163), .IN2(n136), .IN3(data_mem_in[6]), .IN4(read_en), 
        .Q(n122) );
  AO22X2 U68 ( .IN1(n164), .IN2(n136), .IN3(data_mem_in[5]), .IN4(read_en), 
        .Q(n121) );
  AO22X2 U69 ( .IN1(n165), .IN2(n136), .IN3(data_mem_in[4]), .IN4(read_en), 
        .Q(n120) );
  AO22X2 U70 ( .IN1(n166), .IN2(n136), .IN3(data_mem_in[3]), .IN4(read_en), 
        .Q(n119) );
  AO22X2 U71 ( .IN1(n167), .IN2(n136), .IN3(data_mem_in[2]), .IN4(read_en), 
        .Q(n118) );
  AO22X2 U72 ( .IN1(n168), .IN2(n136), .IN3(data_mem_in[1]), .IN4(read_en), 
        .Q(n117) );
  AO22X2 U73 ( .IN1(n169), .IN2(n136), .IN3(data_mem_in[0]), .IN4(read_en), 
        .Q(n116) );
  AO22X2 U74 ( .IN1(data_bus_in[15]), .IN2(n135), .IN3(n171), .IN4(
        data_mem_out[15]), .Q(n115) );
  AO22X2 U75 ( .IN1(data_bus_in[14]), .IN2(n135), .IN3(n171), .IN4(
        data_mem_out[14]), .Q(n114) );
  AO22X2 U76 ( .IN1(data_bus_in[13]), .IN2(n135), .IN3(n171), .IN4(
        data_mem_out[13]), .Q(n113) );
  AO22X2 U77 ( .IN1(data_bus_in[12]), .IN2(n135), .IN3(n171), .IN4(
        data_mem_out[12]), .Q(n112) );
  AO22X2 U78 ( .IN1(data_bus_in[11]), .IN2(n135), .IN3(n171), .IN4(
        data_mem_out[11]), .Q(n111) );
  AO22X2 U79 ( .IN1(data_bus_in[10]), .IN2(n135), .IN3(n171), .IN4(
        data_mem_out[10]), .Q(n110) );
  AO22X2 U80 ( .IN1(data_bus_in[9]), .IN2(n135), .IN3(n171), .IN4(
        data_mem_out[9]), .Q(n109) );
  AO22X2 U81 ( .IN1(data_bus_in[8]), .IN2(n135), .IN3(n171), .IN4(
        data_mem_out[8]), .Q(n108) );
  AO22X2 U82 ( .IN1(data_bus_in[7]), .IN2(n135), .IN3(n171), .IN4(
        data_mem_out[7]), .Q(n107) );
  AO22X2 U83 ( .IN1(data_bus_in[6]), .IN2(n135), .IN3(n170), .IN4(
        data_mem_out[6]), .Q(n106) );
  AO22X2 U84 ( .IN1(data_bus_in[5]), .IN2(n135), .IN3(n170), .IN4(
        data_mem_out[5]), .Q(n105) );
  AO22X2 U85 ( .IN1(data_bus_in[4]), .IN2(n135), .IN3(n170), .IN4(
        data_mem_out[4]), .Q(n104) );
  AO22X2 U86 ( .IN1(data_bus_in[3]), .IN2(n135), .IN3(n170), .IN4(
        data_mem_out[3]), .Q(n103) );
  AO22X2 U87 ( .IN1(data_bus_in[2]), .IN2(n135), .IN3(n170), .IN4(
        data_mem_out[2]), .Q(n102) );
  AO22X2 U88 ( .IN1(data_bus_in[1]), .IN2(n135), .IN3(n170), .IN4(
        data_mem_out[1]), .Q(n101) );
  AO22X2 U89 ( .IN1(data_bus_in[0]), .IN2(n135), .IN3(n170), .IN4(
        data_mem_out[0]), .Q(n100) );
  AODFFARX2 \read_data_reg[15]  ( .D(n131), .CLK(clk), .RSTB(n134), .Q(
        read_data[15]) );
  AODFFARX2 \read_data_reg[14]  ( .D(n130), .CLK(clk), .RSTB(n134), .Q(
        read_data[14]) );
  AODFFARX2 \read_data_reg[13]  ( .D(n129), .CLK(clk), .RSTB(n174), .Q(
        read_data[13]) );
  AODFFARX2 \read_data_reg[12]  ( .D(n128), .CLK(clk), .RSTB(n173), .Q(
        read_data[12]) );
  AODFFARX2 \read_data_reg[11]  ( .D(n127), .CLK(clk), .RSTB(n172), .Q(
        read_data[11]) );
  AODFFARX2 \read_data_reg[10]  ( .D(n126), .CLK(clk), .RSTB(n174), .Q(
        read_data[10]) );
  AODFFARX2 \read_data_reg[9]  ( .D(n125), .CLK(clk), .RSTB(n174), .Q(
        read_data[9]) );
  AODFFARX2 \read_data_reg[7]  ( .D(n123), .CLK(clk), .RSTB(n174), .Q(
        read_data[7]) );
  AODFFARX2 \read_data_reg[6]  ( .D(n122), .CLK(clk), .RSTB(n174), .Q(
        read_data[6]) );
  AODFFARX2 \read_data_reg[5]  ( .D(n121), .CLK(clk), .RSTB(n174), .Q(
        read_data[5]) );
  AODFFARX2 \read_data_reg[4]  ( .D(n120), .CLK(clk), .RSTB(n174), .Q(
        read_data[4]) );
  AODFFARX2 \read_data_reg[3]  ( .D(n119), .CLK(clk), .RSTB(n174), .Q(
        read_data[3]) );
  AODFFARX2 \read_data_reg[2]  ( .D(n118), .CLK(clk), .RSTB(n174), .Q(
        read_data[2]) );
  AODFFARX2 \read_data_reg[1]  ( .D(n117), .CLK(clk), .RSTB(n173), .Q(
        read_data[1]) );
  AODFFARX2 \read_data_reg[0]  ( .D(n116), .CLK(clk), .RSTB(n173), .Q(
        read_data[0]) );
  AND2X1 U90 ( .IN1(write_en), .IN2(n136), .Q(n138) );
  NBUFFX16 U91 ( .IN(read_data[15]), .Q(n154) );
  NBUFFX16 U92 ( .IN(read_data[14]), .Q(n155) );
  NBUFFX16 U93 ( .IN(read_data[13]), .Q(n156) );
  NBUFFX16 U94 ( .IN(read_data[12]), .Q(n157) );
  NBUFFX16 U95 ( .IN(read_data[11]), .Q(n158) );
  NBUFFX16 U96 ( .IN(read_data[10]), .Q(n159) );
  NBUFFX16 U97 ( .IN(read_data[9]), .Q(n160) );
  NBUFFX16 U98 ( .IN(read_data[8]), .Q(n161) );
  NBUFFX16 U99 ( .IN(read_data[7]), .Q(n162) );
  NBUFFX16 U100 ( .IN(read_data[6]), .Q(n163) );
  NBUFFX16 U101 ( .IN(read_data[5]), .Q(n164) );
  NBUFFX16 U102 ( .IN(read_data[4]), .Q(n165) );
  NBUFFX16 U103 ( .IN(read_data[3]), .Q(n166) );
  NBUFFX16 U104 ( .IN(read_data[2]), .Q(n167) );
  NBUFFX16 U105 ( .IN(read_data[1]), .Q(n168) );
  NBUFFX16 U106 ( .IN(read_data[0]), .Q(n169) );
  AOINVX2 U107 ( .IN(n170), .QN(n135) );
  AOINVX1 U108 ( .IN(n138), .QN(n170) );
  AOINVX1 U109 ( .IN(n138), .QN(n171) );
  AOBUFX1 U110 ( .IN(n134), .Q(n172) );
  AOBUFX1 U111 ( .IN(n134), .Q(n173) );
  AOBUFX1 U112 ( .IN(n134), .Q(n174) );
  AOINVX2 U113 ( .IN(read_en), .QN(n136) );
  AOINVX1 U114 ( .IN(reset), .QN(n134) );
endmodule

