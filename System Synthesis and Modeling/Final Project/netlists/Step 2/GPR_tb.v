// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 2)

`timescale 1ns/1ns
module GPR_tb;

// Inputs
	reg clk; reg reset; reg[15:0] from_bus; reg inEn; reg outEn;
// Ouputs
	wire[15:0] to_bus; 
// Declare module
	GPR test(clk, reset, from_bus, inEn, outEn, to_bus);
// Testbench

	always #10 clk = ~clk;

	initial
	begin
		clk = 0; reset = 0; from_bus = 16'h0000; inEn = 0; outEn = 0;

		#20; reset = 1; #20; reset = 0;

		#40; from_bus = 16'h1111; #20; inEn = 1; #20 inEn = 0;

		#20; outEn = 1; #20; outEn = 0;

	end

endmodule