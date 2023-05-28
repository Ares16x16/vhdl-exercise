LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY full_adder_1b IS
    PORT (
        ci : IN STD_LOGIC;
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        co : OUT STD_LOGIC;
        s : OUT STD_LOGIC);
END full_adder_1b;

ARCHITECTURE rtl OF full_adder_1b IS
BEGIN
    s <= a XOR b XOR ci ;
    co <= (a AND b) OR (ci AND a) OR (ci AND b) ;
END rtl;