// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 4)

`timescale 1ns/1ns
module FSM_tb2;

// Inputs
 reg CLK; reg RESET; reg START; reg[3:0] OPCODE; reg[5:0] p1; reg[5:0] p2;
// Outputs
 wire PCinc; 
 wire ALUreg1;  wire ALUreg2;  wire ALUregO;
 wire Ri1In;  wire Ri2In;  wire Ri3In;  wire Ri4In;  
 wire Ri1Out; wire Ri2Out; wire Ri3Out; wire Ri4Out;
 wire Rj1Out; wire Rj2Out; wire Rj3Out; wire Rj4Out;   
 wire finish; wire[2:0] ALUop; wire ALUtri;

// Instantiate Module
	Register_FSM test (CLK, RESET, START, PCinc, Ri1Out, Ri2Out, Ri3Out, 
       	 	Ri4Out, ALUreg1, Rj1Out, Rj2Out, Rj3Out, Rj4Out, ALUreg2, 
		ALUregO, Ri1In, Ri2In, Ri3In, Ri4In, ALUtri, finish, p1, p2, OPCODE, ALUop);

initial
   begin
	CLK = 0;
	RESET = 0;
	START = 0;
	OPCODE = 4'b0000;
	p1 = 6'b000010;
	p2 = 6'b000100;
	#200;  
	RESET = 1;
	#200;  
	RESET = 0;
	OPCODE = 4'b0001;
	#400;
	START = 1;
	#200;
	START = 0;
	OPCODE = 4'b0101;
   end

always #100 CLK = ~CLK;

endmodule
