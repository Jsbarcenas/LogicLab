library ieee;
use ieee.std_logic_1164.all;

entity OR_8bit is port( 

	A,B	:	in std_logic_vector(7 downto 0);
	R		:	OUT std_logic_vector(7 downto 0);
);


end OR_8bit;



architecture arq of OR_8bit is

begin
R <= A or B;
end arq;