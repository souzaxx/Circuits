library ieee;
use ieee.std_logic_1164.all;

ENTITY setesegmentosWithClock IS
	PORT(	clock: 		IN std_logic;
			habilita:	IN BIT;
			abcdefg:		OUT BIT_vector(6 downto 0));
END setesegmentosWithClock;

ARCHITECTURE behavior1 OF setesegmentosWithClock IS
	COMPONENT setesegmentos IS
					PORT(	ABCD:			IN BIT_vector(3 downto 0);
							habilita:	IN BIT;
							abcdefg:		OUT BIT_vector(6 downto 0)); END COMPONENT;

	FOR ALL: setesegmentos USE ENTITY work.sete_segmentos(structural);
	
	SIGNAL zeroANove: BIT_vector(3 downto 0); 
	
	BEGIN
	
	PROCESS(clock)
		BEGIN
			IF clock'event and clock='1' THEN
				CASE zeroANove is
					when "0000" => zeroANove <= "0001";
					when "0001" => zeroANove <= "0010";
					when "0010" => zeroANove <= "0011";
					when "0011" => zeroANove <= "0100";
					when "0100" => zeroANove <= "0101";
					when "0101" => zeroANove <= "0110";
					when "0110" => zeroANove <= "0111";
					when "0111" => zeroANove <= "1000";
					when "1000" => zeroANove <= "1001";
					when "1001" => zeroANove <= "0000";
					when others => zeroANove <= "0000";
				END CASE;
			END IF;
	END PROCESS;
	
	C1: setesegmentos PORT MAP(zeroANove,habilita,abcdefg);
	
END behavior1;