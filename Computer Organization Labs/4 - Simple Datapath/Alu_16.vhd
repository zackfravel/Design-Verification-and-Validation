----------------------------------------------------------------------------------
-- Company: Computer Org class
-- Engineer: Jean Pierre Habimana
-- 
-- Create Date:    12:23:33 02/02/2016 
-- Design Name:    ALU
-- Module Name:    Alu_16 - Behavioral 
-- Project Name: ALU 16 bits
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Alu_16 is
    Port ( 
			  a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : in  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           r : out  STD_LOGIC_VECTOR (15 downto 0);
           cout : out  STD_LOGIC;
           lt : out  STD_LOGIC;
           eq : out  STD_LOGIC;
           gt : out  STD_LOGIC;
           overflow : out  STD_LOGIC
		 );
end Alu_16;

--Selection operations
  --sel			operation
  --000			add
  --001			subtract
  --010			AND	
  --011			OR
  --100			SLT
------------------------
  --lt = 1 fpr a < b
  --eq = 1 for a = b
  --gt = 1 for a > b
  --cout : carry out for arithmetic operations
  --overflow = 2's compliment addition is out of bounds  

architecture Behavioral of Alu_16 is
		signal r_sig : std_logic_vector(16 downto 0);
		signal slt_r : std_logic_vector(16 downto 0);
begin
	
		slt_r <= (x"0000" & '1') when (signed (a) < signed (b)) else (x"0000" & '0');
		
	with sel select
		r_sig <= std_logic_vector(signed('0' & a) + signed ('0' & b)) when "000",
		         std_logic_vector(signed('0' & a) - signed ('0' & b)) when "001",
					('0' & a) AND ('0' & b) when "010",
					('0' & a) OR ('0' & b) when "011",
					slt_r when "100";
					
			--logic for lt, eq and gt
			lt <= '1' when (signed (a) < signed (b)) else '0';
			eq <= '1' when (signed (a) = signed (b)) else '0';
			gt <= '1' when (signed (a) > signed (b)) else '0';
			
			--Addition overflow: Inputs are of the same sign, the result should be of that sign too.
			overflow <= '1' when sel <= "00" and ((a(15) = b (15)) and (r_sig(15) /= a(15)))else
			
			--subtraction overflow: If the first operand is positive and the second is negative, the result should be positive
			--Also if the first operand is negative and the second is positive the result should be negative
			'1' when sel <= "01" and (a(15) /= b(15) and r_sig(15) /= a(15)) else 
			'0'; 
			
			r <= r_sig(15 downto 0);
			cout <= r_sig(16);
			
end Behavioral;
