library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_cf_top_entity is
end;

architecture testbench of tb_cf_top_entity is
signal clock_c :  std_logic;
signal enable_i :  unsigned(0 downto 0);
signal reset_i :  unsigned(0 downto 0);
signal flip_i :  unsigned(0 downto 0);
signal real_i :  unsigned(7 downto 0);
signal imag_i :  unsigned(7 downto 0);
signal ang_i :  unsigned(7 downto 0);
signal real_o :  unsigned(7 downto 0);
signal imag_o :  unsigned(7 downto 0);
signal ang_o :  unsigned(7 downto 0);
COMPONENT cf_cordic_r_8_8_8 is
port(
signal clock_c : in std_logic;
signal enable_i : in unsigned(0 downto 0);
signal reset_i : in unsigned(0 downto 0);
signal flip_i : in unsigned(0 downto 0);
signal real_i : in unsigned(7 downto 0);
signal imag_i : in unsigned(7 downto 0);
signal ang_i : in unsigned(7 downto 0);
signal real_o : out unsigned(7 downto 0);
signal imag_o : out unsigned(7 downto 0);
signal ang_o : out unsigned(7 downto 0));
end component;

begin 

tb_0 : cf_cordic_r_8_8_8 port map ( 
		clock_c => clock_c,
		enable_i => enable_i,
		reset_i => reset_i,
		flip_i => flip_i,
		real_i => real_i,
		imag_i => imag_i,
		ang_i => ang_i,
		real_o => real_o,
		imag_o => imag_o,
		ang_o => ang_o);


 inputs: process
 begin

wait for 10 ns;
wait until clock_c = '0';
reset_i <= "1";
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
   enable_i <= "1";
   reset_i  <= "0";
   flip_i   <= "0";
   real_i   <= X"67";
   imag_i   <= X"09";
   ang_i    <= X"32";   
wait until clock_c = '0';
wait until clock_c = '0';
   flip_i   <= "1";
   real_i   <= "01001001";
   imag_i   <= "00010111";
   ang_i    <= "00000001";   
wait until clock_c = '0';
wait until clock_c = '0';
   flip_i <= "0";
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';
wait until clock_c = '0';

wait;
end process;

cl_0: process --Clock period 30 ns 50% duty cycle. 
begin
wait for 15 ns;
clock_c <='0';
wait for 15 ns;
clock_c <='1';
end process;
end testbench;
 
