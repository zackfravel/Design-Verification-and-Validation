// Zack Fravel
// System Synthesis and Modeling
// Project 6

`timescale 1ns/1ns
module race_FSM_tb;

// Inputs
	reg CLK; reg RESET; reg START;
// Outputs
	wire RED; wire YELLOW; wire GREEN;
// Instantiate Module
	race_FSM syn (CLK, RESET, START, RED, YELLOW, GREEN);

initial
   begin
	CLK = 0;
	RESET = 0;
	START = 0;
	#50;  
	RESET = 1;
	#10;  
	RESET = 0;
	#20; 
	START = 1;
	#10;
	START = 0;
   end

always #10 CLK = ~CLK;

endmodule