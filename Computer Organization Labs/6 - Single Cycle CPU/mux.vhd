----------------------------------------------------------------------------------
-- Company: Compupter Org Lab 4
-- Engineer: Zack Fravel
-- 
-- Create Date:    16:34:14 02/01/2016 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
	port (s: in std_logic;
			w0,w1: in std_logic_vector(15 downto 0);
			f: out std_logic_vector(15 downto 0)
		);
end mux;

architecture Behavioral of mux is

begin

	with s select
		f <= w0 when '0',
			  w1 when others;

end Behavioral;