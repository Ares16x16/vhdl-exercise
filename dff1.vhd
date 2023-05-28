LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY dff1 IS
    PORT (
        d : IN STD_LOGIC;
        en : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        q : OUT STD_LOGIC);
END dff1;

ARCHITECTURE rtl OF dff1 IS
BEGIN
    proc_reg : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF (en = '1') THEN
                q <= d;
            END IF;
        END IF;
    END PROCESS;
END rtl;