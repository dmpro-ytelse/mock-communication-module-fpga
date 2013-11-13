library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity toplevel is
    generic(
        PINS : integer := 125
    );
    port(
        input: in std_logic_vector(PINS-1 downto 0);
        output : out std_logic_vector(4-1 downto 0)
    );
end toplevel;

architecture behavioral of toplevel is
begin
    output(0) <= '0' when input(PINS*1/4-1 downto PINS*0/4) = (PINS*1/4-1 downto PINS*0/4 => '0') else '1';
    output(1) <= '0' when input(PINS*2/4-1 downto PINS*1/4) = (PINS*2/4-1 downto PINS*1/4 => '0') else '1';
    output(2) <= '0' when input(PINS*3/4-1 downto PINS*2/4) = (PINS*3/4-1 downto PINS*2/4 => '0') else '1';
    output(3) <= '0' when input(PINS*4/4-1 downto PINS*3/4) = (PINS*4/4-1 downto PINS*3/4 => '0') else '1';
end Behavioral;

