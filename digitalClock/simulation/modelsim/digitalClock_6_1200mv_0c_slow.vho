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

-- DATE "05/12/2017 08:39:04"

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

ENTITY 	digitalClock IS
    PORT (
	clock : IN std_logic;
	habilita : IN std_logic;
	MinutosUni : OUT std_logic_vector(6 DOWNTO 0);
	MinutosDez : OUT std_logic_vector(6 DOWNTO 0);
	HorasUni : OUT std_logic_vector(6 DOWNTO 0);
	HorasDez : OUT std_logic_vector(6 DOWNTO 0)
	);
END digitalClock;

-- Design Ports Information
-- MinutosUni[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosUni[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosUni[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosUni[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosUni[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosUni[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosUni[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosDez[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosDez[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosDez[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosDez[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosDez[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosDez[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinutosDez[6]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasUni[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasUni[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasUni[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasUni[3]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasUni[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasUni[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasUni[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasDez[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasDez[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasDez[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasDez[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasDez[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasDez[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HorasDez[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF digitalClock IS
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
SIGNAL ww_MinutosUni : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MinutosDez : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HorasUni : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HorasDez : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MinutosUni[0]~output_o\ : std_logic;
SIGNAL \MinutosUni[1]~output_o\ : std_logic;
SIGNAL \MinutosUni[2]~output_o\ : std_logic;
SIGNAL \MinutosUni[3]~output_o\ : std_logic;
SIGNAL \MinutosUni[4]~output_o\ : std_logic;
SIGNAL \MinutosUni[5]~output_o\ : std_logic;
SIGNAL \MinutosUni[6]~output_o\ : std_logic;
SIGNAL \MinutosDez[0]~output_o\ : std_logic;
SIGNAL \MinutosDez[1]~output_o\ : std_logic;
SIGNAL \MinutosDez[2]~output_o\ : std_logic;
SIGNAL \MinutosDez[3]~output_o\ : std_logic;
SIGNAL \MinutosDez[4]~output_o\ : std_logic;
SIGNAL \MinutosDez[5]~output_o\ : std_logic;
SIGNAL \MinutosDez[6]~output_o\ : std_logic;
SIGNAL \HorasUni[0]~output_o\ : std_logic;
SIGNAL \HorasUni[1]~output_o\ : std_logic;
SIGNAL \HorasUni[2]~output_o\ : std_logic;
SIGNAL \HorasUni[3]~output_o\ : std_logic;
SIGNAL \HorasUni[4]~output_o\ : std_logic;
SIGNAL \HorasUni[5]~output_o\ : std_logic;
SIGNAL \HorasUni[6]~output_o\ : std_logic;
SIGNAL \HorasDez[0]~output_o\ : std_logic;
SIGNAL \HorasDez[1]~output_o\ : std_logic;
SIGNAL \HorasDez[2]~output_o\ : std_logic;
SIGNAL \HorasDez[3]~output_o\ : std_logic;
SIGNAL \HorasDez[4]~output_o\ : std_logic;
SIGNAL \HorasDez[5]~output_o\ : std_logic;
SIGNAL \HorasDez[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \UnidadeMinutos|counter|UNIDADE1|XOR0~combout\ : std_logic;
SIGNAL \UnidadeMinutos|counter|UNIDADE3|XOR0~combout\ : std_logic;
SIGNAL \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\ : std_logic;
SIGNAL \UnidadeMinutos|counter|UNIDADE3|Cout~combout\ : std_logic;
SIGNAL \UnidadeMinutos|counter|UNIDADE4|XOR0~combout\ : std_logic;
SIGNAL \UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\ : std_logic;
SIGNAL \UnidadeMinutos|reseter|Equal0~0_combout\ : std_logic;
SIGNAL \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\ : std_logic;
SIGNAL \UnidadeMinutos|counter|UNIDADE2|XOR0~combout\ : std_logic;
SIGNAL \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ : std_logic;
SIGNAL \UnidadeMinutos|display|C34|output~0_combout\ : std_logic;
SIGNAL \UnidadeMinutos|display|C34|output~1_combout\ : std_logic;
SIGNAL \UnidadeMinutos|display|C33|output~0_combout\ : std_logic;
SIGNAL \UnidadeMinutos|display|C33|output~1_combout\ : std_logic;
SIGNAL \UnidadeMinutos|display|C32|output~0_combout\ : std_logic;
SIGNAL \UnidadeMinutos|display|C31|output~0_combout\ : std_logic;
SIGNAL \UnidadeMinutos|display|C31|output~1_combout\ : std_logic;
SIGNAL \UnidadeMinutos|display|C30|output~0_combout\ : std_logic;
SIGNAL \UnidadeMinutos|display|C29|output~0_combout\ : std_logic;
SIGNAL \UnidadeMinutos|display|C28|output~0_combout\ : std_logic;
SIGNAL \UnidadeMinutos|display|C28|output~1_combout\ : std_logic;
SIGNAL \UnidadeMinutos|reseter|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_habilita <= habilita;
MinutosUni <= ww_MinutosUni;
MinutosDez <= ww_MinutosDez;
HorasUni <= ww_HorasUni;
HorasDez <= ww_HorasDez;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\UnidadeMinutos|reseter|ALT_INV_Equal0~0_combout\ <= NOT \UnidadeMinutos|reseter|Equal0~0_combout\;

-- Location: IOOBUF_X33_Y10_N2
\MinutosUni[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UnidadeMinutos|display|C34|output~1_combout\,
	devoe => ww_devoe,
	o => \MinutosUni[0]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\MinutosUni[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UnidadeMinutos|display|C33|output~1_combout\,
	devoe => ww_devoe,
	o => \MinutosUni[1]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\MinutosUni[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UnidadeMinutos|display|C32|output~0_combout\,
	devoe => ww_devoe,
	o => \MinutosUni[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\MinutosUni[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UnidadeMinutos|display|C31|output~1_combout\,
	devoe => ww_devoe,
	o => \MinutosUni[3]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\MinutosUni[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UnidadeMinutos|display|C30|output~0_combout\,
	devoe => ww_devoe,
	o => \MinutosUni[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\MinutosUni[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UnidadeMinutos|display|C29|output~0_combout\,
	devoe => ww_devoe,
	o => \MinutosUni[5]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\MinutosUni[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UnidadeMinutos|display|C28|output~1_combout\,
	devoe => ww_devoe,
	o => \MinutosUni[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\MinutosDez[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MinutosDez[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\MinutosDez[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MinutosDez[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\MinutosDez[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MinutosDez[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\MinutosDez[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MinutosDez[3]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\MinutosDez[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MinutosDez[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\MinutosDez[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MinutosDez[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\MinutosDez[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MinutosDez[6]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\HorasUni[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasUni[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\HorasUni[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasUni[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\HorasUni[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasUni[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\HorasUni[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasUni[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\HorasUni[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasUni[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\HorasUni[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasUni[5]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\HorasUni[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasUni[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\HorasDez[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasDez[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\HorasDez[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasDez[1]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\HorasDez[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasDez[2]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\HorasDez[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasDez[3]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\HorasDez[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasDez[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\HorasDez[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasDez[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\HorasDez[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HorasDez[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y11_N1
\habilita~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: LCCOMB_X32_Y10_N6
\UnidadeMinutos|counter|UNIDADE1|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|counter|UNIDADE1|XOR0~combout\ = \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\ $ (\habilita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	datad => \habilita~input_o\,
	combout => \UnidadeMinutos|counter|UNIDADE1|XOR0~combout\);

-- Location: LCCOMB_X32_Y10_N8
\UnidadeMinutos|counter|UNIDADE3|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|counter|UNIDADE3|XOR0~combout\ = \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\ $ (((\habilita~input_o\ & (\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ & \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datab => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	datac => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \UnidadeMinutos|counter|UNIDADE3|XOR0~combout\);

-- Location: FF_X32_Y10_N9
\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \UnidadeMinutos|counter|UNIDADE3|XOR0~combout\,
	clrn => \UnidadeMinutos|reseter|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\);

-- Location: LCCOMB_X32_Y10_N28
\UnidadeMinutos|counter|UNIDADE3|Cout\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|counter|UNIDADE3|Cout~combout\ = (\habilita~input_o\ & (\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ & (\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\ & \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datab => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	datac => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \UnidadeMinutos|counter|UNIDADE3|Cout~combout\);

-- Location: LCCOMB_X32_Y10_N4
\UnidadeMinutos|counter|UNIDADE4|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|counter|UNIDADE4|XOR0~combout\ = \UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\ $ (\UnidadeMinutos|counter|UNIDADE3|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\,
	datad => \UnidadeMinutos|counter|UNIDADE3|Cout~combout\,
	combout => \UnidadeMinutos|counter|UNIDADE4|XOR0~combout\);

-- Location: FF_X32_Y10_N5
\UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \UnidadeMinutos|counter|UNIDADE4|XOR0~combout\,
	clrn => \UnidadeMinutos|reseter|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\);

-- Location: LCCOMB_X32_Y10_N14
\UnidadeMinutos|reseter|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|reseter|Equal0~0_combout\ = (!\UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\ & (!\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\ & (\UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\ & \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	datab => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\,
	datac => \UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\,
	datad => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	combout => \UnidadeMinutos|reseter|Equal0~0_combout\);

-- Location: FF_X32_Y10_N7
\UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \UnidadeMinutos|counter|UNIDADE1|XOR0~combout\,
	clrn => \UnidadeMinutos|reseter|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\);

-- Location: LCCOMB_X32_Y10_N2
\UnidadeMinutos|counter|UNIDADE2|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|counter|UNIDADE2|XOR0~combout\ = \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ $ (((\habilita~input_o\ & \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datac => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	datad => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \UnidadeMinutos|counter|UNIDADE2|XOR0~combout\);

-- Location: FF_X32_Y10_N3
\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \UnidadeMinutos|counter|UNIDADE2|XOR0~combout\,
	clrn => \UnidadeMinutos|reseter|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\);

-- Location: LCCOMB_X32_Y10_N20
\UnidadeMinutos|display|C34|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C34|output~0_combout\ = (\UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\) # ((\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ & ((!\UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\) # 
-- (!\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\))) # (!\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ & (\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\,
	datac => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \UnidadeMinutos|display|C34|output~0_combout\);

-- Location: LCCOMB_X32_Y10_N22
\UnidadeMinutos|display|C34|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C34|output~1_combout\ = (\UnidadeMinutos|display|C34|output~0_combout\ & \habilita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadeMinutos|display|C34|output~0_combout\,
	datad => \habilita~input_o\,
	combout => \UnidadeMinutos|display|C34|output~1_combout\);

-- Location: LCCOMB_X32_Y10_N24
\UnidadeMinutos|display|C33|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C33|output~0_combout\ = (\UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\) # ((\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ & (\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\ & !\UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\)) # 
-- (!\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ & ((\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\) # (!\UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\,
	datac => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \UnidadeMinutos|display|C33|output~0_combout\);

-- Location: LCCOMB_X32_Y10_N10
\UnidadeMinutos|display|C33|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C33|output~1_combout\ = (\UnidadeMinutos|display|C33|output~0_combout\ & \habilita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UnidadeMinutos|display|C33|output~0_combout\,
	datad => \habilita~input_o\,
	combout => \UnidadeMinutos|display|C33|output~1_combout\);

-- Location: LCCOMB_X32_Y10_N12
\UnidadeMinutos|display|C32|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C32|output~0_combout\ = (!\UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\ & (\habilita~input_o\ & ((\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\) # (!\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	datac => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \habilita~input_o\,
	combout => \UnidadeMinutos|display|C32|output~0_combout\);

-- Location: LCCOMB_X32_Y10_N30
\UnidadeMinutos|display|C31|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C31|output~0_combout\ = (\habilita~input_o\ & ((\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ & (!\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\)) # (!\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ & 
-- (\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\ & \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \habilita~input_o\,
	datac => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \UnidadeMinutos|display|C31|output~0_combout\);

-- Location: LCCOMB_X32_Y10_N0
\UnidadeMinutos|display|C31|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C31|output~1_combout\ = (\UnidadeMinutos|display|C31|output~0_combout\) # ((\UnidadeMinutos|display|C32|output~0_combout\) # ((\UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\ & \habilita~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeMinutos|display|C31|output~0_combout\,
	datab => \UnidadeMinutos|display|C32|output~0_combout\,
	datac => \UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\,
	datad => \habilita~input_o\,
	combout => \UnidadeMinutos|display|C31|output~1_combout\);

-- Location: LCCOMB_X32_Y10_N18
\UnidadeMinutos|display|C30|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C30|output~0_combout\ = (\habilita~input_o\ & (((\UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\) # (\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\)) # (!\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	datac => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \habilita~input_o\,
	combout => \UnidadeMinutos|display|C30|output~0_combout\);

-- Location: LCCOMB_X32_Y10_N16
\UnidadeMinutos|display|C29|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C29|output~0_combout\ = (\habilita~input_o\ & ((\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\ $ (!\UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\)) # (!\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	datac => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \habilita~input_o\,
	combout => \UnidadeMinutos|display|C29|output~0_combout\);

-- Location: LCCOMB_X32_Y10_N26
\UnidadeMinutos|display|C28|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C28|output~0_combout\ = (\UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\) # ((\UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\) # (\UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\ $ 
-- (!\UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeMinutos|counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \UnidadeMinutos|counter|UNIDADE4|FFD1|Q~reg0_q\,
	datac => \UnidadeMinutos|counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \UnidadeMinutos|counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \UnidadeMinutos|display|C28|output~0_combout\);

-- Location: LCCOMB_X32_Y11_N20
\UnidadeMinutos|display|C28|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UnidadeMinutos|display|C28|output~1_combout\ = (\UnidadeMinutos|display|C28|output~0_combout\ & \habilita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UnidadeMinutos|display|C28|output~0_combout\,
	datad => \habilita~input_o\,
	combout => \UnidadeMinutos|display|C28|output~1_combout\);

ww_MinutosUni(0) <= \MinutosUni[0]~output_o\;

ww_MinutosUni(1) <= \MinutosUni[1]~output_o\;

ww_MinutosUni(2) <= \MinutosUni[2]~output_o\;

ww_MinutosUni(3) <= \MinutosUni[3]~output_o\;

ww_MinutosUni(4) <= \MinutosUni[4]~output_o\;

ww_MinutosUni(5) <= \MinutosUni[5]~output_o\;

ww_MinutosUni(6) <= \MinutosUni[6]~output_o\;

ww_MinutosDez(0) <= \MinutosDez[0]~output_o\;

ww_MinutosDez(1) <= \MinutosDez[1]~output_o\;

ww_MinutosDez(2) <= \MinutosDez[2]~output_o\;

ww_MinutosDez(3) <= \MinutosDez[3]~output_o\;

ww_MinutosDez(4) <= \MinutosDez[4]~output_o\;

ww_MinutosDez(5) <= \MinutosDez[5]~output_o\;

ww_MinutosDez(6) <= \MinutosDez[6]~output_o\;

ww_HorasUni(0) <= \HorasUni[0]~output_o\;

ww_HorasUni(1) <= \HorasUni[1]~output_o\;

ww_HorasUni(2) <= \HorasUni[2]~output_o\;

ww_HorasUni(3) <= \HorasUni[3]~output_o\;

ww_HorasUni(4) <= \HorasUni[4]~output_o\;

ww_HorasUni(5) <= \HorasUni[5]~output_o\;

ww_HorasUni(6) <= \HorasUni[6]~output_o\;

ww_HorasDez(0) <= \HorasDez[0]~output_o\;

ww_HorasDez(1) <= \HorasDez[1]~output_o\;

ww_HorasDez(2) <= \HorasDez[2]~output_o\;

ww_HorasDez(3) <= \HorasDez[3]~output_o\;

ww_HorasDez(4) <= \HorasDez[4]~output_o\;

ww_HorasDez(5) <= \HorasDez[5]~output_o\;

ww_HorasDez(6) <= \HorasDez[6]~output_o\;
END structure;


