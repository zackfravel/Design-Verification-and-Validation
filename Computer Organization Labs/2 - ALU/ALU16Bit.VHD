--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:06:16 02/11/2016
-- Design Name:   
-- Module Name:   C:/Users/zpfravel/Documents/Lab2/Lab2/alu16bit.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
entity ALU16bit is
	port (
		-- Inputs
		a : in std_logic_vector(15 downto 0);
		b : in std_logic_vector(15 downto 0);
		s : in std_logic_vector(1 downto 0);
		-- Outputs
		r : out in std_logic_vector(15 downto 0);
		cout : out std_logic; 
		lt, eq, gt : out std_logic;
		overflow : out std_logic;
	);
end ALU16bit;
 
architecture Behavioral of ALU16bit is 
	signal r_sig : std_logic_vector(15 downto 0);
begin
	with s select
		r_sig <= std_logic_vector(signed('0' & a) + signed('0' & b)) when "00",
		         std_logic_vector(signed('0' & a) - signed('0' & b)) when "01",
			 (('0' & a) AND ('0' & b)) when "10",
			 (('0' & a) OR ('0' & b)) when "11";

		    r <= r_sig(15 downto 0);
	         cout <= r_sig(16); 

		   lt <= '1' when signed(a) < signed(b) else '0';
		   eq <= '1' when signed(a) = signed(b) else '0';
		   gt <= '1' when signed(a) > signed(b) else '0';

	     overflow <= '1' when s<="00" and (a(15) = b(15) and r_sig(15) /= a(15))
		    else '1' when s<="01" and (a(15) /= b(15)) and r_sig(15) /= a(15)
		    else '0';

end Behavioral;











