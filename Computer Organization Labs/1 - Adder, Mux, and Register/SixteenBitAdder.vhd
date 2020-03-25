----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:55:27 02/01/2016 
-- Design Name: 
-- Module Name:    SixteenBitAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SixteenBitAdder is
	port (cin: in std_logic;
			cout: out std_logic;
			x: in std_logic(15 downto 0);
			y: in std_logic(15 downto 0);
			s: out std_logic(15 downto 0));

end SixteenBitAdder;

architecture Behavioral of SixteenBitAdder is
	signal sum: std_logic_vector(16 downto 0);
begin
	sum <= ('0'&x)+y+cin;
	s <= sum(15 downto 0);
	cout <= sum(16);
	

end Behavioral;