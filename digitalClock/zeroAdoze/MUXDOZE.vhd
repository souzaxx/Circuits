library ieee;
use ieee.std_logic_1164.all;

ENTITY MUXDOZE IS
	PORT( wxyz: 			INOUT	 	std_logic_vector(3 downto 0);
			wxyz1,wxyz2: 	OUT	 	std_logic_vector(3 downto 0));
END MUXDOZE;

ARCHITECTURE structural OF MUXDOZE IS
	BEGIN
		PROCESS(wxyz) BEGIN
			CASE wxyz IS
				when "0000" | "0001" | "0010" | "0011" | "0100" | "0101" | "0110" | "0111" | "1000" | "1001" =>
					wxyz1 <= "0000";
					wxyz2 <= wxyz;
				when "1010" =>
					wxyz1 <= "0001";
					wxyz2 <= "0000";
				when "1011" =>
					wxyz1 <= "0001";
					wxyz2 <= "0001";
				when "1100" =>
					wxyz1 <= "0001";
					wxyz2 <= "0010";
				when others =>
					null;
			end case;
	END PROCESS;
END structural;