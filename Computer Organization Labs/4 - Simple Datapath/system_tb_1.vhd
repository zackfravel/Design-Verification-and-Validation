library ieee;
use ieee.std_logic_1164.all;


entity system_tb_1 is
end entity system_tb_1;


architecture mixed of system_tb_1 is
    constant tick : time := 10 ns;
    signal reset, clock : std_logic;
    signal instruction : std_logic_vector(15 downto 0);
begin
    uut : entity work.system
        port map(
            reset => reset,
            clock => clock,
            instruction => instruction
        );

    driver : process is
    begin
        -- reset the system
        reset <= '0'; instruction <= x"0000"; wait for tick;
        reset <= '1';

        -- ADD r2, r1, r1   (r2 = 2)
        instruction <= x"0211"; wait for tick;

        -- ADDI r3, r2, 5   (r3 = 7)
        instruction <= x"4325"; wait for tick;

        -- SUB r4, r3, r2   (r4 = 5)
        instruction <= x"1432"; wait for tick;

        -- SUBI r5, r4, -4  (r5 = 9)
        instruction <= x"554C"; wait for tick;

        -- AND r6, r3, r5   (r6 = 1)
        instruction <= x"2635"; wait for tick;

        -- OR r7, r5, r4    (r7 = 13)
        instruction <= x"3754"; wait for tick;

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