library ieee;
use ieee.std_logic_1164.all;

entity sum8bit is port(

	A,B	: in std_logic_vector(7 downto 0);
	Cin	: in std_logic;
	sum 	: out std_logic_vector(7 downto 0);
	Cout	: out std_logic

);
end entity;

architecture rtl of sum8bit is
-- list components

component sum1bit is port(
	A,B,Cin	: in std_logic;
	sum, Cout: out std_logic
);
end component;
-- Signals

	signal c : std_logic_vector(6 downto 0); 
begin

u0: sum1bit port map(A(0),B(0),Cin,sum(0),c(0));
u1: sum1bit port map(A(1),B(1),C(0),sum(1),c(1));
u2: sum1bit port map(A(2),B(2),C(1),sum(2),c(2));
u3: sum1bit port map(A(3),B(3),C(2),sum(3),c(3));
u4: sum1bit port map(A(4),B(4),C(3),sum(4),c(4));
u5: sum1bit port map(A(5),B(5),C(4),sum(5),c(5));
u6: sum1bit port map(A(6),B(6),C(5),sum(6),c(6));
u7: sum1bit port map(A(7),B(7),C(6),sum(7),Cout);


end architecture;