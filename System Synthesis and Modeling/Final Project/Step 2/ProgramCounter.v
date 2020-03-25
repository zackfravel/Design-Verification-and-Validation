// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 2)

module programCounter(clk, reset, incriment, oTriEn, PC_out);

// Input/Output/Register Declaration
input clk; input reset; input incriment; 
input oTriEn;  output tri[15:0] PC_out;
reg[15:0] counter;

// Architecture

always@(posedge clk or posedge reset)
begin

	if(reset == 1)
		counter <= 16'h0000;
	else
	   if(incriment == 1)
		counter <= counter + 1;

end

	assign PC_out = (oTriEn) ? counter:16'hzzzz;

endmodule