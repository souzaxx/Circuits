-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "04/12/2017 08:30:55"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	somador_4b_so_somadores IS
    PORT (
	x : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	y : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	habilita : IN std_logic;
	Cin : IN std_logic;
	S : OUT STD.STANDARD.bit_vector(3 DOWNTO 0);
	cout : OUT STD.STANDARD.bit
	);
END somador_4b_so_somadores;

-- Design Ports Information
-- S[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF somador_4b_so_somadores IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_habilita : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \C1|c9|output~combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \C1|C13|output~0_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \C2|c9|output~combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \C2|C13|output~0_combout\ : std_logic;
SIGNAL \C3|c9|output~combout\ : std_logic;
SIGNAL \C3|C13|output~0_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \C4|c9|output~combout\ : std_logic;
SIGNAL \C4|C14|output~0_combout\ : std_logic;

BEGIN

ww_x <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(x);
ww_y <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(y);
ww_habilita <= habilita;
ww_Cin <= Cin;
S <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_S);
cout <= IEEE.STD_LOGIC_1164.TO_BIT(ww_cout);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X10_Y0_N9
\S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|C14|output~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X24_Y0_N8
\y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\Cin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\habilita~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\x[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X27_Y2_N24
\C1|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|c9|output~combout\ = (\habilita~input_o\ & (\y[0]~input_o\ $ (\Cin~input_o\ $ (\x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \habilita~input_o\,
	datad => \x[0]~input_o\,
	combout => \C1|c9|output~combout\);

-- Location: IOIBUF_X22_Y0_N8
\x[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LCCOMB_X27_Y2_N26
\C1|C13|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C13|output~0_combout\ = (\y[0]~input_o\ & ((\Cin~input_o\) # (\x[0]~input_o\))) # (!\y[0]~input_o\ & (\Cin~input_o\ & \x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \Cin~input_o\,
	datad => \x[0]~input_o\,
	combout => \C1|C13|output~0_combout\);

-- Location: IOIBUF_X12_Y0_N1
\y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X27_Y2_N4
\C2|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|c9|output~combout\ = (\habilita~input_o\ & (\x[1]~input_o\ $ (\C1|C13|output~0_combout\ $ (\y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datab => \x[1]~input_o\,
	datac => \C1|C13|output~0_combout\,
	datad => \y[1]~input_o\,
	combout => \C2|c9|output~combout\);

-- Location: IOIBUF_X26_Y0_N1
\x[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X27_Y2_N6
\C2|C13|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|C13|output~0_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\) # ((\habilita~input_o\ & \C1|C13|output~0_combout\)))) # (!\x[1]~input_o\ & (\habilita~input_o\ & (\C1|C13|output~0_combout\ & \y[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datab => \x[1]~input_o\,
	datac => \C1|C13|output~0_combout\,
	datad => \y[1]~input_o\,
	combout => \C2|C13|output~0_combout\);

-- Location: LCCOMB_X27_Y2_N0
\C3|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|c9|output~combout\ = (\habilita~input_o\ & (\x[2]~input_o\ $ (\y[2]~input_o\ $ (\C2|C13|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \y[2]~input_o\,
	datac => \habilita~input_o\,
	datad => \C2|C13|output~0_combout\,
	combout => \C3|c9|output~combout\);

-- Location: LCCOMB_X27_Y2_N10
\C3|C13|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C3|C13|output~0_combout\ = (\x[2]~input_o\ & ((\y[2]~input_o\) # ((\habilita~input_o\ & \C2|C13|output~0_combout\)))) # (!\x[2]~input_o\ & (\y[2]~input_o\ & (\habilita~input_o\ & \C2|C13|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \y[2]~input_o\,
	datac => \habilita~input_o\,
	datad => \C2|C13|output~0_combout\,
	combout => \C3|C13|output~0_combout\);

-- Location: IOIBUF_X33_Y11_N8
\x[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X27_Y2_N28
\C4|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C4|c9|output~combout\ = (\habilita~input_o\ & (\C3|C13|output~0_combout\ $ (\x[3]~input_o\ $ (\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|C13|output~0_combout\,
	datab => \x[3]~input_o\,
	datac => \habilita~input_o\,
	datad => \y[3]~input_o\,
	combout => \C4|c9|output~combout\);

-- Location: LCCOMB_X27_Y2_N14
\C4|C14|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C4|C14|output~0_combout\ = (\habilita~input_o\ & ((\C3|C13|output~0_combout\ & ((\x[3]~input_o\) # (\y[3]~input_o\))) # (!\C3|C13|output~0_combout\ & (\x[3]~input_o\ & \y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|C13|output~0_combout\,
	datab => \x[3]~input_o\,
	datac => \habilita~input_o\,
	datad => \y[3]~input_o\,
	combout => \C4|C14|output~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_cout <= \cout~output_o\;
END structure;


