library ieee;
use ieee.std_logic_1164.all;

entity alu8bit is port(

	A,B	: in std_logic;
	sel	: in std_logic_vector(1 downto 0);
	R		: out std_logic);
end entity;

architecture rtl of Alu8bit is
-- Component List

component sum8bit is port(
	A,B,Cin	: in std_logic;
	sum, Cout: out std_logic
);
end component;


component AND_8bit is port(
	A,B	:	in std_logic_vector(7 downto 0);
	R		:	OUT std_logic_vector(7 downto 0);

	);
end component;


component OR_8bit is port(
	A,B	:	in std_logic_vector(7 downto 0);
	R		:	OUT std_logic_vector(7 downto 0);

	);
end component;


component comparador is port( 
   A : in std_logic_vector(7 downto 0); 
   B : in std_logic_vector(7 downto 0);
   menor : out std_logic;  
   igual : out std_logic;   
   mayor:  out std_logic  
			
		);	
end component;


component mux_8_1bit is port(
	A : in std_logic_vector(7 downto 0);
	Sel : in std_logic_vector(2 downto 0);
	B : out std_logic
	);
		
end component;



-- signals
	signal Cin_signal,Cout_signal: std_logic;
	signal vector_mux	: std_logic_vector(7 downto 0);
	
	
begin

vector_mux(0) <= AND_8bit;
vector_mux(1)  <= OR_8bit;
vector_mux(2) <= sum8bit ;
vector_mux(3)  <= comparador;
Cin_signal <= '0';
sumador: sum8bit port map(A,B,Cin_signal,vector_mux(2),Cout_signal);
Mux: mux_8_1bit port map(vector_mux,sel,R);

end architecture;