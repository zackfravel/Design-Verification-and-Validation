library ieee;
use ieee.std_logic_1164.all;


entity reg is
    generic (WIDTH : positive);

    port (
        d : in std_logic_vector(WIDTH-1 downto 0);
        q : out std_logic_vector(WIDTH-1 downto 0);
        en : in std_logic;
        clock : in std_logic;
        reset : in std_logic -- asynch active low
    );
end entity reg;


architecture behavioral of reg is
begin
    process(d, en, clock, reset) is
    begin
        if reset = '0' then
            q <= (others => '0');
        elsif rising_edge(clock) and en = '1' then
            q <= d;
        end if;
    end process;
end architecture;
