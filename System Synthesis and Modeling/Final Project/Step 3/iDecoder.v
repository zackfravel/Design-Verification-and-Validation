// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 3)

module iDecoder(instruction_in, opcode, ALUop, MEMop, IMMop, MOVop, A, B);

// Input/Output/Signal Declaration
	input[15:0] instruction_in; output[3:0] opcode; output reg ALUop;
	output reg MEMop; output reg IMMop; output reg MOVop; output[5:0] A; output[5:0] B;

// Architecture
always@(instruction_in)
begin

	case(instruction_in[15:12])

		4'b0000: begin ALUop = 0; MEMop = 0; IMMop = 0; MOVop = 0; end // Blank
		4'b0001: begin ALUop = 1; MEMop = 0; IMMop = 0; MOVop = 0; end // Add   (0001)
		4'b0010: begin ALUop = 1; MEMop = 0; IMMop = 0; MOVop = 0; end // Sub   (0010)
		4'b0011: begin ALUop = 1; MEMop = 0; IMMop = 0; MOVop = 0; end // Not   (0011)
		4'b0100: begin ALUop = 1; MEMop = 0; IMMop = 0; MOVop = 0; end // And   (0100)
		4'b0101: begin ALUop = 1; MEMop = 0; IMMop = 0; MOVop = 0; end // Or    (0101)
		4'b0110: begin ALUop = 1; MEMop = 0; IMMop = 0; MOVop = 0; end // Xor   (0110)
		4'b0111: begin ALUop = 1; MEMop = 0; IMMop = 0; MOVop = 0; end // Xnor  (0111)
		4'b1000: begin ALUop = 0; MEMop = 0; IMMop = 1; MOVop = 0; end // Addi  (1000)
		4'b1001: begin ALUop = 0; MEMop = 0; IMMop = 1; MOVop = 0; end // Subi  (1001)
		4'b1010: begin ALUop = 0; MEMop = 0; IMMop = 0; MOVop = 1; end // Mov   (1010)
		4'b1011: begin ALUop = 0; MEMop = 0; IMMop = 0; MOVop = 1; end // Movi  (1011)
		4'b1100: begin ALUop = 0; MEMop = 1; IMMop = 0; MOVop = 0; end // Load  (1100)
		4'b1101: begin ALUop = 0; MEMop = 1; IMMop = 0; MOVop = 0; end // Store (1101)

		4'b1110: begin ALUop = 0; MEMop = 0; IMMop = 0; MOVop = 0; end
		4'b1111: begin ALUop = 0; MEMop = 0; IMMop = 0; MOVop = 0; end

	endcase

end
	assign opcode = instruction_in[15:12];
	assign A = instruction_in[11:6];
	assign B = instruction_in[5:0];

endmodule
