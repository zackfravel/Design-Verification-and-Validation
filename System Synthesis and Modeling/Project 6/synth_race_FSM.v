
module race_FSM ( clk, reset, start, red, yellow, green );
  input clk, reset, start;
  output red, yellow, green;
  wire   N46, N47, N48, N50, N90, N93, n15, n29, n30, n31, n32, n33, n34, n35,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57;
  wire   [3:0] next_state;

  LATCHX2 \next_state_reg[0]  ( .CLK(n15), .D(N46), .Q(next_state[0]) );
  LATCHX2 \next_state_reg[1]  ( .CLK(n15), .D(N47), .Q(next_state[1]) );
  DFFARX2 \current_state_reg[1]  ( .D(next_state[1]), .CLK(clk), .RSTB(n42), 
        .Q(n30), .QN(n35) );
  LATCHX2 \next_state_reg[2]  ( .CLK(n15), .D(N48), .Q(next_state[2]) );
  DFFARX2 \current_state_reg[2]  ( .D(next_state[2]), .CLK(clk), .RSTB(n42), 
        .Q(n31), .QN(n34) );
  LATCHX2 \next_state_reg[3]  ( .CLK(n15), .D(N50), .Q(next_state[3]) );
  DFFARX2 \current_state_reg[3]  ( .D(next_state[3]), .CLK(clk), .RSTB(n42), 
        .Q(n29), .QN(n33) );
  LATCHX2 yellow_reg ( .CLK(n15), .D(n44), .Q(yellow) );
  LATCHX2 green_reg ( .CLK(n15), .D(N93), .Q(green) );
  LATCHX2 red_reg ( .CLK(n15), .D(N90), .Q(red) );
  AODFFARX2 \current_state_reg[0]  ( .D(next_state[0]), .CLK(clk), .RSTB(n42), 
        .QN(n32) );
  NAND2X0 U48 ( .IN1(n48), .IN2(n53), .QN(n15) );
  NOR2X1 U49 ( .IN1(n48), .IN2(n47), .QN(N90) );
  NAND2X0 U50 ( .IN1(n51), .IN2(n55), .QN(N48) );
  NAND2X0 U51 ( .IN1(N90), .IN2(n54), .QN(n55) );
  NAND2X0 U52 ( .IN1(n49), .IN2(n50), .QN(N93) );
  NAND2X0 U53 ( .IN1(n46), .IN2(n48), .QN(n50) );
  AOINVX1 U54 ( .IN(n53), .QN(n46) );
  AOINVX1 U55 ( .IN(n54), .QN(n45) );
  AOINVX1 U56 ( .IN(n51), .QN(n44) );
  NAND2X0 U57 ( .IN1(n35), .IN2(n34), .QN(n53) );
  NOR2X1 U58 ( .IN1(n35), .IN2(n32), .QN(n54) );
  NAND3X0 U59 ( .IN1(n45), .IN2(n47), .IN3(n33), .QN(n51) );
  NAND2X0 U60 ( .IN1(n49), .IN2(n52), .QN(N50) );
  NAND3X0 U61 ( .IN1(n46), .IN2(n48), .IN3(n32), .QN(n52) );
  AND3X1 U62 ( .IN1(n32), .IN2(n15), .IN3(n57), .Q(N46) );
  NAND3X0 U63 ( .IN1(N90), .IN2(n43), .IN3(n35), .QN(n57) );
  AOINVX1 U64 ( .IN(start), .QN(n43) );
  NAND3X0 U65 ( .IN1(n54), .IN2(n47), .IN3(n33), .QN(n49) );
  AND3X1 U66 ( .IN1(n56), .IN2(n45), .IN3(n33), .Q(N47) );
  NAND2X0 U67 ( .IN1(n32), .IN2(n35), .QN(n56) );
  AOINVX1 U68 ( .IN(n33), .QN(n48) );
  AOINVX1 U69 ( .IN(n34), .QN(n47) );
  AOINVX1 U70 ( .IN(reset), .QN(n42) );
endmodule

