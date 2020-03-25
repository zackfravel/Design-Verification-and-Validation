----------------------------------------------------------------------------------
-- Company: Compupter Org Lab 4
-- Engineer: Zack Fravel
-- 
-- Create Date:    11:12:32 02/25/2016 
-- Design Name: 
-- Module Name:    control - Behavioral 
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

entity control is
    port(
         opcode : in std_logic_vector(3 downto 0);
         alu_src : out std_logic;
         alu_op : out std_logic_vector(2 downto 0);
		   reg_src: out std_logic;
			reg_dest:out std_logic;
			reg_load: out std_logic;
			mem_read : out std_logic;
			mem_write : out std_logic;
			branch : out std_logic;
			jump : out std_logic
		);
end entity control;

architecture Behavioral of control is
			
begin
	process (opcode) is
		begin
			case opcode is
			
            when x"0" =>            -- ADD (	Rd := Rs + Rt )
                alu_op <= "000"; 
					 alu_src <= '0';
					 
                reg_load <= '1'; 
					 reg_src <='1'; 
					 reg_dest <= '0';
					 
                mem_read <= '0'; 
					 mem_write <= '0';
					 
					 branch <= '0';
					 jump <= '0';
					 
				when x"4" =>            -- ADD Imm ( Rd := Rs + SignExt(Imm) )
                alu_op <= "000"; 
					 alu_src <= '1';
					 
                reg_load <= '1'; 
					 reg_src <='1'; 
					 reg_dest <= '0';
					 
                mem_read <= '0'; 
					 mem_write <= '0';
					 
					 branch <= '0';
					 jump <= '0';
					 
            when x"1" =>            -- SUB	( Rd := Rs - Rt )
					 alu_op <= "001"; 
					 alu_src <= '0';
					 
                reg_load <= '1'; 
					 reg_src <='1'; 
					 reg_dest <= '0';
					 
                mem_read <= '0'; 
					 mem_write <= '0';
					 
					 branch <= '0';
					 jump <= '0';
					 
				when x"5" =>            -- SUB Imm	( Rd := Rs - SignExt(Imm) )
					 alu_op <= "001"; 
					 alu_src <= '1';
					 
                reg_load <= '1'; 
					 reg_src <='1'; 
					 reg_dest <= '0';
					 
                mem_read <= '0'; 
					 mem_write <= '0';
					 
					 branch <= '0';
					 jump <= '0';
					
            when x"2" =>            -- AND	( Rd := Rs and Rt )
                alu_op <= "010"; 
					 alu_src <= '0';
					 
                reg_load <= '1'; 
					 reg_src <='1'; 
					 reg_dest <= '0';
					 
                mem_read <= '0'; 
					 mem_write <= '0';
					 
					 branch <= '0';
					 jump <= '0';
						
				when x"3" => 				-- OR	 ( Rd := Rs or Rt )
					 alu_op <= "011"; 
					 alu_src <= '0';
					 
                reg_load <= '1'; 
					 reg_src <='1'; 
					 reg_dest <= '0';
					 
                mem_read <= '0'; 
					 mem_write <= '0';
					 
					 branch <= '0';
					 jump <= '0';
				
				when x"8" => 				-- Load Word ( Rd := M[off + Rs] )
					 alu_op <= "000"; 
					 alu_src <= '1';
				
					 reg_load <= '1';
					 reg_src <= '0';
					 reg_dest <= '0';
				
					 mem_read <= '1';
					 mem_write <= '0';
					 
					 branch <= '0';
					 jump <= '0';
				
				when x"C" => 				-- Store Word ( M[off + Rs] := Rd )
					 alu_op <= "000"; 
					 alu_src <= '1';
				
					 reg_load <= '0';
					 reg_src <= '0';
					 reg_dest <= '1';
				
					 mem_read <= '0';
					 mem_write <= '1';
					 
					 branch <= '0';
					 jump <= '0';
					 
				when x"7" => 				-- Set Less Than ( if Rs < Rt then Rd := 1 else Rd := 0 )
					 alu_op <= "100"; 
					 alu_src <= '0';
				
					 reg_load <= '1';
					 reg_src <= '1';
					 reg_dest <= '0';
				
					 mem_read <= '0';
					 mem_write <= '0';
					 
					 branch <= '0';
					 jump <= '0';
					 
				when x"9" =>				-- Branch on Not Equal ( if Rd != Rs then pc := pc + 2 + addr )
					 alu_op <= "000";
					 alu_src <= '1';
					 
					 reg_load <= '0';
					 reg_src <= '1';
					 reg_dest <= '0';
					 
					 mem_read <= '0';
					 mem_write <= '0';
					 
					 branch <= '1';
					 jump <= '0';
					
				when x"B" => 				-- Jump Address ( PC := instruc(15:13, 11:0) & '0')
					 alu_op <= "000";
					 alu_src <= '1';
					 
					 reg_load <= '0';
					 reg_src <= '1';
					 reg_dest <= '0';
					 
					 mem_read <= '0';
					 mem_write <= '0';
					 
					 branch <= '0';
					 jump <= '1';
					 
            when others =>          -- Invalid Instruction
                alu_op <= "000"; 
					 alu_src <= '0';
					 
                reg_load <= '0'; 
					 reg_src <='0'; 
					 reg_dest <= '0';
					 
                mem_read <= '0'; 
					 mem_write <= '0';
					 
					 branch <= '0';
					 jump <= '0';
					 
        end case;
	end process;
end Behavioral;

