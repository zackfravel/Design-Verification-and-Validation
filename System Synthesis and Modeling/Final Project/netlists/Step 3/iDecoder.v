// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 3)

module iDecoder(clk, reset, enable, instruction_in, opcode, ALUop, IMMop, MOVop, MOViop, LOADop, STOREop, A, B);

// Input/Output/Signal Declaration
	input clk; input reset; input enable; input[15:0] instruction_in; output[3:0] opcode; output reg ALUop;
	output reg LOADop; output reg STOREop; output reg IMMop; output reg MOVop; output reg MOViop; 
	output[5:0] A; output[5:0] B;

reg active;

// Architecture

always@(posedge clk)
begin
	if(enable)
	  begin
	  case(instruction_in[15:12])
		default: begin 
			       ALUop = 0; LOADop = 0; IMMop = 0; 
				  MOVop = 0; MOViop = 0; STOREop = 0;
				  active = 0;
			 end // Blank
		4'b0001: begin 
			       ALUop = 1; LOADop = 0; IMMop = 0; 
				  MOVop = 0; MOViop = 0; STOREop = 0; 
  active = 1;
			 end // Add   (0001)
		4'b0010: begin 
			       ALUop = 1; LOADop = 0; IMMop = 0; 
				  MOVop = 0; MOViop = 0; STOREop = 0; 
  active = 1;
			 end // Sub   (0010)
		4'b0011: begin 
			       ALUop = 1; LOADop = 0; IMMop = 0; 
				  MOVop = 0; MOViop = 0; STOREop = 0; 
  active = 1;
			 end // Not   (0011)
		4'b0100: begin 
			       ALUop = 1; LOADop = 0; IMMop = 0; 
				  MOVop = 0; MOViop = 0; STOREop = 0; 
  active = 1;
			 end // And   (0100)
		4'b0101: begin 
			       ALUop = 1; LOADop = 0; IMMop = 0; 
				  MOVop = 0; MOViop = 0; STOREop = 0; 
  active = 1;
			 end // Or    (0101)
		4'b0110: begin 
			       ALUop = 1; LOADop = 0; IMMop = 0; 
				  MOVop = 0; MOViop = 0; STOREop = 0; 
  active = 1;
			 end // Xor   (0110)
		4'b0111: begin 
			       ALUop = 1; LOADop = 0; IMMop = 0; 
				  MOVop = 0; MOViop = 0; STOREop = 0; 
  active = 1;
			 end // Xnor  (0111)
		4'b1000: begin 
			       ALUop = 0; LOADop = 0; IMMop = 1; 
				  MOVop = 0; MOViop = 0; STOREop = 0;
  active = 1; 
			 end // Addi  (1000)
		4'b1001: begin 
			       ALUop = 0; LOADop = 0; IMMop = 1; 
				  MOVop = 0; MOViop = 0; STOREop = 0; 
  active = 1;
			 end // Subi  (1001)
		4'b1010: begin 
			       ALUop = 0; LOADop = 0; IMMop = 0; 
				  MOVop = 1; MOViop = 0; STOREop = 0; 
  active = 1;
			 end // Mov   (1010)
		4'b1011: begin 
			       ALUop = 0; LOADop = 0; IMMop = 0;
				  MOVop = 0; MOViop = 1; STOREop = 0; 
  active = 1;
			 end // Movi  (1011)
		4'b1100: begin 
			       ALUop = 0; LOADop = 1; IMMop = 0; 
				  MOVop = 0; MOViop = 0; STOREop = 0;
  active = 1; 
			 end // Load  (1100)
		4'b1101: begin 
			       ALUop = 0; LOADop = 0; IMMop = 0; 
				  MOVop = 0;MOViop = 0; STOREop = 1;
  active = 1; 
			 end // Store (1101)
	  endcase
	  end
	else 
	  begin
		 ALUop = 0; LOADop = 0; IMMop = 0; 
		 MOVop = 0; MOViop = 0; STOREop = 0;
		 active = 0;
	  end
end
	assign opcode = instruction_in[15:12];
	assign A = instruction_in[11:6];
	assign B = instruction_in[5:0];

endmodule