// Zack Fravel
// System Synthesis and Modeling
// Project 3

`timescale 1ns/1ns
module bitCounter_tb;

// Inputs
	reg[7:0] testIn;
// Output
	wire[3:0] testOut;
// Instantiate Module
	bitCounter test (testIn, testOut);

// Testbench
initial

   begin

	#20;  // Wait 20ns and assign input to all 0's
	testIn = 8'b00000000;

	while(testIn < 256)
	begin
	   $display("input: ", testIn, "   output:", testOut);
	   testIn = testIn + 1;
	   #5;
	end

   end

endmodule