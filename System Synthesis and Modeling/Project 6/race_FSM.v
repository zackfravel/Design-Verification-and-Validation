 // Zack Fravel
// System Synthesis and Modeling
// Project 6

`timescale 1ns/1ns
module race_FSM(
	input wire clk, 
	input wire reset, 
	input wire start,
	output reg red,
	output reg yellow,
	output reg green
   );


reg[3:0] current_state, next_state;			// State Signals

parameter init = 4'b0000, red_one = 4'b0001, red_two = 4'b0010, red_three = 4'b0011, 
	yellow_one = 4'b0100, yellow_two = 4'b0101, yellow_three = 4'b0110, 		// Set Parameters for State Signals
	green_one = 4'b0111, green_two = 4'b1000, green_three = 4'b1001;


always @(posedge clk or posedge reset)			// Current State Transition
begin
   if(reset)
	current_state <= init;
   else
	current_state <= next_state;
end



always @(current_state or start)			// Next State Logic
begin

   case(current_state)

   init: begin
	 if(start)
	   next_state <= red_one;
	 else
	   next_state <= init;
         end

   red_one:   begin next_state <= red_two; end
   red_two:   begin next_state <= red_three; end
   red_three: begin next_state <= yellow_one; end

   yellow_one:   begin next_state <= yellow_two; end
   yellow_two:   begin next_state <= yellow_three; end
   yellow_three: begin next_state <= green_one; end

   green_one:   begin next_state <= green_two; end
   green_two:   begin next_state <= green_three; end
   green_three: begin next_state <= init; end

   endcase
end

always @(current_state)					// Output Logic
begin

   case (current_state)

   init: begin red <= 1'b1; yellow <= 1'b0; green <= 1'b0; end

   red_one:   begin red <= 1'b1; yellow <= 1'b0; green <= 1'b0; end
   red_two:   begin red <= 1'b1; yellow <= 1'b0; green <= 1'b0; end
   red_three: begin red <= 1'b1; yellow <= 1'b0; green <= 1'b0; end

   yellow_one:    begin red <= 1'b0; yellow <= 1'b1; green <= 1'b0; end
   yellow_two:   begin red <= 1'b0; yellow <= 1'b1; green <= 1'b0; end
   yellow_three: begin red <= 1'b0; yellow <= 1'b1; green <= 1'b0; end

   green_one:    begin red <= 1'b0; yellow <= 1'b0; green <= 1'b1; end
   green_two:   begin red <= 1'b0; yellow <= 1'b0; green <= 1'b1; end
   green_three: begin red <= 1'b0; yellow <= 1'b0; green <= 1'b1; end

   endcase

end

endmodule