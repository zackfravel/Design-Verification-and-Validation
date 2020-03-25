// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 4)

`timescale 1ns/1ns
module FSM_tb5;

// Inputs
reg CLK; reg RESET; reg START; reg MFC; reg[5:0] p1; reg[5:0] p2;
// Outputs
wire PCinc; wire MARin; wire MDRwrite; 
wire Ri1Out; wire Ri2Out; wire Ri3Out; wire Ri4Out; 
wire memEn; wire memOp; wire MDRout; 
wire Rj1Out; wire Rj2Out; wire Rj3Out; wire Rj4Out; 
wire finish;

// Instantiate Module
	Store_FSM test (CLK, RESET, START, MFC, PCinc, Ri1Out, Ri2Out, Ri3Out, Ri4Out, MARin, MDRwrite, memEn,
		 memOp, MDRout, Rj1Out, Rj2Out, Rj3Out, Rj4Out, p1, p2, finish);

initial
   begin
	CLK = 0;
	RESET = 0;
	START = 0;
	MFC = 0;
	p1 = 6'b000010;
	p2 = 6'b000100;
	#200;  
	RESET = 1;
	#200;  
	RESET = 0;
	#200; 
	START = 1;
	#200;
	START = 0;
	#400;
	MFC = 1;
	#200;
	MFC = 0;
   end

always #100 CLK = ~CLK;

endmodule
