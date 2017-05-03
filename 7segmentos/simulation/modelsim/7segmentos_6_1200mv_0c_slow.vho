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

-- DATE "04/20/2017 08:37:59"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sete_segmentos IS
    PORT (
	ABCD : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	habilita : IN std_logic;
	abcdefg : OUT STD.STANDARD.bit_vector(6 DOWNTO 0)
	);
END sete_segmentos;

-- Design Ports Information
-- abcdefg[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[5]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[6]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sete_segmentos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ABCD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_habilita : std_logic;
SIGNAL ww_abcdefg : std_logic_vector(6 DOWNTO 0);
SIGNAL \abcdefg[0]~output_o\ : std_logic;
SIGNAL \abcdefg[1]~output_o\ : std_logic;
SIGNAL \abcdefg[2]~output_o\ : std_logic;
SIGNAL \abcdefg[3]~output_o\ : std_logic;
SIGNAL \abcdefg[4]~output_o\ : std_logic;
SIGNAL \abcdefg[5]~output_o\ : std_logic;
SIGNAL \abcdefg[6]~output_o\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \ABCD[2]~input_o\ : std_logic;
SIGNAL \ABCD[3]~input_o\ : std_logic;
SIGNAL \ABCD[0]~input_o\ : std_logic;
SIGNAL \ABCD[1]~input_o\ : std_logic;
SIGNAL \C34|output~0_combout\ : std_logic;
SIGNAL \C34|output~1_combout\ : std_logic;
SIGNAL \C33|output~0_combout\ : std_logic;
SIGNAL \C33|output~1_combout\ : std_logic;
SIGNAL \C32|output~0_combout\ : std_logic;
SIGNAL \C31|output~0_combout\ : std_logic;
SIGNAL \C31|output~1_combout\ : std_logic;
SIGNAL \C30|output~0_combout\ : std_logic;
SIGNAL \C29|output~0_combout\ : std_logic;
SIGNAL \C28|output~0_combout\ : std_logic;
SIGNAL \C28|output~1_combout\ : std_logic;

BEGIN

ww_ABCD <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(ABCD);
ww_habilita <= habilita;
abcdefg <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_abcdefg);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X10_Y0_N9
\abcdefg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C34|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefg[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\abcdefg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C33|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefg[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\abcdefg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C32|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\abcdefg[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C31|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefg[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\abcdefg[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C30|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\abcdefg[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C29|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[5]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\abcdefg[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C28|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefg[6]~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\habilita~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\ABCD[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABCD(2),
	o => \ABCD[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\ABCD[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABCD(3),
	o => \ABCD[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\ABCD[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABCD(0),
	o => \ABCD[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\ABCD[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABCD(1),
	o => \ABCD[1]~input_o\);

-- Location: LCCOMB_X14_Y1_N24
\C34|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C34|output~0_combout\ = (\ABCD[3]~input_o\) # ((\ABCD[2]~input_o\ & ((!\ABCD[1]~input_o\) # (!\ABCD[0]~input_o\))) # (!\ABCD[2]~input_o\ & ((\ABCD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[2]~input_o\,
	datab => \ABCD[3]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \C34|output~0_combout\);

-- Location: LCCOMB_X14_Y1_N2
\C34|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C34|output~1_combout\ = (\habilita~input_o\ & \C34|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datad => \C34|output~0_combout\,
	combout => \C34|output~1_combout\);

-- Location: LCCOMB_X14_Y1_N12
\C33|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C33|output~0_combout\ = (\ABCD[3]~input_o\) # ((\ABCD[2]~input_o\ & ((!\ABCD[1]~input_o\) # (!\ABCD[0]~input_o\))) # (!\ABCD[2]~input_o\ & (!\ABCD[0]~input_o\ & !\ABCD[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[2]~input_o\,
	datab => \ABCD[3]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \C33|output~0_combout\);

-- Location: LCCOMB_X14_Y1_N30
\C33|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C33|output~1_combout\ = (\habilita~input_o\ & \C33|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datad => \C33|output~0_combout\,
	combout => \C33|output~1_combout\);

-- Location: LCCOMB_X14_Y1_N8
\C32|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C32|output~0_combout\ = (\habilita~input_o\ & (!\ABCD[0]~input_o\ & ((\ABCD[1]~input_o\) # (!\ABCD[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[2]~input_o\,
	datab => \habilita~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \C32|output~0_combout\);

-- Location: LCCOMB_X14_Y1_N26
\C31|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C31|output~0_combout\ = (\ABCD[3]~input_o\) # ((\ABCD[2]~input_o\ & (\ABCD[0]~input_o\ $ (\ABCD[1]~input_o\))) # (!\ABCD[2]~input_o\ & ((\ABCD[1]~input_o\) # (!\ABCD[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[2]~input_o\,
	datab => \ABCD[3]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \C31|output~0_combout\);

-- Location: LCCOMB_X14_Y1_N28
\C31|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C31|output~1_combout\ = (\habilita~input_o\ & \C31|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datac => \C31|output~0_combout\,
	combout => \C31|output~1_combout\);

-- Location: LCCOMB_X14_Y1_N14
\C30|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C30|output~0_combout\ = (\habilita~input_o\ & ((\ABCD[2]~input_o\) # ((\ABCD[0]~input_o\) # (!\ABCD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[2]~input_o\,
	datab => \habilita~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \C30|output~0_combout\);

-- Location: LCCOMB_X14_Y1_N16
\C29|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C29|output~0_combout\ = (\habilita~input_o\ & ((\ABCD[0]~input_o\ $ (!\ABCD[1]~input_o\)) # (!\ABCD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[2]~input_o\,
	datab => \habilita~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \C29|output~0_combout\);

-- Location: LCCOMB_X14_Y1_N10
\C28|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C28|output~0_combout\ = (\ABCD[3]~input_o\) # ((\ABCD[1]~input_o\) # (\ABCD[2]~input_o\ $ (!\ABCD[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[2]~input_o\,
	datab => \ABCD[3]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \C28|output~0_combout\);

-- Location: LCCOMB_X14_Y1_N4
\C28|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C28|output~1_combout\ = (\habilita~input_o\ & \C28|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datad => \C28|output~0_combout\,
	combout => \C28|output~1_combout\);

ww_abcdefg(0) <= \abcdefg[0]~output_o\;

ww_abcdefg(1) <= \abcdefg[1]~output_o\;

ww_abcdefg(2) <= \abcdefg[2]~output_o\;

ww_abcdefg(3) <= \abcdefg[3]~output_o\;

ww_abcdefg(4) <= \abcdefg[4]~output_o\;

ww_abcdefg(5) <= \abcdefg[5]~output_o\;

ww_abcdefg(6) <= \abcdefg[6]~output_o\;
END structure;


