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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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
			mem_dump : in std_logic := '0'
		);
end system;

architecture Behavioral of system is

-- Alu Signals 
	signal alu_result : std_logic_vector(15 downto 0);
	signal alu_eq : std_logic;
-- Control Signals
	signal aluop : std_logic_vector(2 downto 0);
	signal alusrc : std_logic;
	signal regload : std_logic;
	signal regdest : std_logic;
	signal readmem : std_logic;
	signal writemem : std_logic;
	signal reg_source : std_logic;
	signal branch_sel : std_logic;
	signal jump_sel : std_logic;
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
-- Instruction Memory Signals
	signal instruction : std_logic_vector(15 downto 0);
-- PC & Add Signals 
	signal PCaddr : std_logic_vector(15 downto 0);
	signal PC_two : std_logic_vector(15 downto 0); 
	signal PC_mux_out : std_logic_vector(15 downto 0);
-- Branch & Jump Signals
	signal SE_sll : std_logic_vector(15 downto 0);
	signal J_mux_out : std_logic_vector(15 downto 0);
	signal branch_target : std_logic_vector(15 downto 0);
-- Buffer Signals
	--signal IFID_out : std_logic_vector(31 downto 0); 
	--signal IDEX_out : std_logic_vector(76 downto 0); 
	
	
begin
	
	
	-- Branch mux				 
connect_PCmux: entity work.mux
	port map (w0 => PC_two,
				 w1 => branch_target,
				 s => ((not alu_eq) and branch_sel),
				 f => PC_mux_out);
				 
	-- Jump mux
connect_Jmux: entity work.mux
	port map (w0 => PC_mux_out,
				 w1 => PC_two(15 downto 13) & instruction(11 downto 0) & '0',
				 s => jump_sel, 
				 f => J_mux_out);
	
		-- Program Counter				 
connect_programcounter: entity work.Register16
	port map (resetn => reset,
				 clock => clock,
				 D => J_mux_out,
				 Q => PCaddr);
				 
		-- + 2 Add Signal
PC_two <= PCaddr + "0000000000000010"; 	-- PC + 2 signal 
	
	-- Branch address add
branch_target <= SE_sll + PC_two;

	-- Instruction Memory				 
connect_instructmemory: entity work.memory
	generic map ( INPUT => "instruction_in.mem",
					  OUTPUT => "instruction_out.mem") 
   port map (clk => clock,
				 read_en => '1',
				 write_en => '0',
				 addr => PCaddr,
				 data_in => "0000000000000000",
				 data_out => instruction,
				 mem_dump => '0');


	
	
	----- IF / ID in ----- (32 bits)
	
--connect_IFID: entity work.reg
	--generic map (WIDTH => 32)
					 --31:16-- 	 --15:0--
	--port map	(d => PC_two & instruction,
				 --q => IFID_out,
				 --en => '1',
				 --clock => clock,
				 --reset => reset);
	
	----- IF / ID out ----- (connected!)
	
	
	
		-- Register mux				  
connect_reg_mux: entity work.mux4
	port map	(w0 => instruction(3 downto 0),
				 w1 => instruction(11 downto 8),
				 s => regdest,
				 f => reg_mux_f);
	
		-- Register File			 
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
				 
		-- Sign Extender				 
connect_sign_extend: entity work.sign_extend
	port map (input => instruction(3 downto 0),
				 output => SE_output);
				 				 
	-- Control 				 
connect_control: entity work.control
	port map (opcode => instruction(15 downto 12),
				 alu_src => alusrc,
				 alu_op => aluop,
				 reg_src => reg_source,
				 mem_read => readmem,
				 mem_write => writemem,
				 reg_load => regload,
				 reg_dest => regdest,
				 branch => branch_sel,
				 jump => jump_sel);
				 
				 
				 
	
	
	----- ID / EX in ----- (77 bits)
	
--connect_IDEX: entity work.reg
	--generic map (WIDTH => 77)
						     --76:61-- 					  --60:57--			   --56:41--    --40:25--   --24:9--     --8--  --7:5--    --4--       --3--     --2--		   --1--       --0--
	--port map	(d => IFID_out(31 downto 16) & IFID_out(11 downto 8) & reg_bdata & reg_cdata & SE_output & alusrc & aluop & branch_sel & readmem & writemem & reg_source & regload,
				 --q => IDEX_out,
				 --en => '1',
				 --clock => clock,
				 --reset => reset);
	
	----- ID / EX out ----- (not yet connected)
	
	
	
	
	-- ALU mux				 
connect_alu_mux: entity work.mux
	port map (w0 => reg_cdata,
				 w1 => SE_output,
				 s => alusrc,
				 f => alu_mux_f);
	
		-- ALU
connect_Alu: entity work.Alu_16
	port map (a => reg_bdata,
             b => alu_mux_f,
				 sel => aluop,
				 r => alu_result, 
				 eq => alu_eq); 
				 
				 				 
	-- Shift Left
connect_shiftleft: entity work.shift_left
	port map (a => SE_output,
				 b => SE_sll);
				 
				 
				 
	
	
	----- EX / MEM in ----- (58 bits)
	
	----- EX / MEM out ----- (not yet connected)
	
	
	
	
	
		-- Data Memory				 
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
				 
				 
	
	
	
	----- MEM / WB in ----- (38 bits)

	----- MEM / WB out ----- (not yet connected)
	
	
	

				 
	-- Memory mux				 
connect_mem_mux: entity work.mux
	port map (w0 => mem_data_out,
				 w1 => alu_result,
				 s => reg_source,
				 f => mem_mux_f);



				  

end Behavioral;
