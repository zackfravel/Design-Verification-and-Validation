--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:02:27 02/06/2016
-- Design Name:   
-- Module Name:   C:/Users/zpfravel/Documents/Lab1/Lab1/Register16tb.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Register16
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Register16tb IS
END Register16tb;
 
ARCHITECTURE behavior OF Register16tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register16
    PORT(
         resetn : IN  std_logic;
         clock : IN  std_logic;
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal resetn : std_logic := '0';
   signal clock : std_logic := '0';
   signal D : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant tick : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register16 PORT MAP (
          resetn => resetn,
          clock => clock,
          D => D,
          Q => Q
        );

   -- Stimulus process
   drive : process
   begin
			D <= "1111110000111111";
			clock <= '0';
			resetn <= '1';
      wait for tick;
			D <= "1111110000111111";
			clock <= '1';
			resetn <= '1';
      wait for tick;
			D <= "1111110000111111";
			clock <= '0';
			resetn <= '1';
		wait for tick;
			D <= "1111110000111111";
			clock <= '1';
			resetn <= '0';
      wait for tick;
			D <= "1111110000111111";
			clock <= '1';
			resetn <= '1';
	   wait for tick;
			D <= "1111110000111111";
			clock <= '1';
			resetn <= '1';
   end process drive;
 
END;
