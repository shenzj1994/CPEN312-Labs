-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "01/26/2016 10:41:47"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LatchExample IS
    PORT (
	LED_OF : OUT std_logic;
	SW9 : IN std_logic;
	KEY1 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	KEY0 : IN std_logic;
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END LatchExample;

-- Design Ports Information
-- LED_OF	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW9	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY0	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY1	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF LatchExample IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED_OF : std_logic;
SIGNAL ww_SW9 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW9~input_o\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \KEY0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \U03|20~q\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \KEY1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \U02|20~q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \U03|19~q\ : std_logic;
SIGNAL \U02|19~q\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \U03|18~q\ : std_logic;
SIGNAL \U02|18~q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \U02|17~q\ : std_logic;
SIGNAL \U03|17~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \U02|16~q\ : std_logic;
SIGNAL \U03|16~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \U03|15~q\ : std_logic;
SIGNAL \U02|15~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \U02|14~q\ : std_logic;
SIGNAL \U03|14~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \U02|13~q\ : std_logic;
SIGNAL \U03|13~q\ : std_logic;
SIGNAL \inst13|Add0~38_cout\ : std_logic;
SIGNAL \inst13|Add0~34\ : std_logic;
SIGNAL \inst13|Add0~30\ : std_logic;
SIGNAL \inst13|Add0~26\ : std_logic;
SIGNAL \inst13|Add0~22\ : std_logic;
SIGNAL \inst13|Add0~18\ : std_logic;
SIGNAL \inst13|Add0~14\ : std_logic;
SIGNAL \inst13|Add0~10\ : std_logic;
SIGNAL \inst13|Add0~6\ : std_logic;
SIGNAL \inst13|Add0~1_sumout\ : std_logic;
SIGNAL \U09|Mux0~0_combout\ : std_logic;
SIGNAL \U09|Mux1~0_combout\ : std_logic;
SIGNAL \U09|Mux2~0_combout\ : std_logic;
SIGNAL \U09|Mux3~0_combout\ : std_logic;
SIGNAL \U09|Mux4~0_combout\ : std_logic;
SIGNAL \U09|Mux5~0_combout\ : std_logic;
SIGNAL \U09|Mux6~0_combout\ : std_logic;
SIGNAL \U08|Mux0~0_combout\ : std_logic;
SIGNAL \U08|Mux1~0_combout\ : std_logic;
SIGNAL \U08|Mux2~0_combout\ : std_logic;
SIGNAL \U08|Mux3~0_combout\ : std_logic;
SIGNAL \U08|Mux4~0_combout\ : std_logic;
SIGNAL \U08|Mux5~0_combout\ : std_logic;
SIGNAL \U08|Mux6~0_combout\ : std_logic;
SIGNAL \U07|Mux0~0_combout\ : std_logic;
SIGNAL \U07|Mux1~0_combout\ : std_logic;
SIGNAL \U07|Mux2~0_combout\ : std_logic;
SIGNAL \U07|Mux3~0_combout\ : std_logic;
SIGNAL \U07|Mux4~0_combout\ : std_logic;
SIGNAL \U07|Mux5~0_combout\ : std_logic;
SIGNAL \U07|Mux6~0_combout\ : std_logic;
SIGNAL \U06|Mux0~0_combout\ : std_logic;
SIGNAL \U06|Mux1~0_combout\ : std_logic;
SIGNAL \U06|Mux2~0_combout\ : std_logic;
SIGNAL \U06|Mux3~0_combout\ : std_logic;
SIGNAL \U06|Mux4~0_combout\ : std_logic;
SIGNAL \U06|Mux5~0_combout\ : std_logic;
SIGNAL \U06|Mux6~0_combout\ : std_logic;
SIGNAL \inst13|Add0~5_sumout\ : std_logic;
SIGNAL \inst13|Add0~9_sumout\ : std_logic;
SIGNAL \inst13|Add0~13_sumout\ : std_logic;
SIGNAL \inst13|Add0~17_sumout\ : std_logic;
SIGNAL \inst13|Add0~21_sumout\ : std_logic;
SIGNAL \inst13|Add0~25_sumout\ : std_logic;
SIGNAL \inst13|Add0~29_sumout\ : std_logic;
SIGNAL \inst13|Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_SW9~input_o\ : std_logic;
SIGNAL \U06|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U02|ALT_INV_20~q\ : std_logic;
SIGNAL \U02|ALT_INV_19~q\ : std_logic;
SIGNAL \U02|ALT_INV_18~q\ : std_logic;
SIGNAL \U02|ALT_INV_17~q\ : std_logic;
SIGNAL \U07|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U02|ALT_INV_16~q\ : std_logic;
SIGNAL \U02|ALT_INV_15~q\ : std_logic;
SIGNAL \U02|ALT_INV_14~q\ : std_logic;
SIGNAL \U02|ALT_INV_13~q\ : std_logic;
SIGNAL \U08|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U03|ALT_INV_20~q\ : std_logic;
SIGNAL \U03|ALT_INV_19~q\ : std_logic;
SIGNAL \U03|ALT_INV_18~q\ : std_logic;
SIGNAL \U03|ALT_INV_17~q\ : std_logic;
SIGNAL \U09|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U03|ALT_INV_16~q\ : std_logic;
SIGNAL \U03|ALT_INV_15~q\ : std_logic;
SIGNAL \U03|ALT_INV_14~q\ : std_logic;
SIGNAL \U03|ALT_INV_13~q\ : std_logic;

BEGIN

LED_OF <= ww_LED_OF;
ww_SW9 <= SW9;
ww_KEY1 <= KEY1;
ww_SW <= SW;
ww_KEY0 <= KEY0;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW9~input_o\ <= NOT \SW9~input_o\;
\U06|ALT_INV_Mux6~0_combout\ <= NOT \U06|Mux6~0_combout\;
\U02|ALT_INV_20~q\ <= NOT \U02|20~q\;
\U02|ALT_INV_19~q\ <= NOT \U02|19~q\;
\U02|ALT_INV_18~q\ <= NOT \U02|18~q\;
\U02|ALT_INV_17~q\ <= NOT \U02|17~q\;
\U07|ALT_INV_Mux6~0_combout\ <= NOT \U07|Mux6~0_combout\;
\U02|ALT_INV_16~q\ <= NOT \U02|16~q\;
\U02|ALT_INV_15~q\ <= NOT \U02|15~q\;
\U02|ALT_INV_14~q\ <= NOT \U02|14~q\;
\U02|ALT_INV_13~q\ <= NOT \U02|13~q\;
\U08|ALT_INV_Mux6~0_combout\ <= NOT \U08|Mux6~0_combout\;
\U03|ALT_INV_20~q\ <= NOT \U03|20~q\;
\U03|ALT_INV_19~q\ <= NOT \U03|19~q\;
\U03|ALT_INV_18~q\ <= NOT \U03|18~q\;
\U03|ALT_INV_17~q\ <= NOT \U03|17~q\;
\U09|ALT_INV_Mux6~0_combout\ <= NOT \U09|Mux6~0_combout\;
\U03|ALT_INV_16~q\ <= NOT \U03|16~q\;
\U03|ALT_INV_15~q\ <= NOT \U03|15~q\;
\U03|ALT_INV_14~q\ <= NOT \U03|14~q\;
\U03|ALT_INV_13~q\ <= NOT \U03|13~q\;

-- Location: IOOBUF_X0_Y20_N39
\LED_OF~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_LED_OF);

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X0_Y19_N22
\LED[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_LED(7));

-- Location: IOOBUF_X0_Y19_N5
\LED[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_LED(6));

-- Location: IOOBUF_X0_Y19_N56
\LED[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_LED(5));

-- Location: IOOBUF_X0_Y19_N39
\LED[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_LED(4));

-- Location: IOOBUF_X0_Y18_N45
\LED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_LED(3));

-- Location: IOOBUF_X0_Y18_N62
\LED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_LED(2));

-- Location: IOOBUF_X0_Y18_N96
\LED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_LED(1));

-- Location: IOOBUF_X0_Y18_N79
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_LED(0));

-- Location: IOIBUF_X33_Y0_N75
\SW9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW9,
	o => \SW9~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: CLKCTRL_G4
\KEY0~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY0~input_o\,
	outclk => \KEY0~inputCLKENA0_outclk\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X39_Y1_N2
\U03|20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|20~q\);

-- Location: IOIBUF_X11_Y0_N35
\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: CLKCTRL_G6
\KEY1~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY1~input_o\,
	outclk => \KEY1~inputCLKENA0_outclk\);

-- Location: FF_X39_Y1_N26
\U02|20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|20~q\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X39_Y1_N11
\U03|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|19~q\);

-- Location: FF_X39_Y1_N23
\U02|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|19~q\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X39_Y1_N8
\U03|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|18~q\);

-- Location: FF_X39_Y1_N29
\U02|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|18~q\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X39_Y1_N20
\U02|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|17~q\);

-- Location: FF_X39_Y1_N5
\U03|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|17~q\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X34_Y4_N26
\U02|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|16~q\);

-- Location: FF_X34_Y4_N5
\U03|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|16~q\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X34_Y4_N47
\U03|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|15~q\);

-- Location: FF_X34_Y4_N23
\U02|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|15~q\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X34_Y4_N20
\U02|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|14~q\);

-- Location: FF_X34_Y4_N2
\U03|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|14~q\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X34_Y4_N17
\U02|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|13~q\);

-- Location: FF_X34_Y4_N50
\U03|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|13~q\);

-- Location: MLABCELL_X34_Y4_N30
\inst13|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Add0~38_cout\ = CARRY(( !\SW9~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	cin => GND,
	cout => \inst13|Add0~38_cout\);

-- Location: MLABCELL_X34_Y4_N33
\inst13|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Add0~33_sumout\ = SUM(( \U02|13~q\ ) + ( !\SW9~input_o\ $ (\U03|13~q\) ) + ( \inst13|Add0~38_cout\ ))
-- \inst13|Add0~34\ = CARRY(( \U02|13~q\ ) + ( !\SW9~input_o\ $ (\U03|13~q\) ) + ( \inst13|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datac => \U02|ALT_INV_13~q\,
	dataf => \U03|ALT_INV_13~q\,
	cin => \inst13|Add0~38_cout\,
	sumout => \inst13|Add0~33_sumout\,
	cout => \inst13|Add0~34\);

-- Location: MLABCELL_X34_Y4_N36
\inst13|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Add0~29_sumout\ = SUM(( !\SW9~input_o\ $ (\U03|14~q\) ) + ( \U02|14~q\ ) + ( \inst13|Add0~34\ ))
-- \inst13|Add0~30\ = CARRY(( !\SW9~input_o\ $ (\U03|14~q\) ) + ( \U02|14~q\ ) + ( \inst13|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datac => \U02|ALT_INV_14~q\,
	datad => \U03|ALT_INV_14~q\,
	cin => \inst13|Add0~34\,
	sumout => \inst13|Add0~29_sumout\,
	cout => \inst13|Add0~30\);

-- Location: MLABCELL_X34_Y4_N39
\inst13|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Add0~25_sumout\ = SUM(( \U02|15~q\ ) + ( !\SW9~input_o\ $ (\U03|15~q\) ) + ( \inst13|Add0~30\ ))
-- \inst13|Add0~26\ = CARRY(( \U02|15~q\ ) + ( !\SW9~input_o\ $ (\U03|15~q\) ) + ( \inst13|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datac => \U03|ALT_INV_15~q\,
	datad => \U02|ALT_INV_15~q\,
	cin => \inst13|Add0~30\,
	sumout => \inst13|Add0~25_sumout\,
	cout => \inst13|Add0~26\);

-- Location: MLABCELL_X34_Y4_N42
\inst13|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Add0~21_sumout\ = SUM(( !\SW9~input_o\ $ (\U03|16~q\) ) + ( \U02|16~q\ ) + ( \inst13|Add0~26\ ))
-- \inst13|Add0~22\ = CARRY(( !\SW9~input_o\ $ (\U03|16~q\) ) + ( \U02|16~q\ ) + ( \inst13|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datac => \U02|ALT_INV_16~q\,
	datad => \U03|ALT_INV_16~q\,
	cin => \inst13|Add0~26\,
	sumout => \inst13|Add0~21_sumout\,
	cout => \inst13|Add0~22\);

-- Location: MLABCELL_X34_Y4_N45
\inst13|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Add0~17_sumout\ = SUM(( \U02|17~q\ ) + ( !\SW9~input_o\ $ (\U03|17~q\) ) + ( \inst13|Add0~22\ ))
-- \inst13|Add0~18\ = CARRY(( \U02|17~q\ ) + ( !\SW9~input_o\ $ (\U03|17~q\) ) + ( \inst13|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datac => \U02|ALT_INV_17~q\,
	dataf => \U03|ALT_INV_17~q\,
	cin => \inst13|Add0~22\,
	sumout => \inst13|Add0~17_sumout\,
	cout => \inst13|Add0~18\);

-- Location: MLABCELL_X34_Y4_N48
\inst13|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Add0~13_sumout\ = SUM(( !\SW9~input_o\ $ (\U03|18~q\) ) + ( \U02|18~q\ ) + ( \inst13|Add0~18\ ))
-- \inst13|Add0~14\ = CARRY(( !\SW9~input_o\ $ (\U03|18~q\) ) + ( \U02|18~q\ ) + ( \inst13|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datac => \U03|ALT_INV_18~q\,
	dataf => \U02|ALT_INV_18~q\,
	cin => \inst13|Add0~18\,
	sumout => \inst13|Add0~13_sumout\,
	cout => \inst13|Add0~14\);

-- Location: MLABCELL_X34_Y4_N51
\inst13|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Add0~9_sumout\ = SUM(( !\SW9~input_o\ $ (\U03|19~q\) ) + ( \U02|19~q\ ) + ( \inst13|Add0~14\ ))
-- \inst13|Add0~10\ = CARRY(( !\SW9~input_o\ $ (\U03|19~q\) ) + ( \U02|19~q\ ) + ( \inst13|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datac => \U03|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_19~q\,
	cin => \inst13|Add0~14\,
	sumout => \inst13|Add0~9_sumout\,
	cout => \inst13|Add0~10\);

-- Location: MLABCELL_X34_Y4_N54
\inst13|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Add0~5_sumout\ = SUM(( \U02|20~q\ ) + ( !\SW9~input_o\ $ (\U03|20~q\) ) + ( \inst13|Add0~10\ ))
-- \inst13|Add0~6\ = CARRY(( \U02|20~q\ ) + ( !\SW9~input_o\ $ (\U03|20~q\) ) + ( \inst13|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datac => \U03|ALT_INV_20~q\,
	datad => \U02|ALT_INV_20~q\,
	cin => \inst13|Add0~10\,
	sumout => \inst13|Add0~5_sumout\,
	cout => \inst13|Add0~6\);

-- Location: MLABCELL_X34_Y4_N57
\inst13|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Add0~1_sumout\ = SUM(( !\SW9~input_o\ ) + ( GND ) + ( \inst13|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	cin => \inst13|Add0~6\,
	sumout => \inst13|Add0~1_sumout\);

-- Location: LABCELL_X39_Y1_N30
\U09|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux0~0_combout\ = ( \U03|16~q\ & ( (\U03|14~q\) # (\U03|15~q\) ) ) # ( !\U03|16~q\ & ( (!\U03|14~q\ & (!\U03|13~q\ $ (!\U03|15~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_13~q\,
	datab => \U03|ALT_INV_15~q\,
	datac => \U03|ALT_INV_14~q\,
	dataf => \U03|ALT_INV_16~q\,
	combout => \U09|Mux0~0_combout\);

-- Location: LABCELL_X39_Y1_N33
\U09|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux1~0_combout\ = ( \U03|16~q\ & ( (\U03|14~q\) # (\U03|15~q\) ) ) # ( !\U03|16~q\ & ( (\U03|15~q\ & (!\U03|13~q\ $ (!\U03|14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_13~q\,
	datac => \U03|ALT_INV_15~q\,
	datad => \U03|ALT_INV_14~q\,
	dataf => \U03|ALT_INV_16~q\,
	combout => \U09|Mux1~0_combout\);

-- Location: LABCELL_X39_Y1_N36
\U09|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux2~0_combout\ = ( \U03|14~q\ & ( \U03|16~q\ ) ) # ( !\U03|14~q\ & ( \U03|16~q\ & ( \U03|15~q\ ) ) ) # ( \U03|14~q\ & ( !\U03|16~q\ & ( (!\U03|13~q\ & !\U03|15~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U03|ALT_INV_13~q\,
	datad => \U03|ALT_INV_15~q\,
	datae => \U03|ALT_INV_14~q\,
	dataf => \U03|ALT_INV_16~q\,
	combout => \U09|Mux2~0_combout\);

-- Location: LABCELL_X39_Y1_N42
\U09|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux3~0_combout\ = ( \U03|16~q\ & ( (\U03|14~q\) # (\U03|15~q\) ) ) # ( !\U03|16~q\ & ( (!\U03|15~q\ & (\U03|13~q\ & !\U03|14~q\)) # (\U03|15~q\ & (!\U03|13~q\ $ (\U03|14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U03|ALT_INV_15~q\,
	datac => \U03|ALT_INV_13~q\,
	datad => \U03|ALT_INV_14~q\,
	dataf => \U03|ALT_INV_16~q\,
	combout => \U09|Mux3~0_combout\);

-- Location: LABCELL_X39_Y1_N51
\U09|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux4~0_combout\ = ( \U03|16~q\ & ( ((\U03|14~q\) # (\U03|15~q\)) # (\U03|13~q\) ) ) # ( !\U03|16~q\ & ( ((\U03|15~q\ & !\U03|14~q\)) # (\U03|13~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_13~q\,
	datac => \U03|ALT_INV_15~q\,
	datad => \U03|ALT_INV_14~q\,
	dataf => \U03|ALT_INV_16~q\,
	combout => \U09|Mux4~0_combout\);

-- Location: LABCELL_X39_Y1_N54
\U09|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux5~0_combout\ = ( \U03|16~q\ & ( (\U03|14~q\) # (\U03|15~q\) ) ) # ( !\U03|16~q\ & ( (!\U03|15~q\ & ((\U03|14~q\) # (\U03|13~q\))) # (\U03|15~q\ & (\U03|13~q\ & \U03|14~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U03|ALT_INV_15~q\,
	datac => \U03|ALT_INV_13~q\,
	datad => \U03|ALT_INV_14~q\,
	dataf => \U03|ALT_INV_16~q\,
	combout => \U09|Mux5~0_combout\);

-- Location: LABCELL_X39_Y1_N57
\U09|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux6~0_combout\ = ( \U03|16~q\ & ( (!\U03|15~q\ & !\U03|14~q\) ) ) # ( !\U03|16~q\ & ( (!\U03|15~q\ & ((\U03|14~q\))) # (\U03|15~q\ & ((!\U03|13~q\) # (!\U03|14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111101110001100111110111011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_13~q\,
	datab => \U03|ALT_INV_15~q\,
	datad => \U03|ALT_INV_14~q\,
	dataf => \U03|ALT_INV_16~q\,
	combout => \U09|Mux6~0_combout\);

-- Location: LABCELL_X39_Y1_N45
\U08|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux0~0_combout\ = ( \U03|19~q\ & ( ((!\U03|17~q\ & !\U03|18~q\)) # (\U03|20~q\) ) ) # ( !\U03|19~q\ & ( (!\U03|18~q\ & (\U03|17~q\ & !\U03|20~q\)) # (\U03|18~q\ & ((\U03|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_17~q\,
	datac => \U03|ALT_INV_18~q\,
	datad => \U03|ALT_INV_20~q\,
	dataf => \U03|ALT_INV_19~q\,
	combout => \U08|Mux0~0_combout\);

-- Location: LABCELL_X39_Y1_N12
\U08|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux1~0_combout\ = ( \U03|19~q\ & ( (!\U03|18~q\ $ (!\U03|17~q\)) # (\U03|20~q\) ) ) # ( !\U03|19~q\ & ( (\U03|18~q\ & \U03|20~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U03|ALT_INV_18~q\,
	datac => \U03|ALT_INV_17~q\,
	datad => \U03|ALT_INV_20~q\,
	dataf => \U03|ALT_INV_19~q\,
	combout => \U08|Mux1~0_combout\);

-- Location: LABCELL_X39_Y1_N6
\U08|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux2~0_combout\ = ( \U03|19~q\ & ( \U03|20~q\ ) ) # ( !\U03|19~q\ & ( (\U03|18~q\ & ((!\U03|17~q\) # (\U03|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_17~q\,
	datab => \U03|ALT_INV_20~q\,
	datad => \U03|ALT_INV_18~q\,
	dataf => \U03|ALT_INV_19~q\,
	combout => \U08|Mux2~0_combout\);

-- Location: LABCELL_X39_Y1_N3
\U08|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux3~0_combout\ = ( \U03|19~q\ & ( (!\U03|18~q\ $ (\U03|17~q\)) # (\U03|20~q\) ) ) # ( !\U03|19~q\ & ( (!\U03|18~q\ & (!\U03|20~q\ & \U03|17~q\)) # (\U03|18~q\ & (\U03|20~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001111001111001111111100111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U03|ALT_INV_18~q\,
	datac => \U03|ALT_INV_20~q\,
	datad => \U03|ALT_INV_17~q\,
	dataf => \U03|ALT_INV_19~q\,
	combout => \U08|Mux3~0_combout\);

-- Location: MLABCELL_X34_Y4_N6
\U08|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux4~0_combout\ = ( \U03|19~q\ & ( ((!\U03|18~q\) # (\U03|17~q\)) # (\U03|20~q\) ) ) # ( !\U03|19~q\ & ( ((\U03|20~q\ & \U03|18~q\)) # (\U03|17~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_20~q\,
	datac => \U03|ALT_INV_17~q\,
	datad => \U03|ALT_INV_18~q\,
	dataf => \U03|ALT_INV_19~q\,
	combout => \U08|Mux4~0_combout\);

-- Location: LABCELL_X39_Y1_N9
\U08|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux5~0_combout\ = ( \U03|18~q\ & ( ((!\U03|19~q\) # (\U03|20~q\)) # (\U03|17~q\) ) ) # ( !\U03|18~q\ & ( (!\U03|20~q\ & (\U03|17~q\ & !\U03|19~q\)) # (\U03|20~q\ & ((\U03|19~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110011010001000011001111111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_17~q\,
	datab => \U03|ALT_INV_20~q\,
	datad => \U03|ALT_INV_19~q\,
	dataf => \U03|ALT_INV_18~q\,
	combout => \U08|Mux5~0_combout\);

-- Location: LABCELL_X39_Y1_N0
\U08|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux6~0_combout\ = ( \U03|19~q\ & ( (!\U03|20~q\ & ((!\U03|18~q\) # (!\U03|17~q\))) ) ) # ( !\U03|19~q\ & ( !\U03|18~q\ $ (!\U03|20~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U03|ALT_INV_18~q\,
	datac => \U03|ALT_INV_17~q\,
	datad => \U03|ALT_INV_20~q\,
	dataf => \U03|ALT_INV_19~q\,
	combout => \U08|Mux6~0_combout\);

-- Location: MLABCELL_X34_Y4_N0
\U07|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux0~0_combout\ = ( \U02|16~q\ & ( (\U02|14~q\) # (\U02|15~q\) ) ) # ( !\U02|16~q\ & ( (!\U02|14~q\ & (!\U02|15~q\ $ (!\U02|13~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_15~q\,
	datab => \U02|ALT_INV_13~q\,
	datac => \U02|ALT_INV_14~q\,
	dataf => \U02|ALT_INV_16~q\,
	combout => \U07|Mux0~0_combout\);

-- Location: MLABCELL_X34_Y4_N3
\U07|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux1~0_combout\ = ( \U02|14~q\ & ( ((\U02|15~q\ & !\U02|13~q\)) # (\U02|16~q\) ) ) # ( !\U02|14~q\ & ( (\U02|15~q\ & ((\U02|16~q\) # (\U02|13~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_15~q\,
	datab => \U02|ALT_INV_13~q\,
	datac => \U02|ALT_INV_16~q\,
	dataf => \U02|ALT_INV_14~q\,
	combout => \U07|Mux1~0_combout\);

-- Location: MLABCELL_X34_Y4_N12
\U07|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux2~0_combout\ = ( \U02|16~q\ & ( (\U02|15~q\) # (\U02|14~q\) ) ) # ( !\U02|16~q\ & ( (!\U02|13~q\ & (\U02|14~q\ & !\U02|15~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U02|ALT_INV_13~q\,
	datac => \U02|ALT_INV_14~q\,
	datad => \U02|ALT_INV_15~q\,
	dataf => \U02|ALT_INV_16~q\,
	combout => \U07|Mux2~0_combout\);

-- Location: MLABCELL_X34_Y4_N15
\U07|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux3~0_combout\ = ( \U02|14~q\ & ( ((\U02|15~q\ & \U02|13~q\)) # (\U02|16~q\) ) ) # ( !\U02|14~q\ & ( !\U02|15~q\ $ (((!\U02|13~q\) # (\U02|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101011010010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_15~q\,
	datac => \U02|ALT_INV_16~q\,
	datad => \U02|ALT_INV_13~q\,
	dataf => \U02|ALT_INV_14~q\,
	combout => \U07|Mux3~0_combout\);

-- Location: MLABCELL_X34_Y4_N18
\U07|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux4~0_combout\ = ((!\U02|14~q\ & ((\U02|15~q\))) # (\U02|14~q\ & (\U02|16~q\))) # (\U02|13~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101110111001111110111011100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_16~q\,
	datab => \U02|ALT_INV_13~q\,
	datac => \U02|ALT_INV_15~q\,
	datad => \U02|ALT_INV_14~q\,
	combout => \U07|Mux4~0_combout\);

-- Location: MLABCELL_X34_Y4_N21
\U07|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux5~0_combout\ = ( \U02|14~q\ & ( ((!\U02|15~q\) # (\U02|13~q\)) # (\U02|16~q\) ) ) # ( !\U02|14~q\ & ( (!\U02|16~q\ & (\U02|13~q\ & !\U02|15~q\)) # (\U02|16~q\ & ((\U02|15~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001010101001000100101010111111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_16~q\,
	datab => \U02|ALT_INV_13~q\,
	datad => \U02|ALT_INV_15~q\,
	dataf => \U02|ALT_INV_14~q\,
	combout => \U07|Mux5~0_combout\);

-- Location: MLABCELL_X34_Y4_N24
\U07|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux6~0_combout\ = ( \U02|16~q\ & ( (!\U02|15~q\ & !\U02|14~q\) ) ) # ( !\U02|16~q\ & ( (!\U02|15~q\ & ((\U02|14~q\))) # (\U02|15~q\ & ((!\U02|13~q\) # (!\U02|14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111001011110101000001010000001011110010111101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_15~q\,
	datab => \U02|ALT_INV_13~q\,
	datac => \U02|ALT_INV_14~q\,
	datae => \U02|ALT_INV_16~q\,
	combout => \U07|Mux6~0_combout\);

-- Location: MLABCELL_X34_Y4_N9
\U06|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux0~0_combout\ = ( \U02|19~q\ & ( ((!\U02|18~q\ & !\U02|17~q\)) # (\U02|20~q\) ) ) # ( !\U02|19~q\ & ( (!\U02|18~q\ & (!\U02|20~q\ & \U02|17~q\)) # (\U02|18~q\ & (\U02|20~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001111001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U02|ALT_INV_18~q\,
	datac => \U02|ALT_INV_20~q\,
	datad => \U02|ALT_INV_17~q\,
	dataf => \U02|ALT_INV_19~q\,
	combout => \U06|Mux0~0_combout\);

-- Location: LABCELL_X39_Y1_N15
\U06|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux1~0_combout\ = ( \U02|17~q\ & ( (!\U02|18~q\ & ((\U02|19~q\))) # (\U02|18~q\ & (\U02|20~q\)) ) ) # ( !\U02|17~q\ & ( (!\U02|20~q\ & (\U02|18~q\ & \U02|19~q\)) # (\U02|20~q\ & ((\U02|19~q\) # (\U02|18~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_20~q\,
	datac => \U02|ALT_INV_18~q\,
	datad => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_17~q\,
	combout => \U06|Mux1~0_combout\);

-- Location: LABCELL_X39_Y1_N48
\U06|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux2~0_combout\ = ( \U02|17~q\ & ( (\U02|20~q\ & ((\U02|19~q\) # (\U02|18~q\))) ) ) # ( !\U02|17~q\ & ( (!\U02|19~q\ & (\U02|18~q\)) # (\U02|19~q\ & ((\U02|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U02|ALT_INV_18~q\,
	datac => \U02|ALT_INV_20~q\,
	datad => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_17~q\,
	combout => \U06|Mux2~0_combout\);

-- Location: LABCELL_X39_Y1_N18
\U06|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux3~0_combout\ = (!\U02|18~q\ & (!\U02|19~q\ $ (((!\U02|17~q\) # (\U02|20~q\))))) # (\U02|18~q\ & (((\U02|19~q\ & \U02|17~q\)) # (\U02|20~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110110010111000111011001011100011101100101110001110110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_20~q\,
	datab => \U02|ALT_INV_18~q\,
	datac => \U02|ALT_INV_19~q\,
	datad => \U02|ALT_INV_17~q\,
	combout => \U06|Mux3~0_combout\);

-- Location: LABCELL_X39_Y1_N27
\U06|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux4~0_combout\ = ( \U02|20~q\ & ( ((\U02|18~q\) # (\U02|17~q\)) # (\U02|19~q\) ) ) # ( !\U02|20~q\ & ( ((\U02|19~q\ & !\U02|18~q\)) # (\U02|17~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_19~q\,
	datac => \U02|ALT_INV_17~q\,
	datad => \U02|ALT_INV_18~q\,
	dataf => \U02|ALT_INV_20~q\,
	combout => \U06|Mux4~0_combout\);

-- Location: LABCELL_X39_Y1_N21
\U06|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux5~0_combout\ = ( \U02|17~q\ & ( (!\U02|20~q\ $ (\U02|19~q\)) # (\U02|18~q\) ) ) # ( !\U02|17~q\ & ( (!\U02|19~q\ & ((\U02|18~q\))) # (\U02|19~q\ & (\U02|20~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010110111011011101111011101101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_20~q\,
	datab => \U02|ALT_INV_18~q\,
	datad => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_17~q\,
	combout => \U06|Mux5~0_combout\);

-- Location: LABCELL_X39_Y1_N24
\U06|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux6~0_combout\ = (!\U02|19~q\ & (!\U02|18~q\ $ (((!\U02|20~q\))))) # (\U02|19~q\ & (!\U02|20~q\ & ((!\U02|18~q\) # (!\U02|17~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011010001000011101101000100001110110100010000111011010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_19~q\,
	datab => \U02|ALT_INV_18~q\,
	datac => \U02|ALT_INV_17~q\,
	datad => \U02|ALT_INV_20~q\,
	combout => \U06|Mux6~0_combout\);

-- Location: LABCELL_X29_Y13_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


