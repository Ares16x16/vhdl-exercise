LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY comb_logic IS
    PORT (
        A : IN STD_LOGIC;
        B : IN STD_LOGIC;
        C : IN STD_LOGIC;
        D : IN STD_LOGIC;
        X : OUT STD_LOGIC);
END comb_logic;

ARCHITECTURE rtl OF comb_logic IS
BEGIN
    X <= (not(A) and (not(B) or (C xor D))) or (B and not(C) and not(D)) or (A and not(B) and C);
END rtl;
