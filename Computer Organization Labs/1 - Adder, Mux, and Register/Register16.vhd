----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:57 02/01/2016 
-- Design Name: 
-- Module Name:    Register16 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register16 is
	port (resetn, clock: in std_logic;
			D: in std_logic_vector(15 downto 0);
			Q: out std_logic_vector(15 downto 0));
end Register16;

architecture Behavioral of Register16 is

begin
	process(clock, resetn)
	begin
		if resetn = '0' then
			Q <= (others=>'0');
		elsif rising_edge(clock) then
			Q <= D;
		end if;
	end process;
end Behavioral;