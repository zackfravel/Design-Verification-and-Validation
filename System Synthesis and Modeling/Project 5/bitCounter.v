// Zack Fravel
// System Synthesis and Modeling
// Project 3

module bitCounter(
	input wire [7:0] in, 
	output wire [3:0] out
);

assign out = in[7] + in[6] + in[5] + in[4] + in[3] + in[2] + in[1] + in[0]; // Adds up all the 1's in the input

endmodule