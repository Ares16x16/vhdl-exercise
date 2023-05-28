LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity chkdiv3 is
    Port ( 
        n : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        d : out STD_LOGIC);
end chkdiv3;

architecture rtl of chkdiv3 is
begin

    d <= (NOT n(4) AND NOT n(3) AND NOT n(2) AND NOT n(1) AND NOT n(0)) OR (NOT n(4) AND NOT n(3) AND NOT n(2) AND n(1) AND n(0)) OR (NOT n(4) AND NOT n(3) AND n(2) AND n(1) AND NOT n(0)) OR (NOT n(4) AND n(3) AND NOT n(2) AND NOT n(1) AND n(0)) OR (NOT n(4) AND n(3) AND n(2) AND NOT n(1) AND NOT n(0)) OR (NOT n(4) AND n(3) AND n(2) AND n(1) AND n(0)) OR (n(4) AND NOT n(3) AND NOT n(2) AND n(1) AND NOT n(0)) OR (n(4) AND NOT n(3) AND n(2) AND NOT n(1) AND n(0)) OR (n(4) AND n(3) AND NOT n(2) AND NOT n(1) AND NOT n(0)) OR (n(4) AND n(3) AND NOT n(2) AND n(1) AND n(0)) OR (n(4) AND n(3) AND n(2) AND n(1) AND NOT n(0));

   
end rtl;
