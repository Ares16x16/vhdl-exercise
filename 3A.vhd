library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all; 

entity sas is
    port(
    s, clk, clr : in std_logic;
    f : out std_logic   
    );
end sas;

architecture arch of sas is
signal potential : unsigned(8 downto 0) := "000000000";
begin
    process(s, clk)
    begin
        if (rising_edge(clk)) then
             f <= '0';
            if (s = '1' and potential <= 160) then 
                potential <= potential + 100;
            end if;
            if (s = '0' and potential <= 160) then 
                potential <=  shift_right(potential, 1);
            end if;
            if (s = '0' and potential > 160) then 
                f <= '1';
                potential <= "000000000";
            end if;
        end if;
    end process;
    
    process(clr)
    begin
        if (clr = '1') then 
            potential <= "000000000";
        end if;
    end process;
    
end arch;
