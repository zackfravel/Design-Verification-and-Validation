
module programCounter_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   \carry[9] , \carry[8] , \carry[7] , \carry[6] , \carry[5] ,
         \carry[4] , \carry[3] , \carry[2] , \carry[15] , \carry[14] ,
         \carry[13] , \carry[12] , \carry[11] , \carry[10] ;

  XOR2X2 U2 ( .IN1(\carry[15] ), .IN2(A[15]), .Q(SUM[15]) );
  HADDX2 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(\carry[2] ), .SO(SUM[1]) );
  HADDX2 U1_1_2 ( .A0(A[2]), .B0(\carry[2] ), .C1(\carry[3] ), .SO(SUM[2]) );
  HADDX2 U1_1_3 ( .A0(A[3]), .B0(\carry[3] ), .C1(\carry[4] ), .SO(SUM[3]) );
  HADDX2 U1_1_4 ( .A0(A[4]), .B0(\carry[4] ), .C1(\carry[5] ), .SO(SUM[4]) );
  HADDX2 U1_1_5 ( .A0(A[5]), .B0(\carry[5] ), .C1(\carry[6] ), .SO(SUM[5]) );
  HADDX2 U1_1_6 ( .A0(A[6]), .B0(\carry[6] ), .C1(\carry[7] ), .SO(SUM[6]) );
  HADDX2 U1_1_7 ( .A0(A[7]), .B0(\carry[7] ), .C1(\carry[8] ), .SO(SUM[7]) );
  HADDX2 U1_1_8 ( .A0(A[8]), .B0(\carry[8] ), .C1(\carry[9] ), .SO(SUM[8]) );
  HADDX2 U1_1_9 ( .A0(A[9]), .B0(\carry[9] ), .C1(\carry[10] ), .SO(SUM[9]) );
  HADDX2 U1_1_10 ( .A0(A[10]), .B0(\carry[10] ), .C1(\carry[11] ), .SO(SUM[10]) );
  HADDX2 U1_1_11 ( .A0(A[11]), .B0(\carry[11] ), .C1(\carry[12] ), .SO(SUM[11]) );
  HADDX2 U1_1_12 ( .A0(A[12]), .B0(\carry[12] ), .C1(\carry[13] ), .SO(SUM[12]) );
  HADDX2 U1_1_13 ( .A0(A[13]), .B0(\carry[13] ), .C1(\carry[14] ), .SO(SUM[13]) );
  HADDX2 U1_1_14 ( .A0(A[14]), .B0(\carry[14] ), .C1(\carry[15] ), .SO(SUM[14]) );
  AOINVX1 U1 ( .IN(A[0]), .QN(SUM[0]) );
endmodule


module programCounter ( clk, reset, incriment, oTriEn, PC_out );
  output [15:0] PC_out;
  input clk, reset, incriment, oTriEn;
  wire   N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n118, n119;
  wire   [15:0] counter;
  tri   \PC_out[15] ;
  tri   \PC_out[14] ;
  tri   \PC_out[13] ;
  tri   \PC_out[12] ;
  tri   \PC_out[11] ;
  tri   \PC_out[10] ;
  tri   \PC_out[9] ;
  tri   \PC_out[8] ;
  tri   \PC_out[7] ;
  tri   \PC_out[6] ;
  tri   \PC_out[5] ;
  tri   \PC_out[4] ;
  tri   \PC_out[3] ;
  tri   \PC_out[2] ;
  tri   \PC_out[1] ;
  tri   \PC_out[0] ;

  DFFARX2 \counter_reg[6]  ( .D(n75), .CLK(clk), .RSTB(n118), .Q(counter[6])
         );
  DFFARX2 \counter_reg[5]  ( .D(n76), .CLK(clk), .RSTB(n118), .Q(counter[5])
         );
  DFFARX2 \counter_reg[4]  ( .D(n77), .CLK(clk), .RSTB(n118), .Q(counter[4])
         );
  DFFARX2 \counter_reg[3]  ( .D(n78), .CLK(clk), .RSTB(n118), .Q(counter[3])
         );
  DFFARX2 \counter_reg[2]  ( .D(n79), .CLK(clk), .RSTB(n118), .Q(counter[2])
         );
  DFFARX2 \counter_reg[1]  ( .D(n80), .CLK(clk), .RSTB(n118), .Q(counter[1])
         );
  DFFARX2 \counter_reg[7]  ( .D(n74), .CLK(clk), .RSTB(n118), .Q(counter[7])
         );
  DFFARX2 \counter_reg[8]  ( .D(n73), .CLK(clk), .RSTB(n118), .Q(counter[8])
         );
  DFFARX2 \counter_reg[9]  ( .D(n72), .CLK(clk), .RSTB(n118), .Q(counter[9])
         );
  DFFARX2 \counter_reg[10]  ( .D(n71), .CLK(clk), .RSTB(n118), .Q(counter[10])
         );
  DFFARX2 \counter_reg[11]  ( .D(n70), .CLK(clk), .RSTB(n118), .Q(counter[11])
         );
  DFFARX2 \counter_reg[12]  ( .D(n69), .CLK(clk), .RSTB(n118), .Q(counter[12])
         );
  DFFARX2 \counter_reg[13]  ( .D(n68), .CLK(clk), .RSTB(n118), .Q(counter[13])
         );
  DFFARX2 \counter_reg[14]  ( .D(n67), .CLK(clk), .RSTB(n118), .Q(counter[14])
         );
  DFFARX2 \counter_reg[15]  ( .D(n66), .CLK(clk), .RSTB(n118), .Q(counter[15])
         );
  TNBUFFHX8 \PC_out_tri[0]  ( .IN(n116), .ENB(oTriEn), .Q(PC_out[0]) );
  TNBUFFHX8 \PC_out_tri[1]  ( .IN(n101), .ENB(oTriEn), .Q(PC_out[1]) );
  TNBUFFHX8 \PC_out_tri[2]  ( .IN(n114), .ENB(oTriEn), .Q(PC_out[2]) );
  TNBUFFHX8 \PC_out_tri[3]  ( .IN(n115), .ENB(oTriEn), .Q(PC_out[3]) );
  TNBUFFHX8 \PC_out_tri[4]  ( .IN(n105), .ENB(oTriEn), .Q(PC_out[4]) );
  TNBUFFHX8 \PC_out_tri[5]  ( .IN(n104), .ENB(oTriEn), .Q(PC_out[5]) );
  TNBUFFHX8 \PC_out_tri[6]  ( .IN(n103), .ENB(oTriEn), .Q(PC_out[6]) );
  TNBUFFHX8 \PC_out_tri[7]  ( .IN(n106), .ENB(oTriEn), .Q(PC_out[7]) );
  TNBUFFHX8 \PC_out_tri[8]  ( .IN(n107), .ENB(oTriEn), .Q(PC_out[8]) );
  TNBUFFHX8 \PC_out_tri[9]  ( .IN(n108), .ENB(oTriEn), .Q(PC_out[9]) );
  TNBUFFHX8 \PC_out_tri[10]  ( .IN(n109), .ENB(oTriEn), .Q(PC_out[10]) );
  TNBUFFHX8 \PC_out_tri[11]  ( .IN(n110), .ENB(oTriEn), .Q(PC_out[11]) );
  TNBUFFHX8 \PC_out_tri[12]  ( .IN(n111), .ENB(oTriEn), .Q(PC_out[12]) );
  TNBUFFHX8 \PC_out_tri[13]  ( .IN(n112), .ENB(oTriEn), .Q(PC_out[13]) );
  TNBUFFHX8 \PC_out_tri[14]  ( .IN(n113), .ENB(oTriEn), .Q(PC_out[14]) );
  TNBUFFHX8 \PC_out_tri[15]  ( .IN(n102), .ENB(oTriEn), .Q(PC_out[15]) );
  AO22X2 U39 ( .IN1(n119), .IN2(counter[0]), .IN3(incriment), .IN4(N18), .Q(
        n81) );
  AO22X2 U40 ( .IN1(n119), .IN2(n101), .IN3(N19), .IN4(incriment), .Q(n80) );
  AO22X2 U41 ( .IN1(n119), .IN2(n114), .IN3(N20), .IN4(incriment), .Q(n79) );
  AO22X2 U42 ( .IN1(n119), .IN2(n115), .IN3(N21), .IN4(incriment), .Q(n78) );
  AO22X2 U43 ( .IN1(n119), .IN2(n105), .IN3(N22), .IN4(incriment), .Q(n77) );
  AO22X2 U44 ( .IN1(n119), .IN2(n104), .IN3(N23), .IN4(incriment), .Q(n76) );
  AO22X2 U45 ( .IN1(n119), .IN2(n103), .IN3(N24), .IN4(incriment), .Q(n75) );
  AO22X2 U46 ( .IN1(n119), .IN2(n106), .IN3(N25), .IN4(incriment), .Q(n74) );
  AO22X2 U47 ( .IN1(n119), .IN2(n107), .IN3(N26), .IN4(incriment), .Q(n73) );
  AO22X2 U48 ( .IN1(n119), .IN2(n108), .IN3(N27), .IN4(incriment), .Q(n72) );
  AO22X2 U49 ( .IN1(n119), .IN2(n109), .IN3(N28), .IN4(incriment), .Q(n71) );
  AO22X2 U50 ( .IN1(n119), .IN2(n110), .IN3(N29), .IN4(incriment), .Q(n70) );
  AO22X2 U51 ( .IN1(n119), .IN2(n111), .IN3(N30), .IN4(incriment), .Q(n69) );
  AO22X2 U52 ( .IN1(n119), .IN2(n112), .IN3(N31), .IN4(incriment), .Q(n68) );
  AO22X2 U53 ( .IN1(n119), .IN2(n113), .IN3(N32), .IN4(incriment), .Q(n67) );
  AO22X2 U54 ( .IN1(n119), .IN2(n102), .IN3(N33), .IN4(incriment), .Q(n66) );
  programCounter_DW01_inc_0 add_21 ( .A({n102, n113, n112, n111, n110, n109, 
        n108, n107, n106, n103, n104, n105, n115, n114, n101, counter[0]}), 
        .SUM({N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, 
        N20, N19, N18}) );
  AODFFARX2 \counter_reg[0]  ( .D(n81), .CLK(clk), .RSTB(n118), .Q(counter[0])
         );
  NBUFFX16 U55 ( .IN(counter[1]), .Q(n101) );
  NBUFFX16 U56 ( .IN(counter[15]), .Q(n102) );
  NBUFFX16 U57 ( .IN(counter[6]), .Q(n103) );
  NBUFFX16 U58 ( .IN(counter[5]), .Q(n104) );
  NBUFFX16 U59 ( .IN(counter[4]), .Q(n105) );
  NBUFFX16 U60 ( .IN(counter[7]), .Q(n106) );
  NBUFFX16 U61 ( .IN(counter[8]), .Q(n107) );
  NBUFFX16 U62 ( .IN(counter[9]), .Q(n108) );
  NBUFFX16 U63 ( .IN(counter[10]), .Q(n109) );
  NBUFFX16 U64 ( .IN(counter[11]), .Q(n110) );
  NBUFFX16 U65 ( .IN(counter[12]), .Q(n111) );
  NBUFFX16 U66 ( .IN(counter[13]), .Q(n112) );
  NBUFFX16 U67 ( .IN(counter[14]), .Q(n113) );
  NBUFFX16 U68 ( .IN(counter[2]), .Q(n114) );
  NBUFFX16 U69 ( .IN(counter[3]), .Q(n115) );
  NBUFFX16 U70 ( .IN(counter[0]), .Q(n116) );
  AOINVX2 U71 ( .IN(incriment), .QN(n119) );
  AOINVX2 U72 ( .IN(reset), .QN(n118) );
endmodule

