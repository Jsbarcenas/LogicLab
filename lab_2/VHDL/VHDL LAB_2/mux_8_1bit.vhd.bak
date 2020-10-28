library ieee;
use ieee.std_logic_1164.all;

entity mux_8_1bit is port(
	A : in std_logic_vector(7 downto 0);
	Sel : in std_logic_vector(2 downto 0);
	B : out std_logic
	);
end mux_8_1bit;

architecture rtl of mux_8_1bit is

begin
process(A,Sel)
	begin
	case Sel is
		when "X00" =>
			B <= A(0);
		when "X01" =>
			B <= A(1);
		when "010" =>
			B <= A(2);
		when "110" =>
			B <= A(3);
		when "11X" =>
			B <= A(4);
		when others =>
			B <= 'X';
	end case;
end process;
end rtl;
	
end architecture arq;