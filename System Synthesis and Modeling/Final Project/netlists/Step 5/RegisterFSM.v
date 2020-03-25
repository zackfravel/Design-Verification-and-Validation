// Zack Fravel
// System Synthesis and Modeling
// Final Project (Step 4)

module Register_FSM(clk, reset, start, PCinc, Ri1Out, Ri2Out, Ri3Out, Ri4Out, 
		ALUreg1, Rj1Out, Rj2Out, Rj3Out, Rj4Out, ALUreg2, ALUregO, 
		Ri1In, Ri2In, Ri3In, Ri4In, ALUtri, finish, p1, p2, opcode, ALUop);

// Port Declartaion

input clk; input reset; input start; input[3:0] opcode; input[5:0] p1; input[5:0] p2;

output reg PCinc; output reg Ri1Out; output reg Ri2Out; output reg Ri3Out; output reg Ri4Out; output reg ALUreg1; 
output reg Rj1Out; output reg Rj2Out; output reg Rj3Out; output reg Rj4Out; 
output reg ALUreg2; output reg ALUregO; output reg Ri1In; output reg Ri2In; output reg Ri3In; output reg Ri4In; 
output reg ALUtri; output reg finish;
output reg[2:0] ALUop;

reg[2:0] current_state, next_state;			

// Set Parameters for State Signals

parameter init = 4'b0000, one = 4'b0001, two = 4'b0010, three = 4'b0011, 
	four = 4'b0100, five = 4'b0101, six = 4'b0110, 	
	seven = 4'b0111, eight = 4'b1000, nine = 4'b1001, ten = 4'b1010;


// Architecture

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
	   		next_state <= one;
		else
			next_state <= init;
         end

   one:    begin next_state <= two; end
   two:    begin next_state <= three; end
   three:  begin next_state <= four; end
   four:   begin next_state <= five; end
   five:   begin next_state <= six; end
   six:    begin next_state <= init; end
   default:begin next_state <= init; end

   endcase
end


always @(current_state)					// Output Logic
begin

   case (current_state)

   init:  begin 
		PCinc = 0; 
		Ri1Out = 0; Ri2Out = 0; Ri3Out = 0; Ri4Out = 0; 
		Rj1Out = 0; Rj2Out = 0; Rj3Out = 0; Rj4Out = 0; 
		Ri1In = 0; Ri2In = 0; Ri3In = 0; Ri4In = 0; 
		ALUreg1 = 0; ALUreg2 = 0; ALUregO = 0; ALUtri = 0; finish = 0;
	  end
   one:   begin  
		PCinc = 1; ALUreg1 = 1;
		case (p1)
			6'b000001: begin Ri1Out = 1; Ri2Out = 0; Ri3Out = 0; Ri4Out = 0; end
			6'b000010: begin Ri2Out = 1; Ri1Out = 0; Ri3Out = 0; Ri4Out = 0; end
			6'b000011: begin Ri3Out = 1; Ri2Out = 0; Ri1Out = 0; Ri4Out = 0; end
			default :  begin Ri4Out = 1; Ri2Out = 0; Ri3Out = 0; Ri1Out = 0; end
		endcase 
		Rj1Out = 0; Rj2Out = 0; Rj3Out = 0; Rj4Out = 0; 
		Ri1In = 0; Ri2In = 0; Ri3In = 0; Ri4In = 0; 
		ALUreg2 = 0; ALUregO = 0; ALUtri = 0; finish = 0;
	  end
   two:   begin 
		ALUreg2 = 1;
		case (p1)
			6'b000001: begin Ri1Out = 0; Ri2Out = 0; Ri3Out = 0; Ri4Out = 0; end
			6'b000010: begin Ri2Out = 0; Ri1Out = 0; Ri3Out = 0; Ri4Out = 0; end
			6'b000011: begin Ri3Out = 0; Ri2Out = 0; Ri1Out = 0; Ri4Out = 0; end
			default  : begin Ri4Out = 0; Ri2Out = 0; Ri3Out = 0; Ri1Out = 0; end
		endcase 

		case (p2)
			6'b000001: begin Rj1Out = 1; Rj2Out = 0; Rj3Out = 0; Rj4Out = 0; end
			6'b000010: begin Rj2Out = 1; Rj1Out = 0; Rj3Out = 0; Rj4Out = 0; end
			6'b000011: begin Rj3Out = 1; Rj2Out = 0; Rj1Out = 0; Rj4Out = 0; end
			default  : begin Rj4Out = 1; Rj2Out = 0; Rj3Out = 0; Rj1Out = 0; end
		endcase
		PCinc = 0; 
		Ri1In = 0; Ri2In = 0; Ri3In = 0; Ri4In = 0; 
		ALUreg1 = 0; ALUregO = 0; ALUtri = 0; finish = 0;
	  end
   three: begin 
		ALUregO = 1;
		case (p2)
			6'b000001: begin Rj1Out = 0; Rj2Out = 0; Rj3Out = 0; Rj4Out = 0; end
			6'b000010: begin Rj2Out = 0; Rj1Out = 0; Rj3Out = 0; Rj4Out = 0; end
			6'b000011: begin Rj3Out = 0; Rj2Out = 0; Rj1Out = 0; Rj4Out = 0; end 
			default  : begin Rj4Out = 0; Rj2Out = 0; Rj3Out = 0; Rj1Out = 0; end
		endcase 

		case (p1)
			6'b000001: begin Ri1In = 1; Ri2In = 0; Ri3In = 0; Ri4In = 0; end
			6'b000010: begin Ri2In = 1; Ri1In = 0; Ri3In = 0; Ri4In = 0; end
			6'b000011: begin Ri3In = 1; Ri2In = 0; Ri1In = 0; Ri4In = 0; end
			default  : begin Ri4In = 1; Ri2In = 0; Ri3In = 0; Ri1In = 0; end
		endcase
		PCinc = 0; 
		Ri1Out = 0; Ri2Out = 0; Ri3Out = 0; Ri4Out = 0; 
		ALUreg1 = 0; ALUreg2 = 0;ALUtri = 0; finish = 0;
	  end
   four:  begin  
		PCinc = 0; 
		Ri1Out = 0; Ri2Out = 0; Ri3Out = 0; Ri4Out = 0; 
		Rj1Out = 0; Rj2Out = 0; Rj3Out = 0; Rj4Out = 0; 
		case (p1)
			6'b000001: begin Ri1In = 1; Ri2In = 0; Ri3In = 0; Ri4In = 0; end
			6'b000010: begin Ri2In = 1; Ri1In = 0; Ri3In = 0; Ri4In = 0; end
			6'b000011: begin Ri3In = 1; Ri2In = 0; Ri1In = 0; Ri4In = 0; end
			default  : begin Ri4In = 1; Ri2In = 0; Ri3In = 0; Ri1In = 0; end
		endcase
		ALUreg1 = 0; ALUreg2 = 0; ALUregO = 0; ALUtri = 1; finish = 0;
	  end
   five:  begin  
		case (p1)
			6'b000001: begin Ri1In = 0; Ri2In = 0; Ri3In = 0; Ri4In = 0; end
			6'b000010: begin Ri2In = 0; Ri1In = 0; Ri3In = 0; Ri4In = 0; end
			6'b000011: begin Ri3In = 0; Ri2In = 0; Ri1In = 0; Ri4In = 0; end
			default  : begin Ri4In = 0; Ri2In = 0; Ri3In = 0; Ri1In = 0; end
		endcase
		PCinc = 0; 
		Ri1Out = 0; Ri2Out = 0; Ri3Out = 0; Ri4Out = 0; 
		Rj1Out = 0; Rj2Out = 0; Rj3Out = 0; Rj4Out = 0; 
		ALUreg1 = 0; ALUreg2 = 0; ALUregO = 0; ALUtri = 0; finish = 1;
	  end
   six:   begin  
		PCinc = 0; 
		Ri1Out = 0; Ri2Out = 0; Ri3Out = 0; Ri4Out = 0; 
		Rj1Out = 0; Rj2Out = 0; Rj3Out = 0; Rj4Out = 0; 
		Ri1In = 0; Ri2In = 0; Ri3In = 0; Ri4In = 0; 
		ALUreg1 = 0; ALUreg2 = 0; ALUregO = 0; ALUtri = 0; finish = 0;
	  end

   endcase

end

always@(posedge clk)					// Convert Opcode for ALU
begin

	case(opcode)
		4'b0001: begin ALUop = 3'b000; end	//Add
		4'b0010: begin ALUop = 3'b001; end	//Sub
		4'b0011: begin ALUop = 3'b010; end	//Not
		4'b0100: begin ALUop = 3'b011; end	//Add
		4'b0101: begin ALUop = 3'b100; end	//Or
		4'b0110: begin ALUop = 3'b101; end 	//Xor
		4'b0111: begin ALUop = 3'b110; end	//Xnor
		4'b1000: begin ALUop = 3'b000; end	//Addi
		4'b1001: begin ALUop = 3'b001; end	//Subi
		default: begin ALUop = 3'b000; end
	endcase

end


endmodule
