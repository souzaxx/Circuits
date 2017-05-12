library ieee;
use ieee.std_logic_1164.all;

ENTITY digitalClock IS
	PORT (clock,habilita:					IN			std_logic;
			MinutosUni:							OUT 		std_logic_vector(6 downto 0);
			MinutosDez:							OUT 		std_logic_vector(6 downto 0);
			HorasUni:							OUT 		std_logic_vector(6 downto 0);
			HorasDez:							OUT 		std_logic_vector(6 downto 0));
END digitalClock;

ARCHITECTURE structural OF digitalClock IS 
	COMPONENT sevensegmentwclockflipflop PORT (
			clock,habilita:				IN			std_logic;
--			reset: 						 	INOUT 	std_logic;
			Value_set:						IN 		std_logic_vector(3 downto 0);
			Cout:								OUT  		std_logic;
			abcdefg:							OUT 		std_logic_vector(6 downto 0));
			END COMPONENT;

	FOR ALL: sevensegmentwclockflipflop 	USE ENTITY work.sevensegmentwclockflipflop(structural);

		SIGNAL Cout1,Cout2,Cout3,cout4: std_logic;
		
	BEGIN

		UnidadeMinutos: 	sevensegmentwclockflipflop PORT MAP (clock,habilita,"1010",Cout1,MinutosUni);
		DezenaMinutos:		sevensegmentwclockflipflop PORT MAP (clock,Cout1,"0111",Cout2,MinutosDez);
		UnidadeHoras: 		sevensegmentwclockflipflop PORT MAP (clock,Cout2,"1010",Cout3,HorasUni);
		DezenaHoras: 		sevensegmentwclockflipflop PORT MAP (clock,Cout3,"1010",cout4,HorasDez);
		
	
	END structural;