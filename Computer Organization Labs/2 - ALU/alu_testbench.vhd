--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:06:16 02/11/2016
-- Design Name:   
-- Module Name:   C:/Users/zpfravel/Documents/Lab2/Lab2/alu_testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU16bit
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
 
ENTITY alu_testbench IS
END alu_testbench;
 
ARCHITECTURE behavior OF alu_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU16bit
    PORT(
         a : IN  std_logic_vector(15 downto 0);
         b : IN  std_logic_vector(15 downto 0);
         s : IN  std_logic_vector(1 downto 0);
         r : OUT  std_logic_vector(15 downto 0);
         cout : OUT  std_logic;
         lt : OUT  std_logic;
         eq : OUT  std_logic;
         gt : OUT  std_logic;
         overflow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(15 downto 0) := (others => '0');
   signal b : std_logic_vector(15 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal r : std_logic_vector(15 downto 0);
   signal cout : std_logic;
   signal lt : std_logic;
   signal eq : std_logic;
   signal gt : std_logic;
   signal overflow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant tick : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU16bit PORT MAP (
          a => a,
          b => b,
          s => s,
          r => r,
          cout => cout,
          lt => lt,
          eq => eq,
          gt => gt,
          overflow => overflow
        );

   -- Stimulus process
   drive : process
   begin
			s <= "00";
		wait for tick;
			a <= "0000000011111111";
			b <= "0000111100001111";
		wait for tick;
			a <= "1011100100011111";
			b <= "1011100100000000";
		wait for tick;
			a <= "0000000011111111";
			b <= "0000000011111111";
		wait for tick;
			s <= "01";
		wait for tick;
			a <= "0000000011111111";
			b <= "0000111100001111";
		wait for tick;
			a <= "1011100100011111";
			b <= "1011100100000000";
		wait for tick;
			a <= "0000000011111111";
			b <= "0000000011111111";
		wait for tick;
			a <= "0011001111001100";
			b <= "1010001111000011";
		wait for tick;
			s <= "10";
		wait for tick;
			s <= "11";
		wait for tick;
   end process;

END;
