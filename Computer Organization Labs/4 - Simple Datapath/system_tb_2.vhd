library ieee;
use ieee.std_logic_1164.all;


entity system_tb_2 is
end entity system_tb_2;


architecture mixed of system_tb_2 is
    constant tick : time := 1 us;
    signal reset, clock : std_logic;
    signal instruction : std_logic_vector(15 downto 0) := x"0000";
    signal mem_dump : std_logic := '0';
begin
    uut : entity work.system
        port map(
            reset => reset,
            clock => clock,
            instruction => instruction,
            mem_dump => mem_dump
        );

    driver : process is
    begin
        -- reset the system
        reset <= '0'; instruction <= x"0000"; wait for tick;
        reset <= '1';

        -- ADDI r3, r0, 5   (r3 = 5)
        instruction <= x"4305"; wait for tick;

        -- ADDI r4, r0, 2   (r4 = 2)
        instruction <= x"4402"; wait for tick;

        -- SW r3, 0(r0)     (M[0] = 5)
        instruction <= x"C300"; wait for tick;

        -- SW r4, 4(r0)     (M[4] = 2)
        instruction <= x"C404"; wait for tick;

        -- ADDI r6, r0, 4   (r6 = 4)
        instruction <= x"4604"; wait for tick;

        -- LW r7, 0(r6)     (r7 = 2)
        instruction <= x"8760"; wait for tick;

        -- LW r8, 0(r0)     (r8 = 5)
        instruction <= x"8800"; wait for tick;

        -- Dump the final data memory into a file
        mem_dump <= '1';
        wait;
    end process driver;

    clock_p : process is
    begin
        for i in 0 to 9 loop
            clock <= '0'; wait for tick/2;
            clock <= '1'; wait for tick/2;
        end loop;
        wait;
    end process clock_p;
end architecture mixed;