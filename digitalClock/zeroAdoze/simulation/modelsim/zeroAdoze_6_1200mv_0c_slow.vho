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

-- DATE "05/24/2017 09:08:31"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	zeroAdoze IS
    PORT (
	clock : IN std_logic;
	habilita : IN std_logic;
	abcdefgFor1 : OUT std_logic_vector(6 DOWNTO 0);
	abcdefgFor2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END zeroAdoze;

-- Design Ports Information
-- abcdefgFor1[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor1[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor1[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor1[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor1[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor1[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor1[6]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor2[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor2[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor2[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor2[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor2[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor2[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefgFor2[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF zeroAdoze IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_habilita : std_logic;
SIGNAL ww_abcdefgFor1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_abcdefgFor2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \mux|Mux6~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \abcdefgFor1[0]~output_o\ : std_logic;
SIGNAL \abcdefgFor1[1]~output_o\ : std_logic;
SIGNAL \abcdefgFor1[2]~output_o\ : std_logic;
SIGNAL \abcdefgFor1[3]~output_o\ : std_logic;
SIGNAL \abcdefgFor1[4]~output_o\ : std_logic;
SIGNAL \abcdefgFor1[5]~output_o\ : std_logic;
SIGNAL \abcdefgFor1[6]~output_o\ : std_logic;
SIGNAL \abcdefgFor2[0]~output_o\ : std_logic;
SIGNAL \abcdefgFor2[1]~output_o\ : std_logic;
SIGNAL \abcdefgFor2[2]~output_o\ : std_logic;
SIGNAL \abcdefgFor2[3]~output_o\ : std_logic;
SIGNAL \abcdefgFor2[4]~output_o\ : std_logic;
SIGNAL \abcdefgFor2[5]~output_o\ : std_logic;
SIGNAL \abcdefgFor2[6]~output_o\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \counter|UNIDADE1|XOR0~combout\ : std_logic;
SIGNAL \counter|UNIDADE4|XOR0~0_combout\ : std_logic;
SIGNAL \counter|UNIDADE2|XOR0~combout\ : std_logic;
SIGNAL \counter|UNIDADE4|XOR0~combout\ : std_logic;
SIGNAL \reseter|Equal0~0_combout\ : std_logic;
SIGNAL \counter|UNIDADE3|XOR0~combout\ : std_logic;
SIGNAL \mux|Mux4~0_combout\ : std_logic;
SIGNAL \mux|Mux6~0_combout\ : std_logic;
SIGNAL \mux|Mux6~0clkctrl_outclk\ : std_logic;
SIGNAL \display1|C33|output~combout\ : std_logic;
SIGNAL \mux|Mux2~0_combout\ : std_logic;
SIGNAL \display2|C31|output~0_combout\ : std_logic;
SIGNAL \mux|Mux1~0_combout\ : std_logic;
SIGNAL \mux|Mux3~0_combout\ : std_logic;
SIGNAL \display2|C34|output~0_combout\ : std_logic;
SIGNAL \display2|C34|output~1_combout\ : std_logic;
SIGNAL \display2|C31|output~1_combout\ : std_logic;
SIGNAL \display2|C33|output~0_combout\ : std_logic;
SIGNAL \display2|C32|output~0_combout\ : std_logic;
SIGNAL \display2|C31|output~2_combout\ : std_logic;
SIGNAL \display2|C31|output~3_combout\ : std_logic;
SIGNAL \display2|C30|output~0_combout\ : std_logic;
SIGNAL \display2|C29|output~0_combout\ : std_logic;
SIGNAL \display2|C28|output~0_combout\ : std_logic;
SIGNAL \display2|C28|output~1_combout\ : std_logic;
SIGNAL abcd : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux|wxyz1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux|wxyz2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reseter|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_habilita <= habilita;
abcdefgFor1 <= ww_abcdefgFor1;
abcdefgFor2 <= ww_abcdefgFor2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mux|Mux6~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mux|Mux6~0_combout\);
\reseter|ALT_INV_Equal0~0_combout\ <= NOT \reseter|Equal0~0_combout\;

-- Location: IOOBUF_X29_Y31_N2
\abcdefgFor1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \abcdefgFor1[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\abcdefgFor1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|C33|output~combout\,
	devoe => ww_devoe,
	o => \abcdefgFor1[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\abcdefgFor1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|C33|output~combout\,
	devoe => ww_devoe,
	o => \abcdefgFor1[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\abcdefgFor1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|C33|output~combout\,
	devoe => ww_devoe,
	o => \abcdefgFor1[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\abcdefgFor1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habilita~input_o\,
	devoe => ww_devoe,
	o => \abcdefgFor1[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\abcdefgFor1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habilita~input_o\,
	devoe => ww_devoe,
	o => \abcdefgFor1[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\abcdefgFor1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|C33|output~combout\,
	devoe => ww_devoe,
	o => \abcdefgFor1[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\abcdefgFor2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|C34|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefgFor2[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\abcdefgFor2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|C33|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefgFor2[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\abcdefgFor2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|C32|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefgFor2[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\abcdefgFor2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|C31|output~3_combout\,
	devoe => ww_devoe,
	o => \abcdefgFor2[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\abcdefgFor2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|C30|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefgFor2[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\abcdefgFor2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|C29|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefgFor2[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\abcdefgFor2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|C28|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefgFor2[6]~output_o\);

-- Location: IOIBUF_X31_Y0_N1
\habilita~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: LCCOMB_X20_Y1_N8
\counter|UNIDADE1|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|UNIDADE1|XOR0~combout\ = \habilita~input_o\ $ (abcd(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datad => abcd(0),
	combout => \counter|UNIDADE1|XOR0~combout\);

-- Location: LCCOMB_X20_Y1_N18
\counter|UNIDADE4|XOR0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|UNIDADE4|XOR0~0_combout\ = (!\habilita~input_o\) # (!abcd(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(0),
	datad => \habilita~input_o\,
	combout => \counter|UNIDADE4|XOR0~0_combout\);

-- Location: LCCOMB_X20_Y1_N20
\counter|UNIDADE2|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|UNIDADE2|XOR0~combout\ = abcd(1) $ (((abcd(0) & \habilita~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(0),
	datab => \habilita~input_o\,
	datad => abcd(1),
	combout => \counter|UNIDADE2|XOR0~combout\);

-- Location: FF_X20_Y1_N19
\abcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \counter|UNIDADE2|XOR0~combout\,
	clrn => \reseter|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => abcd(1));

-- Location: LCCOMB_X20_Y1_N6
\counter|UNIDADE4|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|UNIDADE4|XOR0~combout\ = abcd(3) $ (((!\counter|UNIDADE4|XOR0~0_combout\ & (abcd(2) & abcd(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|UNIDADE4|XOR0~0_combout\,
	datab => abcd(3),
	datac => abcd(2),
	datad => abcd(1),
	combout => \counter|UNIDADE4|XOR0~combout\);

-- Location: FF_X20_Y1_N25
\abcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \counter|UNIDADE4|XOR0~combout\,
	clrn => \reseter|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => abcd(3));

-- Location: LCCOMB_X20_Y1_N10
\reseter|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reseter|Equal0~0_combout\ = (abcd(0) & (abcd(3) & (abcd(2) & !abcd(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(0),
	datab => abcd(3),
	datac => abcd(2),
	datad => abcd(1),
	combout => \reseter|Equal0~0_combout\);

-- Location: FF_X20_Y1_N31
\abcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \counter|UNIDADE1|XOR0~combout\,
	clrn => \reseter|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => abcd(0));

-- Location: LCCOMB_X20_Y1_N2
\counter|UNIDADE3|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|UNIDADE3|XOR0~combout\ = abcd(2) $ (((abcd(0) & (\habilita~input_o\ & abcd(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(0),
	datab => \habilita~input_o\,
	datac => abcd(2),
	datad => abcd(1),
	combout => \counter|UNIDADE3|XOR0~combout\);

-- Location: FF_X20_Y1_N9
\abcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \counter|UNIDADE3|XOR0~combout\,
	clrn => \reseter|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => abcd(2));

-- Location: LCCOMB_X20_Y1_N24
\mux|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|Mux4~0_combout\ = (abcd(3) & (abcd(2) $ (abcd(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => abcd(2),
	datac => abcd(3),
	datad => abcd(1),
	combout => \mux|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y1_N16
\mux|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|Mux6~0_combout\ = (abcd(3) & (abcd(2) & ((abcd(0)) # (abcd(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(0),
	datab => abcd(3),
	datac => abcd(2),
	datad => abcd(1),
	combout => \mux|Mux6~0_combout\);

-- Location: CLKCTRL_G19
\mux|Mux6~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mux|Mux6~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mux|Mux6~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y1_N26
\mux|wxyz1[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|wxyz1\(0) = (GLOBAL(\mux|Mux6~0clkctrl_outclk\) & (\mux|wxyz1\(0))) # (!GLOBAL(\mux|Mux6~0clkctrl_outclk\) & ((\mux|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|wxyz1\(0),
	datac => \mux|Mux4~0_combout\,
	datad => \mux|Mux6~0clkctrl_outclk\,
	combout => \mux|wxyz1\(0));

-- Location: LCCOMB_X21_Y1_N24
\display1|C33|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display1|C33|output~combout\ = (\habilita~input_o\ & !\mux|wxyz1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datac => \mux|wxyz1\(0),
	combout => \display1|C33|output~combout\);

-- Location: LCCOMB_X20_Y1_N14
\mux|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|Mux2~0_combout\ = (abcd(2) & !abcd(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => abcd(2),
	datad => abcd(3),
	combout => \mux|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y1_N28
\mux|wxyz2[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|wxyz2\(2) = (GLOBAL(\mux|Mux6~0clkctrl_outclk\) & (\mux|wxyz2\(2))) # (!GLOBAL(\mux|Mux6~0clkctrl_outclk\) & ((\mux|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|wxyz2\(2),
	datac => \mux|Mux2~0_combout\,
	datad => \mux|Mux6~0clkctrl_outclk\,
	combout => \mux|wxyz2\(2));

-- Location: LCCOMB_X20_Y1_N12
\mux|wxyz2[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|wxyz2\(0) = (GLOBAL(\mux|Mux6~0clkctrl_outclk\) & (\mux|wxyz2\(0))) # (!GLOBAL(\mux|Mux6~0clkctrl_outclk\) & ((abcd(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|wxyz2\(0),
	datab => abcd(0),
	datad => \mux|Mux6~0clkctrl_outclk\,
	combout => \mux|wxyz2\(0));

-- Location: LCCOMB_X21_Y1_N18
\display2|C31|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C31|output~0_combout\ = (\mux|wxyz2\(2) & \mux|wxyz2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|wxyz2\(2),
	datad => \mux|wxyz2\(0),
	combout => \display2|C31|output~0_combout\);

-- Location: LCCOMB_X20_Y1_N22
\mux|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|Mux1~0_combout\ = (abcd(3) & (abcd(2) & !abcd(1))) # (!abcd(3) & ((abcd(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => abcd(3),
	datac => abcd(2),
	datad => abcd(1),
	combout => \mux|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y1_N0
\mux|wxyz2[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|wxyz2\(1) = (GLOBAL(\mux|Mux6~0clkctrl_outclk\) & (\mux|wxyz2\(1))) # (!GLOBAL(\mux|Mux6~0clkctrl_outclk\) & ((\mux|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|wxyz2\(1),
	datac => \mux|Mux1~0_combout\,
	datad => \mux|Mux6~0clkctrl_outclk\,
	combout => \mux|wxyz2\(1));

-- Location: LCCOMB_X20_Y1_N30
\mux|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|Mux3~0_combout\ = (!abcd(2) & (abcd(3) & !abcd(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(2),
	datab => abcd(3),
	datad => abcd(1),
	combout => \mux|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y1_N4
\mux|wxyz2[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|wxyz2\(3) = (GLOBAL(\mux|Mux6~0clkctrl_outclk\) & (\mux|wxyz2\(3))) # (!GLOBAL(\mux|Mux6~0clkctrl_outclk\) & ((\mux|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|wxyz2\(3),
	datac => \mux|Mux6~0clkctrl_outclk\,
	datad => \mux|Mux3~0_combout\,
	combout => \mux|wxyz2\(3));

-- Location: LCCOMB_X21_Y1_N16
\display2|C34|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C34|output~0_combout\ = (!\mux|wxyz2\(3) & ((\mux|wxyz2\(1)) # (!\mux|wxyz2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|wxyz2\(3),
	datac => \mux|wxyz2\(1),
	datad => \mux|wxyz2\(2),
	combout => \display2|C34|output~0_combout\);

-- Location: LCCOMB_X21_Y1_N26
\display2|C34|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C34|output~1_combout\ = (\habilita~input_o\ & (((!\display2|C31|output~0_combout\ & \mux|wxyz2\(1))) # (!\display2|C34|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display2|C31|output~0_combout\,
	datab => \mux|wxyz2\(1),
	datac => \habilita~input_o\,
	datad => \display2|C34|output~0_combout\,
	combout => \display2|C34|output~1_combout\);

-- Location: LCCOMB_X21_Y1_N20
\display2|C31|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C31|output~1_combout\ = (\mux|wxyz2\(1) & !\mux|wxyz2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|wxyz2\(1),
	datad => \mux|wxyz2\(2),
	combout => \display2|C31|output~1_combout\);

-- Location: LCCOMB_X21_Y1_N10
\display2|C33|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C33|output~0_combout\ = (\habilita~input_o\ & (((!\mux|wxyz2\(0) & !\display2|C31|output~1_combout\)) # (!\display2|C34|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|wxyz2\(0),
	datab => \display2|C34|output~0_combout\,
	datac => \habilita~input_o\,
	datad => \display2|C31|output~1_combout\,
	combout => \display2|C33|output~0_combout\);

-- Location: LCCOMB_X21_Y1_N4
\display2|C32|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C32|output~0_combout\ = (\habilita~input_o\ & (!\mux|wxyz2\(0) & ((\mux|wxyz2\(1)) # (!\mux|wxyz2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|wxyz2\(2),
	datab => \mux|wxyz2\(1),
	datac => \habilita~input_o\,
	datad => \mux|wxyz2\(0),
	combout => \display2|C32|output~0_combout\);

-- Location: LCCOMB_X21_Y1_N22
\display2|C31|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C31|output~2_combout\ = (\mux|wxyz2\(1) & ((!\mux|wxyz2\(2)))) # (!\mux|wxyz2\(1) & (\mux|wxyz2\(0) & \mux|wxyz2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|wxyz2\(0),
	datab => \mux|wxyz2\(1),
	datac => \mux|wxyz2\(2),
	combout => \display2|C31|output~2_combout\);

-- Location: LCCOMB_X21_Y1_N28
\display2|C31|output~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C31|output~3_combout\ = (\display2|C32|output~0_combout\) # ((\habilita~input_o\ & ((\mux|wxyz2\(3)) # (\display2|C31|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|wxyz2\(3),
	datab => \display2|C32|output~0_combout\,
	datac => \habilita~input_o\,
	datad => \display2|C31|output~2_combout\,
	combout => \display2|C31|output~3_combout\);

-- Location: LCCOMB_X21_Y1_N6
\display2|C30|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C30|output~0_combout\ = (\habilita~input_o\ & ((\mux|wxyz2\(2)) # ((\mux|wxyz2\(0)) # (!\mux|wxyz2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|wxyz2\(2),
	datab => \mux|wxyz2\(1),
	datac => \habilita~input_o\,
	datad => \mux|wxyz2\(0),
	combout => \display2|C30|output~0_combout\);

-- Location: LCCOMB_X21_Y1_N12
\display2|C29|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C29|output~0_combout\ = (\habilita~input_o\ & ((\mux|wxyz2\(1) $ (!\mux|wxyz2\(0))) # (!\mux|wxyz2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|wxyz2\(2),
	datab => \mux|wxyz2\(1),
	datac => \habilita~input_o\,
	datad => \mux|wxyz2\(0),
	combout => \display2|C29|output~0_combout\);

-- Location: LCCOMB_X21_Y1_N14
\display2|C28|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C28|output~0_combout\ = (\mux|wxyz2\(3)) # ((\mux|wxyz2\(1)) # (\mux|wxyz2\(2) $ (!\mux|wxyz2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|wxyz2\(3),
	datab => \mux|wxyz2\(1),
	datac => \mux|wxyz2\(2),
	datad => \mux|wxyz2\(0),
	combout => \display2|C28|output~0_combout\);

-- Location: LCCOMB_X22_Y1_N8
\display2|C28|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display2|C28|output~1_combout\ = (\display2|C28|output~0_combout\ & \habilita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display2|C28|output~0_combout\,
	datad => \habilita~input_o\,
	combout => \display2|C28|output~1_combout\);

ww_abcdefgFor1(0) <= \abcdefgFor1[0]~output_o\;

ww_abcdefgFor1(1) <= \abcdefgFor1[1]~output_o\;

ww_abcdefgFor1(2) <= \abcdefgFor1[2]~output_o\;

ww_abcdefgFor1(3) <= \abcdefgFor1[3]~output_o\;

ww_abcdefgFor1(4) <= \abcdefgFor1[4]~output_o\;

ww_abcdefgFor1(5) <= \abcdefgFor1[5]~output_o\;

ww_abcdefgFor1(6) <= \abcdefgFor1[6]~output_o\;

ww_abcdefgFor2(0) <= \abcdefgFor2[0]~output_o\;

ww_abcdefgFor2(1) <= \abcdefgFor2[1]~output_o\;

ww_abcdefgFor2(2) <= \abcdefgFor2[2]~output_o\;

ww_abcdefgFor2(3) <= \abcdefgFor2[3]~output_o\;

ww_abcdefgFor2(4) <= \abcdefgFor2[4]~output_o\;

ww_abcdefgFor2(5) <= \abcdefgFor2[5]~output_o\;

ww_abcdefgFor2(6) <= \abcdefgFor2[6]~output_o\;
END structure;


