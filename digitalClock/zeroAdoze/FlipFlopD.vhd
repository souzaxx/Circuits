library ieee;
use ieee.std_logic_1164.all;

ENTITY FlipFlopD IS
		PORT( clock,reset,D: IN 	std_logic;
				Q,nQ: 			INOUT 	std_logic);
END FlipFlopD;

ARCHITECTURE structural OF FlipFlopD IS
	--signal N: std_logic_vector(5 downto 0);
BEGIN
	process (clock, reset) begin
			if (reset='0') then
				Q<='0';
			else
				if(clock='1' and clock' event) then
					if (D='0') then 
						Q<='0';
					else 
						Q<='1';
					end if;
				end if;
			end if;
		end process;
	nQ<=not Q;
END structural;