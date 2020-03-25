----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:44:47 03/30/2016 
-- Design Name: 
-- Module Name:    add_two - Behavioral 
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

entity add_two is
	Port (PCin : in std_logic_vector(15 downto 0);
			Two : in std_logic_vector(15 downto 0) := "0000000000000010";
			PCout : out std_logic_vector(15 downto 0));
end add_two;

architecture Behavioral of add_two is

begin
		PCout <= PCin + Two;

end Behavioral;

