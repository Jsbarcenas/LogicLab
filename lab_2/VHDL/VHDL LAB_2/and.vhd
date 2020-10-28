library ieee;
use ieee.std_logic_1164.all;

entity AND_8bit is port(

	A,B	:	in std_logic_vector(7 downto 0);
	R		:	OUT std_logic_vector(7 downto 0);
);


end AND_8bit;



architecture arq of AND_8bit is

begin
R <= A and B;
end arq;