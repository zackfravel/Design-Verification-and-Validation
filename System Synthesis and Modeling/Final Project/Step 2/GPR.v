// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 2)

module GPR(clk, reset, bus_in, inEn, outEn, bus_out);

// Input/Output/Register Declaration
input clk; input reset; input[15:0] bus_in; input inEn; input outEn;
output tri[15:0] bus_out;

reg[15:0] data;

// Architecture
always@(posedge clk or posedge reset)
begin
	if (reset == 1)
		data  <= 16'h0000;
	else
		if(inEn == 1)
			data <= bus_in;
end

	assign bus_out = (outEn) ? data:16'hzzzz;

endmodule