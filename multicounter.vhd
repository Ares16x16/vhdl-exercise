library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multicounter is
    port(reset, clk, mode: in std_logic;
    Q : out std_logic_vector(3 downto 0));
end multicounter;

architecture arch of multicounter is
signal count : std_logic_vector(0 to 3);
begin
    process(reset, clk, mode)
    begin
        if (reset = '1') then 
            count <= "0000";
        elsif (clk'event and clk = '1') then 
            if (mode = '0') then count <= count + 2;
            elsif (mode = '1') then count <= count + 1;   
            end if;
        end if;
    end process;
    Q <= count;
end arch;
