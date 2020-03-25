module Adder64 (A, B, cin, sum, cout);
input [63:0] A, B;
input cin;
output [63:0] sum;
output cout;
assign {cout, sum} = A + B + cin;
endmodule
