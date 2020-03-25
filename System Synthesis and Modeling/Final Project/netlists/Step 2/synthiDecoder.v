
module iDecoder ( instruction_in, opcode, ALUop, MEMop, IMMop, MOVop, A, B );
  input [15:0] instruction_in;
  output [3:0] opcode;
  output [5:0] A;
  output [5:0] B;
  output ALUop, MEMop, IMMop, MOVop;
  wire   n10, n11, n12;
  assign opcode[3] = instruction_in[15];
  assign opcode[2] = instruction_in[14];
  assign opcode[1] = instruction_in[13];
  assign opcode[0] = instruction_in[12];
  assign A[5] = instruction_in[11];
  assign A[4] = instruction_in[10];
  assign A[3] = instruction_in[9];
  assign A[2] = instruction_in[8];
  assign A[1] = instruction_in[7];
  assign A[0] = instruction_in[6];
  assign B[5] = instruction_in[5];
  assign B[4] = instruction_in[4];
  assign B[3] = instruction_in[3];
  assign B[2] = instruction_in[2];
  assign B[1] = instruction_in[1];
  assign B[0] = instruction_in[0];

  AND3X2 U15 ( .IN1(opcode[3]), .IN2(n11), .IN3(opcode[2]), .Q(MEMop) );
  AND3X2 U16 ( .IN1(n11), .IN2(n10), .IN3(opcode[3]), .Q(IMMop) );
  INVX2 U17 ( .IN(opcode[1]), .QN(n11) );
  NOR2X2 U18 ( .IN1(opcode[3]), .IN2(n12), .QN(ALUop) );
  NOR3X4 U19 ( .IN1(opcode[0]), .IN2(opcode[2]), .IN3(opcode[1]), .QN(n12) );
  AND3X2 U20 ( .IN1(opcode[1]), .IN2(n10), .IN3(opcode[3]), .Q(MOVop) );
  INVX2 U21 ( .IN(opcode[2]), .QN(n10) );
endmodule

