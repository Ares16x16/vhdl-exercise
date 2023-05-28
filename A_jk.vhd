library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY A_jk IS
    PORT (
        j : IN STD_LOGIC;
        k : IN STD_LOGIC;   
        clk : IN STD_LOGIC;
        q : OUT STD_LOGIC);
END A_jk;

ARCHITECTURE rtl of A_jk IS
BEGIN
    PROCESS(clk)
    VARIABLE temp: STD_LOGIC;
    BEGIN
        if(clk='1' and clk'EVENT) then
            if(j='0' and k='0')then
                temp:=temp;     
            elsif(j='1' and k='0')then
                temp:='1';       
            elsif(j='0' and k='1')then
                temp:='0';          
            elsif(j='1' and k='1')then
                temp:= not temp;    
            end if;
        end if;
        q<=temp;
    END PROCESS;
END rtl;
