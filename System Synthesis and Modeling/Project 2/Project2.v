// Zack Fravel
// System Synthesis and Modeling
// Project2.v

`timescale 1ns / 1ns
module Project2 (
// Port Declarations
		input[7:0] i0, i1, i2, i3, i4, i5, i6,
		output reg[7:0] o, 
		input sel0, sel1, sel2
	);

// 7:1 Mux
always @(i0 or i1 or i2 or i3 or i4 or i5 or i6 or 
	 sel0 or sel1 or sel2) 
begin
	case ({sel2, sel1, sel0})
		3'b000: o <= i0;
		3'b001: o <= i1;
		3'b010: o <= i2;
		3'b011: o <= i3;
		3'b100: o <= i4;
		3'b101: o <= i5;
		3'b110: o <= i6;
		3'b111: o <= i6;
	endcase
end

endmodule