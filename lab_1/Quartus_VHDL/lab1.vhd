library ieee;
use ieee.std_logic_1164.all;
entity lab1 is 
	port ( A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		D: in std_logic;
		
		X: out std_logic;
		Y: out std_logic;
		Z: out std_logic);
end entity lab1;
architecture operation of lab1 is
begin	
		
		X <= (B and D) or (B and C) or A;
		Y <= (B and C and D) or A;
		Z <= C xor D;
end architecture operation;