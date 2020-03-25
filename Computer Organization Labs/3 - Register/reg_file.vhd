----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:50 02/15/2016 
-- Design Name: 
-- Module Name:    reg_file - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_file is
	port (
        a_data : in std_logic_vector(15 downto 0); -- input data port
        a_addr : in std_logic_vector(3 downto 0); -- register select for input a
        load : in std_logic; -- load enable
 
        b_data : out std_logic_vector(15 downto 0); -- first output data port
        b_addr : in std_logic_vector(3 downto 0); -- register select for output b
 
        c_data : out std_logic_vector(15 downto 0); -- second output data port
        c_addr : in std_logic_vector(3 downto 0); -- register select for output c
 
        clear : in std_logic; -- asynchronous reset, negative logic
        clk : in std_logic -- positive edge triggered clock
    );
end entity reg_file;



architecture Behavioral of reg_file is

	type regfile is array(0 to 15) of std_logic_vector(15 downto 0);
	signal registers : regfile;
	
begin
	write : process(load, clear, clk) is
	variable reg : integer;
	begin
		if(clear = '0') then
			for reg in 0 to 15 loop
				registers(reg) <= x"0000";
			end loop;
		elsif(rising_edge(clk) and load = '1') then 
			registers(conv_integer(a_addr)) <= a_data;
		end if;
		
		registers(0) <= x"0000";
		registers(1) <= x"0001"; 
		
	end process write;
	
	b_data <= registers(conv_integer(b_addr));
	c_data <= registers(conv_integer(c_addr));

end Behavioral;

