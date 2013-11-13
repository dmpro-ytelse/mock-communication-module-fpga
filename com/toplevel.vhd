library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity toplevel is
    generic(
        PINS : integer := 128
    );
    port(
        input: in std_logic_vector(PINS-1 downto 0);
        output : out std_logic
    );
end toplevel;

architecture behavioral of toplevel is
begin
    output <= '0' when input = (PINS-1 downto 0 => '0') else '1';
end Behavioral;

