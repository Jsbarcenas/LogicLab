library ieee;
use ieee.std_logic_1164.all;

entity sum1bit is port(

	A,B,Cin	: in std_logic;
	sum, Cout: out std_logic

);
end entity;

architecture rtl of sum1bit is
-- signals
	signal AxB : std_logic;
begin
AxB <= A xor B;

sum <= AxB xor Cin;
Cout <= (A and B) or (AxB and Cin);

end architecture;

