library ieee;
use ieee.std_logic_1164.all;

entity sum8bit is port(

	Z,Y	: in std_logic_vector(7 downto 0);
	CarryIn	: in std_logic;
	sum 	: out std_logic_vector(7 downto 0);
	CarryOut	: out std_logic

);
end entity;

architecture rtl of sum8bit is

component sum1bit is port(
	Z,Y,CarryIn	: in std_logic;
	sum, CarryOut: out std_logic
);
end component;

	signal c : std_logic_vector(6 downto 0); 
begin

dz0: sum1bit port map(Z(0),Y(0),CarryIn,sum(0),c(0));
dz1: sum1bit port map(Z(1),Y(1),C(0),sum(1),c(1));
dz2: sum1bit port map(Z(2),Y(2),C(1),sum(2),c(2));
dz3: sum1bit port map(Z(3),Y(3),C(2),sum(3),c(3));
dz4: sum1bit port map(Z(4),Y(4),C(3),sum(4),c(4));
dz5: sum1bit port map(Z(5),Y(5),C(4),sum(5),c(5));
dz6: sum1bit port map(Z(6),Y(6),C(5),sum(6),c(6));
dz7: sum1bit port map(Z(7),Y(7),C(6),sum(7),CarryOut);


end architecture;