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

-- DATE "04/12/2017 09:01:39"

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

ENTITY 	somador_8bits IS
    PORT (
	x : IN STD.STANDARD.bit_vector(7 DOWNTO 0);
	y : IN STD.STANDARD.bit_vector(7 DOWNTO 0);
	habilita : IN std_logic;
	S : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	cout : OUT STD.STANDARD.bit
	);
END somador_8bits;

-- Design Ports Information
-- S[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF somador_8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_habilita : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \C1|C1|c6|output~combout\ : std_logic;
SIGNAL \C1|C1|c7|output~0_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \C1|C2|c9|output~combout\ : std_logic;
SIGNAL \C1|C2|C13|output~0_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \C1|C3|c9|output~combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \C1|C3|C13|output~0_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \C1|C4|c9|output~combout\ : std_logic;
SIGNAL \C1|C4|C13|output~0_combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \C2|C1|c9|output~combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \C2|C1|C13|output~0_combout\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \C2|C2|c9|output~combout\ : std_logic;
SIGNAL \C2|C2|C13|output~0_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \C2|C3|c9|output~combout\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \C2|C3|C13|output~0_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \C2|C4|c9|output~combout\ : std_logic;
SIGNAL \C2|C4|C14|output~0_combout\ : std_logic;

BEGIN

ww_x <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(x);
ww_y <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(y);
ww_habilita <= habilita;
S <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_S);
cout <= IEEE.STD_LOGIC_1164.TO_BIT(ww_cout);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y12_N9
\S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|C1|c6|output~combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|C2|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|C3|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|C4|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\S[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\S[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C2|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\S[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C3|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\S[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C4|c9|output~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C4|C14|output~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X33_Y25_N1
\habilita~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\x[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LCCOMB_X32_Y15_N16
\C1|C1|c6|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C1|c6|output~combout\ = (\habilita~input_o\ & (\x[0]~input_o\ $ (\y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datab => \x[0]~input_o\,
	datac => \y[0]~input_o\,
	combout => \C1|C1|c6|output~combout\);

-- Location: LCCOMB_X32_Y15_N10
\C1|C1|c7|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C1|c7|output~0_combout\ = (\x[0]~input_o\ & \y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[0]~input_o\,
	datac => \y[0]~input_o\,
	combout => \C1|C1|c7|output~0_combout\);

-- Location: IOIBUF_X33_Y27_N8
\y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\x[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LCCOMB_X32_Y15_N4
\C1|C2|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C2|c9|output~combout\ = (\habilita~input_o\ & (\C1|C1|c7|output~0_combout\ $ (\y[1]~input_o\ $ (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|c7|output~0_combout\,
	datab => \y[1]~input_o\,
	datac => \x[1]~input_o\,
	datad => \habilita~input_o\,
	combout => \C1|C2|c9|output~combout\);

-- Location: LCCOMB_X32_Y15_N14
\C1|C2|C13|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C2|C13|output~0_combout\ = (\y[1]~input_o\ & ((\x[1]~input_o\) # ((\C1|C1|c7|output~0_combout\ & \habilita~input_o\)))) # (!\y[1]~input_o\ & (\C1|C1|c7|output~0_combout\ & (\x[1]~input_o\ & \habilita~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|c7|output~0_combout\,
	datab => \y[1]~input_o\,
	datac => \x[1]~input_o\,
	datad => \habilita~input_o\,
	combout => \C1|C2|C13|output~0_combout\);

-- Location: IOIBUF_X29_Y0_N8
\x[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X32_Y15_N8
\C1|C3|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C3|c9|output~combout\ = (\habilita~input_o\ & (\C1|C2|C13|output~0_combout\ $ (\x[2]~input_o\ $ (\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datab => \C1|C2|C13|output~0_combout\,
	datac => \x[2]~input_o\,
	datad => \y[2]~input_o\,
	combout => \C1|C3|c9|output~combout\);

-- Location: IOIBUF_X33_Y15_N8
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X32_Y15_N2
\C1|C3|C13|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C3|C13|output~0_combout\ = (\x[2]~input_o\ & ((\y[2]~input_o\) # ((\habilita~input_o\ & \C1|C2|C13|output~0_combout\)))) # (!\x[2]~input_o\ & (\habilita~input_o\ & (\C1|C2|C13|output~0_combout\ & \y[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datab => \C1|C2|C13|output~0_combout\,
	datac => \x[2]~input_o\,
	datad => \y[2]~input_o\,
	combout => \C1|C3|C13|output~0_combout\);

-- Location: IOIBUF_X33_Y14_N8
\x[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X32_Y15_N28
\C1|C4|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C4|c9|output~combout\ = (\habilita~input_o\ & (\y[3]~input_o\ $ (\C1|C3|C13|output~0_combout\ $ (\x[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \C1|C3|C13|output~0_combout\,
	datac => \x[3]~input_o\,
	datad => \habilita~input_o\,
	combout => \C1|C4|c9|output~combout\);

-- Location: LCCOMB_X32_Y15_N30
\C1|C4|C13|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C4|C13|output~0_combout\ = (\y[3]~input_o\ & ((\x[3]~input_o\) # ((\C1|C3|C13|output~0_combout\ & \habilita~input_o\)))) # (!\y[3]~input_o\ & (\C1|C3|C13|output~0_combout\ & (\x[3]~input_o\ & \habilita~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \C1|C3|C13|output~0_combout\,
	datac => \x[3]~input_o\,
	datad => \habilita~input_o\,
	combout => \C1|C4|C13|output~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\x[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: LCCOMB_X32_Y15_N0
\C2|C1|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|C1|c9|output~combout\ = (\habilita~input_o\ & (\C1|C4|C13|output~0_combout\ $ (\x[4]~input_o\ $ (\y[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|C13|output~0_combout\,
	datab => \x[4]~input_o\,
	datac => \y[4]~input_o\,
	datad => \habilita~input_o\,
	combout => \C2|C1|c9|output~combout\);

-- Location: IOIBUF_X16_Y31_N1
\x[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LCCOMB_X32_Y15_N18
\C2|C1|C13|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|C1|C13|output~0_combout\ = (\x[4]~input_o\ & ((\y[4]~input_o\) # ((\C1|C4|C13|output~0_combout\ & \habilita~input_o\)))) # (!\x[4]~input_o\ & (\C1|C4|C13|output~0_combout\ & (\y[4]~input_o\ & \habilita~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|C13|output~0_combout\,
	datab => \x[4]~input_o\,
	datac => \y[4]~input_o\,
	datad => \habilita~input_o\,
	combout => \C2|C1|C13|output~0_combout\);

-- Location: IOIBUF_X16_Y31_N8
\y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LCCOMB_X32_Y15_N12
\C2|C2|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|C2|c9|output~combout\ = (\habilita~input_o\ & (\x[5]~input_o\ $ (\C2|C1|C13|output~0_combout\ $ (\y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datab => \C2|C1|C13|output~0_combout\,
	datac => \y[5]~input_o\,
	datad => \habilita~input_o\,
	combout => \C2|C2|c9|output~combout\);

-- Location: LCCOMB_X32_Y15_N6
\C2|C2|C13|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|C2|C13|output~0_combout\ = (\x[5]~input_o\ & ((\y[5]~input_o\) # ((\C2|C1|C13|output~0_combout\ & \habilita~input_o\)))) # (!\x[5]~input_o\ & (\C2|C1|C13|output~0_combout\ & (\y[5]~input_o\ & \habilita~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datab => \C2|C1|C13|output~0_combout\,
	datac => \y[5]~input_o\,
	datad => \habilita~input_o\,
	combout => \C2|C2|C13|output~0_combout\);

-- Location: IOIBUF_X33_Y15_N1
\x[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: LCCOMB_X32_Y15_N24
\C2|C3|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|C3|c9|output~combout\ = (\habilita~input_o\ & (\C2|C2|C13|output~0_combout\ $ (\x[6]~input_o\ $ (\y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|C13|output~0_combout\,
	datab => \x[6]~input_o\,
	datac => \y[6]~input_o\,
	datad => \habilita~input_o\,
	combout => \C2|C3|c9|output~combout\);

-- Location: IOIBUF_X33_Y10_N8
\y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: LCCOMB_X32_Y15_N26
\C2|C3|C13|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|C3|C13|output~0_combout\ = (\x[6]~input_o\ & ((\y[6]~input_o\) # ((\C2|C2|C13|output~0_combout\ & \habilita~input_o\)))) # (!\x[6]~input_o\ & (\C2|C2|C13|output~0_combout\ & (\y[6]~input_o\ & \habilita~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|C13|output~0_combout\,
	datab => \x[6]~input_o\,
	datac => \y[6]~input_o\,
	datad => \habilita~input_o\,
	combout => \C2|C3|C13|output~0_combout\);

-- Location: IOIBUF_X33_Y27_N1
\x[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: LCCOMB_X32_Y15_N20
\C2|C4|c9|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|C4|c9|output~combout\ = (\habilita~input_o\ & (\y[7]~input_o\ $ (\C2|C3|C13|output~0_combout\ $ (\x[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datab => \y[7]~input_o\,
	datac => \C2|C3|C13|output~0_combout\,
	datad => \x[7]~input_o\,
	combout => \C2|C4|c9|output~combout\);

-- Location: LCCOMB_X32_Y15_N22
\C2|C4|C14|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C2|C4|C14|output~0_combout\ = (\habilita~input_o\ & ((\y[7]~input_o\ & ((\C2|C3|C13|output~0_combout\) # (\x[7]~input_o\))) # (!\y[7]~input_o\ & (\C2|C3|C13|output~0_combout\ & \x[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datab => \y[7]~input_o\,
	datac => \C2|C3|C13|output~0_combout\,
	datad => \x[7]~input_o\,
	combout => \C2|C4|C14|output~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_cout <= \cout~output_o\;
END structure;


