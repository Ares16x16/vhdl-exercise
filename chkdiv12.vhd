LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity chkdiv12 is
    Port ( 
        n : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        d : out STD_LOGIC);
end chkdiv12;

ARCHITECTURE rtl OF chkdiv12 IS
    COMPONENT chkdiv3 IS
        Port ( 
            n : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
            d : out STD_LOGIC);
    END COMPONENT chkdiv3;
SIGNAL o : STD_LOGIC; 
BEGIN   
    check1: chkdiv3 port map(n,o);
    d <= (n(1) NOR n(0)) AND o;
END rtl;