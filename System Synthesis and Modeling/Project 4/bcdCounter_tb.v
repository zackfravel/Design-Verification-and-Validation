// Zack Fravel
// System Synthesis and Modeling
// Project 4

`timescale 1ns/1ns
module bcdCounter_tb;

// Inputs
	reg CLK_in;
	reg RESET;
// Output
	wire[3:0] BCD_out;
// Instantiate Module
	bcdCounter test (CLK_in, RESET, BCD_out);
// Testbench
initial

   begin
	#20;  // Wait 20ns
	CLK_in = 0;
	RESET = 0;
	#20;  // Wait 20ns
   end

initial

   begin
	#180;
	RESET = 1;
	#10; 
	RESET = 0;
   end

always #10 CLK_in = ~CLK_in;

endmodule
