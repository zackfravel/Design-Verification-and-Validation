----------------------------------------------------------------------------------
-- Company: Compupter Org Lab 4
-- Engineer: Zack Fravel
-- 
-- Create Date:    11:11:20 02/25/2016 
-- Design Name: 
-- Module Name:    sign_extend - Behavioral 
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

entity sign_extend is
    port (
        input : in std_logic_vector(3 downto 0);
        output : out std_logic_vector(15 downto 0)
    );
end entity sign_extend;

architecture Behavioral of sign_extend is

begin

	output <= input(3) & input(3) & input(3) & input(3) & 
				 input(3) & input(3) & input(3) & input(3) & 
				 input(3) & input(3) & input(3) & input(3) & 
				 input; 

end Behavioral;

