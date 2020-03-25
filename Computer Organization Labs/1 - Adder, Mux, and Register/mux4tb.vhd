--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:40:15 02/06/2016
-- Design Name:   
-- Module Name:   C:/Users/zpfravel/Documents/Lab1/Lab1/mux4tb.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux4
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
 
ENTITY mux4tb IS
END mux4tb;
 
ARCHITECTURE behavior OF mux4tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4
    PORT(
         s : IN  std_logic_vector(1 downto 0);
         w0 : IN  std_logic_vector(15 downto 0);
         w1 : IN  std_logic_vector(15 downto 0);
         w2 : IN  std_logic_vector(15 downto 0);
         w3 : IN  std_logic_vector(15 downto 0);
         f : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic_vector(1 downto 0) := (others => '0');
   signal w0 : std_logic_vector(15 downto 0) := (others => '0');
   signal w1 : std_logic_vector(15 downto 0) := (others => '0');
   signal w2 : std_logic_vector(15 downto 0) := (others => '0');
   signal w3 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal f : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant tick : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4 PORT MAP (
          s => s,
          w0 => w0,
          w1 => w1,
          w2 => w2,
          w3 => w3,
          f => f
        );

   drive : process
   begin
			w0 <= "0000000000000000";
			w1 <= "0000000011111111";
			w2 <= "1111111100000000";
			w3 <= "1111111111111111";
			s <= "00";
      wait for tick;
			w0 <= "0000000000000000";
			w1 <= "0000000011111111";
			w2 <= "1111111100000000";
			w3 <= "1111111111111111";
			s <= "01";
		wait for tick;
			w0 <= "0000000000000000";
			w1 <= "0000000011111111";
			w2 <= "1111111100000000";
			w3 <= "1111111111111111";
			s <= "10";
		wait for tick;
			w0 <= "0000000000000000";
			w1 <= "0000000011111111";
			w2 <= "1111111100000000";
			w3 <= "1111111111111111";
			s <= "11";
		wait for tick;
			w0 <= "0000000000000000";
			w1 <= "0000000011111111";
			w2 <= "1111111100000000";
			w3 <= "1111111111111111";
			s <= "00";
   end process drive;

END;
