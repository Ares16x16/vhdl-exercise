LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY full_adder_4b IS
    PORT (
        ci : IN STD_LOGIC;
        a : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        b : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        co : OUT STD_LOGIC;
        s : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END full_adder_4b;

ARCHITECTURE rtl OF full_adder_4b IS
    COMPONENT full_adder_1b IS
        PORT (
            ci : IN STD_LOGIC;
            a : IN STD_LOGIC;
            b : IN STD_LOGIC;
            co : OUT STD_LOGIC;
            s : OUT STD_LOGIC);
    END COMPONENT full_adder_1b;
SIGNAL temp : STD_LOGIC_VECTOR (4 downto 0); 
BEGIN
    temp(0) <= ci;
    FA1: full_adder_1b port map(temp(0), a(0), b(0), temp(1), s(0));
    FA2: full_adder_1b port map(temp(1), a(1), b(1), temp(2), s(1));
    FA3: full_adder_1b port map(temp(2), a(2), b(2), temp(3), s(2));
    FA4: full_adder_1b port map(temp(3), a(3), b(3), temp(4), s(3));
    co <= temp(4);

END rtl;