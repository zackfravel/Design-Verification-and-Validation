// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 4)

`timescale 1ns/1ns
module FSM_tb;

// Inputs
 reg CLK; reg RESET; reg START; reg MFC;
// Outputs
 wire PCoutEn;  wire MARinEn;  wire memOp;  wire memEn;
 wire MDRreadEn;  wire MDRoutEn;  wire IRinEn;

// Instantiate Module
	fetch_FSM test (CLK, RESET, START, PCoutEn, MARinEn, memOp, memEn, MDRreadEn, MDRoutEn, IRinEn, MFC);

initial
   begin
	CLK = 0;
	RESET = 0;
	START = 0;
	MFC = 0;
	#200;  
	RESET = 1;
	#180;  
	RESET = 0;
	#1200; 
	MFC = 1;
	#200;
	MFC = 0;
	#1000;
	START = 1;
	#200;
	START = 0;
	#1200; 
	MFC = 1;
	#200;
	MFC = 0;
   end

always #100 CLK = ~CLK;

endmodule
