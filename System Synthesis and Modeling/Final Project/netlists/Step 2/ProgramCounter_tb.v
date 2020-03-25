// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 2)

`timescale 1ns/1ns
module programCounter_tb;

// Inputs
	reg clk; reg reset; reg incriment; reg oTriEn; 
// Ouputs
	wire[15:0] data_out; 
// Declare module
	programCounter test(clk, reset, incriment, oTriEn, data_out);
// Testbench

	always #10 clk = ~clk;

	initial
	begin
		clk = 0; reset = 0; incriment = 0; oTriEn = 0;
		#20; reset = 1;
		#20; reset = 0;
		#20; incriment = 1;
		#20; incriment = 0;
		#20; oTriEn = 1;
		#20; oTriEn = 0;
		#20; incriment = 1;
		#100; incriment = 0;
		#20; oTriEn = 1;
		#20; oTriEn = 0;		

	end

endmodule
