-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "12/15/2021 12:17:44"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ham_encoder IS
    PORT (
	clk : IN std_logic;
	nRst : IN std_logic;
	m : IN std_logic;
	x : OUT std_logic;
	controlbits : OUT std_logic_vector(6 DOWNTO 0)
	);
END ham_encoder;

-- Design Ports Information
-- x	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlbits[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlbits[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlbits[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlbits[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlbits[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlbits[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlbits[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ham_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nRst : std_logic;
SIGNAL ww_m : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_controlbits : std_logic_vector(6 DOWNTO 0);
SIGNAL \nRst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CU|counter1|ffD1|nQ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CU|counter1|ffD2|nQ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x~output_o\ : std_logic;
SIGNAL \controlbits[0]~output_o\ : std_logic;
SIGNAL \controlbits[1]~output_o\ : std_logic;
SIGNAL \controlbits[2]~output_o\ : std_logic;
SIGNAL \controlbits[3]~output_o\ : std_logic;
SIGNAL \controlbits[4]~output_o\ : std_logic;
SIGNAL \controlbits[5]~output_o\ : std_logic;
SIGNAL \controlbits[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU|counter1|ffD1|nQ~0_combout\ : std_logic;
SIGNAL \nRst~input_o\ : std_logic;
SIGNAL \nRst~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU|counter1|ffD1|nQ~q\ : std_logic;
SIGNAL \CU|counter1|ffD1|nQ~clkctrl_outclk\ : std_logic;
SIGNAL \CU|counter1|ffD2|nQ~0_combout\ : std_logic;
SIGNAL \CU|counter1|ffD2|nQ~q\ : std_logic;
SIGNAL \CU|counter1|ffD2|nQ~clkctrl_outclk\ : std_logic;
SIGNAL \CU|counter1|ffD3|nQ~0_combout\ : std_logic;
SIGNAL \CU|counter1|ffD3|nQ~feeder_combout\ : std_logic;
SIGNAL \CU|counter1|ffD3|nQ~q\ : std_logic;
SIGNAL \CU|counter1|ffD4|Q~0_combout\ : std_logic;
SIGNAL \CU|counter1|ffD4|Q~q\ : std_logic;
SIGNAL \CU|counter1|ffD2|Q~0_combout\ : std_logic;
SIGNAL \CU|counter1|ffD2|Q~q\ : std_logic;
SIGNAL \CU|counter1|ffD1|Q~0_combout\ : std_logic;
SIGNAL \CU|counter1|ffD1|Q~q\ : std_logic;
SIGNAL \CU|counter1|ffD3|Q~0_combout\ : std_logic;
SIGNAL \CU|counter1|ffD3|Q~feeder_combout\ : std_logic;
SIGNAL \CU|counter1|ffD3|Q~q\ : std_logic;
SIGNAL \CU|rom1|Mux4~0_combout\ : std_logic;
SIGNAL \m~input_o\ : std_logic;
SIGNAL \ff1|ffD3|Q~q\ : std_logic;
SIGNAL \CU|rom1|Mux2~0_combout\ : std_logic;
SIGNAL \xor3|y~combout\ : std_logic;
SIGNAL \CU|rom1|Mux5~0_combout\ : std_logic;
SIGNAL \ff1|ffD2|Q~q\ : std_logic;
SIGNAL \CU|rom1|Mux1~0_combout\ : std_logic;
SIGNAL \xor2|y~combout\ : std_logic;
SIGNAL \CU|rom1|Mux6~0_combout\ : std_logic;
SIGNAL \ff1|ffD1|Q~q\ : std_logic;
SIGNAL \CU|rom1|Mux0~0_combout\ : std_logic;
SIGNAL \xor1|y~combout\ : std_logic;
SIGNAL \mux_1|mux_3|or1|y~0_combout\ : std_logic;
SIGNAL \ff1|ffD4|Q~q\ : std_logic;
SIGNAL \CU|rom1|Mux3~0_combout\ : std_logic;
SIGNAL \xor4|y~combout\ : std_logic;
SIGNAL \mux_1|mux_3|or1|y~1_combout\ : std_logic;
SIGNAL \mux_2|or1|y~0_combout\ : std_logic;
SIGNAL \ff2|Q~q\ : std_logic;
SIGNAL \CU|counter1|ffD2|ALT_INV_nQ~clkctrl_outclk\ : std_logic;
SIGNAL \CU|counter1|ffD1|ALT_INV_nQ~clkctrl_outclk\ : std_logic;
SIGNAL \CU|counter1|ffD3|ALT_INV_nQ~q\ : std_logic;
SIGNAL \CU|rom1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CU|rom1|ALT_INV_Mux1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_nRst <= nRst;
ww_m <= m;
x <= ww_x;
controlbits <= ww_controlbits;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nRst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nRst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\CU|counter1|ffD1|nQ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CU|counter1|ffD1|nQ~q\);

\CU|counter1|ffD2|nQ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CU|counter1|ffD2|nQ~q\);
\CU|counter1|ffD2|ALT_INV_nQ~clkctrl_outclk\ <= NOT \CU|counter1|ffD2|nQ~clkctrl_outclk\;
\CU|counter1|ffD1|ALT_INV_nQ~clkctrl_outclk\ <= NOT \CU|counter1|ffD1|nQ~clkctrl_outclk\;
\CU|counter1|ffD3|ALT_INV_nQ~q\ <= NOT \CU|counter1|ffD3|nQ~q\;
\CU|rom1|ALT_INV_Mux0~0_combout\ <= NOT \CU|rom1|Mux0~0_combout\;
\CU|rom1|ALT_INV_Mux1~0_combout\ <= NOT \CU|rom1|Mux1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X24_Y31_N2
\x~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff2|Q~q\,
	devoe => ww_devoe,
	o => \x~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\controlbits[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|rom1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \controlbits[0]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\controlbits[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|rom1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \controlbits[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\controlbits[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|rom1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \controlbits[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\controlbits[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|rom1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \controlbits[3]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\controlbits[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|rom1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \controlbits[4]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\controlbits[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|rom1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \controlbits[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\controlbits[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|rom1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \controlbits[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y27_N0
\CU|counter1|ffD1|nQ~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|counter1|ffD1|nQ~0_combout\ = !\CU|counter1|ffD1|nQ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|counter1|ffD1|nQ~q\,
	combout => \CU|counter1|ffD1|nQ~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\nRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRst,
	o => \nRst~input_o\);

-- Location: CLKCTRL_G19
\nRst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nRst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nRst~inputclkctrl_outclk\);

-- Location: FF_X20_Y27_N5
\CU|counter1|ffD1|nQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|counter1|ffD1|nQ~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|counter1|ffD1|nQ~q\);

-- Location: CLKCTRL_G14
\CU|counter1|ffD1|nQ~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CU|counter1|ffD1|nQ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CU|counter1|ffD1|nQ~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y27_N16
\CU|counter1|ffD2|nQ~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|counter1|ffD2|nQ~0_combout\ = !\CU|counter1|ffD2|nQ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|counter1|ffD2|nQ~q\,
	combout => \CU|counter1|ffD2|nQ~0_combout\);

-- Location: FF_X20_Y27_N15
\CU|counter1|ffD2|nQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CU|counter1|ffD1|ALT_INV_nQ~clkctrl_outclk\,
	asdata => \CU|counter1|ffD2|nQ~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|counter1|ffD2|nQ~q\);

-- Location: CLKCTRL_G13
\CU|counter1|ffD2|nQ~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CU|counter1|ffD2|nQ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CU|counter1|ffD2|nQ~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y27_N20
\CU|counter1|ffD3|nQ~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|counter1|ffD3|nQ~0_combout\ = !\CU|counter1|ffD3|nQ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|counter1|ffD3|nQ~q\,
	combout => \CU|counter1|ffD3|nQ~0_combout\);

-- Location: LCCOMB_X19_Y27_N4
\CU|counter1|ffD3|nQ~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|counter1|ffD3|nQ~feeder_combout\ = \CU|counter1|ffD3|nQ~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|counter1|ffD3|nQ~0_combout\,
	combout => \CU|counter1|ffD3|nQ~feeder_combout\);

-- Location: FF_X19_Y27_N5
\CU|counter1|ffD3|nQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CU|counter1|ffD2|ALT_INV_nQ~clkctrl_outclk\,
	d => \CU|counter1|ffD3|nQ~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|counter1|ffD3|nQ~q\);

-- Location: LCCOMB_X19_Y27_N26
\CU|counter1|ffD4|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|counter1|ffD4|Q~0_combout\ = !\CU|counter1|ffD4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|counter1|ffD4|Q~q\,
	combout => \CU|counter1|ffD4|Q~0_combout\);

-- Location: FF_X19_Y27_N27
\CU|counter1|ffD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CU|counter1|ffD3|ALT_INV_nQ~q\,
	d => \CU|counter1|ffD4|Q~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|counter1|ffD4|Q~q\);

-- Location: LCCOMB_X20_Y27_N4
\CU|counter1|ffD2|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|counter1|ffD2|Q~0_combout\ = !\CU|counter1|ffD2|nQ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|counter1|ffD2|nQ~q\,
	combout => \CU|counter1|ffD2|Q~0_combout\);

-- Location: FF_X20_Y27_N1
\CU|counter1|ffD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CU|counter1|ffD1|ALT_INV_nQ~clkctrl_outclk\,
	asdata => \CU|counter1|ffD2|Q~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|counter1|ffD2|Q~q\);

-- Location: LCCOMB_X20_Y27_N10
\CU|counter1|ffD1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|counter1|ffD1|Q~0_combout\ = !\CU|counter1|ffD1|nQ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|counter1|ffD1|nQ~q\,
	combout => \CU|counter1|ffD1|Q~0_combout\);

-- Location: FF_X20_Y27_N27
\CU|counter1|ffD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|counter1|ffD1|Q~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|counter1|ffD1|Q~q\);

-- Location: LCCOMB_X19_Y27_N16
\CU|counter1|ffD3|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|counter1|ffD3|Q~0_combout\ = !\CU|counter1|ffD3|nQ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|counter1|ffD3|nQ~q\,
	combout => \CU|counter1|ffD3|Q~0_combout\);

-- Location: LCCOMB_X19_Y27_N14
\CU|counter1|ffD3|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|counter1|ffD3|Q~feeder_combout\ = \CU|counter1|ffD3|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|counter1|ffD3|Q~0_combout\,
	combout => \CU|counter1|ffD3|Q~feeder_combout\);

-- Location: FF_X19_Y27_N15
\CU|counter1|ffD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CU|counter1|ffD2|ALT_INV_nQ~clkctrl_outclk\,
	d => \CU|counter1|ffD3|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|counter1|ffD3|Q~q\);

-- Location: LCCOMB_X20_Y27_N26
\CU|rom1|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|rom1|Mux4~0_combout\ = (\CU|counter1|ffD4|Q~q\ & (\CU|counter1|ffD3|Q~q\ $ (((\CU|counter1|ffD2|Q~q\ & \CU|counter1|ffD1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|counter1|ffD4|Q~q\,
	datab => \CU|counter1|ffD2|Q~q\,
	datac => \CU|counter1|ffD1|Q~q\,
	datad => \CU|counter1|ffD3|Q~q\,
	combout => \CU|rom1|Mux4~0_combout\);

-- Location: IOIBUF_X20_Y31_N1
\m~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m,
	o => \m~input_o\);

-- Location: FF_X20_Y27_N3
\ff1|ffD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \xor3|y~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|ffD3|Q~q\);

-- Location: LCCOMB_X20_Y27_N22
\CU|rom1|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|rom1|Mux2~0_combout\ = (\CU|counter1|ffD4|Q~q\ & (!\CU|counter1|ffD3|Q~q\ & ((!\CU|counter1|ffD2|Q~q\) # (!\CU|counter1|ffD1|Q~q\)))) # (!\CU|counter1|ffD4|Q~q\ & (\CU|counter1|ffD1|Q~q\ $ (((\CU|counter1|ffD2|Q~q\ & \CU|counter1|ffD3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|counter1|ffD1|Q~q\,
	datab => \CU|counter1|ffD2|Q~q\,
	datac => \CU|counter1|ffD4|Q~q\,
	datad => \CU|counter1|ffD3|Q~q\,
	combout => \CU|rom1|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y27_N24
\xor3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor3|y~combout\ = \ff1|ffD3|Q~q\ $ (((\m~input_o\ & \CU|rom1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datac => \ff1|ffD3|Q~q\,
	datad => \CU|rom1|Mux2~0_combout\,
	combout => \xor3|y~combout\);

-- Location: LCCOMB_X20_Y27_N12
\CU|rom1|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|rom1|Mux5~0_combout\ = (\CU|counter1|ffD4|Q~q\ & (\CU|counter1|ffD3|Q~q\ & (\CU|counter1|ffD1|Q~q\ $ (\CU|counter1|ffD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|counter1|ffD1|Q~q\,
	datab => \CU|counter1|ffD2|Q~q\,
	datac => \CU|counter1|ffD4|Q~q\,
	datad => \CU|counter1|ffD3|Q~q\,
	combout => \CU|rom1|Mux5~0_combout\);

-- Location: FF_X20_Y27_N9
\ff1|ffD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \xor2|y~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|ffD2|Q~q\);

-- Location: LCCOMB_X20_Y27_N18
\CU|rom1|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|rom1|Mux1~0_combout\ = (\CU|counter1|ffD3|Q~q\ & ((\CU|counter1|ffD4|Q~q\) # ((\CU|counter1|ffD1|Q~q\ & !\CU|counter1|ffD2|Q~q\)))) # (!\CU|counter1|ffD3|Q~q\ & (\CU|counter1|ffD1|Q~q\ $ (\CU|counter1|ffD2|Q~q\ $ (\CU|counter1|ffD4|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|counter1|ffD1|Q~q\,
	datab => \CU|counter1|ffD2|Q~q\,
	datac => \CU|counter1|ffD4|Q~q\,
	datad => \CU|counter1|ffD3|Q~q\,
	combout => \CU|rom1|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y27_N2
\xor2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor2|y~combout\ = \ff1|ffD2|Q~q\ $ (((\m~input_o\ & !\CU|rom1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datab => \ff1|ffD2|Q~q\,
	datad => \CU|rom1|Mux1~0_combout\,
	combout => \xor2|y~combout\);

-- Location: LCCOMB_X19_Y27_N6
\CU|rom1|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|rom1|Mux6~0_combout\ = (\CU|counter1|ffD4|Q~q\ & (\CU|counter1|ffD3|Q~q\ & !\CU|counter1|ffD1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|counter1|ffD4|Q~q\,
	datac => \CU|counter1|ffD3|Q~q\,
	datad => \CU|counter1|ffD1|Q~q\,
	combout => \CU|rom1|Mux6~0_combout\);

-- Location: FF_X20_Y27_N17
\ff1|ffD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \xor1|y~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|ffD1|Q~q\);

-- Location: LCCOMB_X20_Y27_N6
\CU|rom1|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|rom1|Mux0~0_combout\ = (\CU|counter1|ffD3|Q~q\ & (((\CU|counter1|ffD4|Q~q\) # (!\CU|counter1|ffD2|Q~q\)))) # (!\CU|counter1|ffD3|Q~q\ & (\CU|counter1|ffD1|Q~q\ & ((\CU|counter1|ffD2|Q~q\) # (\CU|counter1|ffD4|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|counter1|ffD1|Q~q\,
	datab => \CU|counter1|ffD2|Q~q\,
	datac => \CU|counter1|ffD4|Q~q\,
	datad => \CU|counter1|ffD3|Q~q\,
	combout => \CU|rom1|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y27_N8
\xor1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor1|y~combout\ = \ff1|ffD1|Q~q\ $ (((\m~input_o\ & !\CU|rom1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datab => \ff1|ffD1|Q~q\,
	datad => \CU|rom1|Mux0~0_combout\,
	combout => \xor1|y~combout\);

-- Location: LCCOMB_X20_Y27_N30
\mux_1|mux_3|or1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_1|mux_3|or1|y~0_combout\ = (\CU|rom1|Mux5~0_combout\ & (((\CU|rom1|Mux6~0_combout\)))) # (!\CU|rom1|Mux5~0_combout\ & ((\CU|rom1|Mux6~0_combout\ & (\xor2|y~combout\)) # (!\CU|rom1|Mux6~0_combout\ & ((\xor1|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|rom1|Mux5~0_combout\,
	datab => \xor2|y~combout\,
	datac => \CU|rom1|Mux6~0_combout\,
	datad => \xor1|y~combout\,
	combout => \mux_1|mux_3|or1|y~0_combout\);

-- Location: FF_X20_Y27_N11
\ff1|ffD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \xor4|y~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|ffD4|Q~q\);

-- Location: LCCOMB_X19_Y27_N24
\CU|rom1|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|rom1|Mux3~0_combout\ = (\CU|counter1|ffD4|Q~q\ & (!\CU|counter1|ffD3|Q~q\ & ((!\CU|counter1|ffD1|Q~q\) # (!\CU|counter1|ffD2|Q~q\)))) # (!\CU|counter1|ffD4|Q~q\ & (\CU|counter1|ffD3|Q~q\ $ (((\CU|counter1|ffD2|Q~q\ & !\CU|counter1|ffD1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|counter1|ffD4|Q~q\,
	datab => \CU|counter1|ffD3|Q~q\,
	datac => \CU|counter1|ffD2|Q~q\,
	datad => \CU|counter1|ffD1|Q~q\,
	combout => \CU|rom1|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y27_N28
\xor4|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4|y~combout\ = \ff1|ffD4|Q~q\ $ (((\m~input_o\ & \CU|rom1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~input_o\,
	datac => \ff1|ffD4|Q~q\,
	datad => \CU|rom1|Mux3~0_combout\,
	combout => \xor4|y~combout\);

-- Location: LCCOMB_X20_Y27_N28
\mux_1|mux_3|or1|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_1|mux_3|or1|y~1_combout\ = (\CU|rom1|Mux5~0_combout\ & ((\mux_1|mux_3|or1|y~0_combout\ & ((\xor4|y~combout\))) # (!\mux_1|mux_3|or1|y~0_combout\ & (\xor3|y~combout\)))) # (!\CU|rom1|Mux5~0_combout\ & (((\mux_1|mux_3|or1|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor3|y~combout\,
	datab => \CU|rom1|Mux5~0_combout\,
	datac => \mux_1|mux_3|or1|y~0_combout\,
	datad => \xor4|y~combout\,
	combout => \mux_1|mux_3|or1|y~1_combout\);

-- Location: LCCOMB_X20_Y27_N20
\mux_2|or1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_2|or1|y~0_combout\ = (\CU|rom1|Mux4~0_combout\ & ((\mux_1|mux_3|or1|y~1_combout\))) # (!\CU|rom1|Mux4~0_combout\ & (\m~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|rom1|Mux4~0_combout\,
	datac => \m~input_o\,
	datad => \mux_1|mux_3|or1|y~1_combout\,
	combout => \mux_2|or1|y~0_combout\);

-- Location: FF_X20_Y27_N21
\ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux_2|or1|y~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|Q~q\);

ww_x <= \x~output_o\;

ww_controlbits(0) <= \controlbits[0]~output_o\;

ww_controlbits(1) <= \controlbits[1]~output_o\;

ww_controlbits(2) <= \controlbits[2]~output_o\;

ww_controlbits(3) <= \controlbits[3]~output_o\;

ww_controlbits(4) <= \controlbits[4]~output_o\;

ww_controlbits(5) <= \controlbits[5]~output_o\;

ww_controlbits(6) <= \controlbits[6]~output_o\;
END structure;


