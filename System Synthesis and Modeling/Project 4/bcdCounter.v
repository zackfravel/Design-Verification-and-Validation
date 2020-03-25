// Zack Fravel
// System Synthesis and Modeling
// Project 4

`timescale 1ns/1ns
module bcdCounter(
	input wire clk, 
	input wire rst, 
	output reg [3:0] out
   );


   initial   out = 5;		// Set inital output value to 5

   always @ (posedge (clk))
   begin

	if(rst)
	   out <= 0;
	else 
	   if (out < 9)
		out <= out + 1;
	   else 
		out <= 0;
   end



endmodule