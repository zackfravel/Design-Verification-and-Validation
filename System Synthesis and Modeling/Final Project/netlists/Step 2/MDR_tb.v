// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 2)

`timescale 1ns/1ns
module MDR_tb;

// Inputs
	reg clk; reg reset; reg[15:0] dataBUS_in; reg[15:0] dataMEM_in; reg rEN; reg wEN; reg oEN;
// Ouputs
	wire[15:0] dataBUS_out; wire[15:0] dataMEM_out;
// Declare module
	MDR test(clk, reset, dataBUS_in, dataBUS_out, dataMEM_in, dataMEM_out, rEN, wEN, oEN);
// Testbench

	always #10 clk = ~clk;

	initial
	begin
		clk = 0; reset = 0; dataBUS_in = 16'h0000;
		dataMEM_in = 16'h0000; rEN = 0; wEN = 0; oEN = 0;

		#20; reset = 1; #20; reset = 0;

		#20; dataBUS_in = 16'h1101; dataMEM_in = 16'h0010;

		#40; rEN = 1; #20; rEN = 0;
		
		#20; oEN = 1; #20; oEN = 0;

		#40; wEN = 1; #20; wEN = 0;

	end

endmodule