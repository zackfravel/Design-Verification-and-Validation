// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 4)

`timescale 1ns/1ns
module FSM_tb4;

// Inputs
 reg CLK; reg RESET; reg START; reg[5:0] p1; reg[5:0] p2;
// Outputs
 wire PCinc; wire Ri1In; wire Ri2In;  wire Ri3In;  wire Ri4In; 
 wire finish;  wire[15:0] data_out;

// Instantiate Module
	moveImm_FSM test (CLK, RESET, START, PCinc, data_out, Ri1In, Ri2In, Ri3In, Ri4In, p1, p2, finish);

initial
   begin
	CLK = 0;
	RESET = 0;
	START = 0;
	p1 = 6'b000001;
	p2 = 6'b001101;
	#200;  
	RESET = 1;
	#200;  
	RESET = 0;
	#400;
	START = 1;
	#200;
	START = 0;
   end

always #100 CLK = ~CLK;

endmodule
