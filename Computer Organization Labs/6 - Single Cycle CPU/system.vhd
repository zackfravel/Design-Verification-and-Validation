----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:16 02/25/2016 
-- Design Name: 
-- Module Name:    system - Behavioral 
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

entity system is
	port (
			reset : in std_logic;
			clock : in std_logic;
			instruction : in std_logic_vector(15 downto 0);
			mem_dump : in std_logic := '0'
		);
end system;

architecture Behavioral of system is

-- Alu Signals
	signal alu_result : std_logic_vector(15 downto 0);
-- Control Signals
	signal aluop : std_logic_vector(1 downto 0);
	signal alusrc : std_logic;
	signal regload : std_logic;
	signal regdest : std_logic;
	signal readmem : std_logic;
	signal writemem : std_logic;
	signal reg_source : std_logic;
-- Memory Signals
	signal mem_data_out : std_logic_vector(15 downto 0);
-- Register Signals
	signal reg_bdata : std_logic_vector(15 downto 0);
	signal reg_cdata : std_logic_vector(15 downto 0);
-- Mux Signals
	signal alu_mux_f : std_logic_vector(15 downto 0);
	signal mem_mux_f : std_logic_vector(15 downto 0);
	signal reg_mux_f : std_logic_vector(3 downto 0);
-- Sign Extend Signals
	signal SE_output : std_logic_vector(15 downto 0);
	
	
begin

connect_Alu: entity work.Alu_16
	port map (a => reg_bdata,
             b => alu_mux_f,
				 sel => aluop,
				 r => alu_result);
			 
connect_register: entity work.reg_file
   port map	(a_data => mem_mux_f,
				 b_data => reg_bdata,
				 c_data => reg_cdata,
				 a_addr => instruction(11 downto 8),
				 b_addr => instruction(7 downto 4),
				 c_addr => reg_mux_f,
				 load => regload,
				 clear => reset,
				 clk => clock);
				 
connect_datamemory: entity work.memory
	generic map ( INPUT => "data_in.mem",
					  OUTPUT => "data_out.mem")
	port map (clk => clock,
				 read_en => readmem,
				 write_en => writemem,
				 addr => alu_result,
				 data_in => reg_cdata,
				 data_out => mem_data_out,
				 mem_dump => mem_dump);
				 
connect_alu_mux: entity work.mux
	port map (w0 => reg_cdata,
				 w1 => SE_output,
				 s => alusrc,
				 f => alu_mux_f);
				 
connect_reg_mux: entity work.mux4
	port map	(w0 => instruction(3 downto 0),
				 w1 => instruction(11 downto 8),
				 s => regdest,
				 f => reg_mux_f);
				 
connect_mem_mux: entity work.mux
	port map (w0 => mem_data_out,
				 w1 => alu_result,
				 s => reg_source,
				 f => mem_mux_f);
				 
connect_control: entity work.control
	port map (opcode => instruction(15 downto 12),
				 alu_src => alusrc,
				 alu_op => aluop,
				 reg_src => reg_source,
				 mem_read => readmem,
				 mem_write => writemem,
				 reg_load => regload,
				 reg_dest => regdest);
				 
connect_sign_extend: entity work.sign_extend
	port map (input => instruction(3 downto 0),
				 output => SE_output);
				  

end Behavioral;
