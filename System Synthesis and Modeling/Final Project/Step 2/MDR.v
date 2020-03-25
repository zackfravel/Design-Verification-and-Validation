// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 2)

module MDR(clk, reset, data_bus_in, data_bus_out, data_mem_in, data_mem_out, read_en, write_en, out_en);

// Input/Output/Register Declaration
input clk; input reset; input[15:0] data_mem_in; input[15:0] data_bus_in; input read_en; input write_en; input out_en;
output[15:0] data_mem_out; output tri[15:0] data_bus_out; 

reg[15:0] read_data;
reg[15:0] write_data;

// Architecture
always@(posedge clk or posedge reset)
begin
	if (reset == 1)
	   begin
		read_data  <= 16'h0000;
		write_data <= 16'h0000;
	   end
	else
		if(read_en == 1)
			read_data <= data_mem_in;
		else if(write_en == 1)
			write_data <= data_bus_in;
end

	assign data_mem_out = write_data;
	assign data_bus_out = (out_en) ? read_data:16'hzzzz;

endmodule