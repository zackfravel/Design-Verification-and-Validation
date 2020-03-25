// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 2)

module MAR(clk, reset, data_in, enI, data_out);

// Input/Output/Register Declaration
input clk; input reset; input[15:0] data_in; 
input enI; output[15:0] data_out;
reg[15:0] data;

// Architecture

always@(posedge clk or posedge reset)
begin
	if (reset == 1)
	   begin
		data <= 16'h0000;
	   end
	else
	   if (enI == 1)
		data <= data_in;
end

	assign data_out = data;

endmodule