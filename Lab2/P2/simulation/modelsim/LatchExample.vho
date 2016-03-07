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

-- DATE "01/28/2016 15:07:14"

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
	LEDR3 : OUT std_logic;
	SW9 : IN std_logic;
	KEY1 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	KEY0 : IN std_logic;
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6)
	);
END LatchExample;

-- Design Ports Information
-- LEDR3	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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
SIGNAL ww_LEDR3 : std_logic;
SIGNAL ww_SW9 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \KEY0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \U02|20~q\ : std_logic;
SIGNAL \SW9~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \U02|18~q\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \KEY1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \U01|18~q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \U02|17~q\ : std_logic;
SIGNAL \U01|17~q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \U02|19~q\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \U02|16~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \U02|15~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \U02|14~q\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \U01|16~q\ : std_logic;
SIGNAL \U01|15~q\ : std_logic;
SIGNAL \U01|14~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \U01|13~q\ : std_logic;
SIGNAL \U02|13~q\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Add0~22_cout\ : std_logic;
SIGNAL \inst1|Add0~2\ : std_logic;
SIGNAL \inst1|Add0~10\ : std_logic;
SIGNAL \inst1|Add0~14\ : std_logic;
SIGNAL \inst1|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~6\ : std_logic;
SIGNAL \inst1|Add0~17_sumout\ : std_logic;
SIGNAL \inst2|Add0~22_cout\ : std_logic;
SIGNAL \inst2|Add0~18\ : std_logic;
SIGNAL \inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \U01|20~q\ : std_logic;
SIGNAL \U01|19~q\ : std_logic;
SIGNAL \inst2|Add0~2\ : std_logic;
SIGNAL \inst2|Add0~6\ : std_logic;
SIGNAL \inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst1|sum[2]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|sum[3]~2_combout\ : std_logic;
SIGNAL \inst1|sum[1]~0_combout\ : std_logic;
SIGNAL \U09|Mux0~0_combout\ : std_logic;
SIGNAL \U09|Mux1~0_combout\ : std_logic;
SIGNAL \U09|Mux2~0_combout\ : std_logic;
SIGNAL \U09|Mux3~0_combout\ : std_logic;
SIGNAL \U09|Mux4~0_combout\ : std_logic;
SIGNAL \U09|Mux5~0_combout\ : std_logic;
SIGNAL \U09|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|sum[2]~1_combout\ : std_logic;
SIGNAL \inst2|sum[3]~2_combout\ : std_logic;
SIGNAL \inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst2|sum[1]~0_combout\ : std_logic;
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
SIGNAL \U05|Mux0~0_combout\ : std_logic;
SIGNAL \U05|Mux1~0_combout\ : std_logic;
SIGNAL \U05|Mux2~0_combout\ : std_logic;
SIGNAL \U05|Mux3~0_combout\ : std_logic;
SIGNAL \U05|Mux4~0_combout\ : std_logic;
SIGNAL \U05|Mux5~0_combout\ : std_logic;
SIGNAL \U05|Mux6~0_combout\ : std_logic;
SIGNAL \U04|Mux0~0_combout\ : std_logic;
SIGNAL \U04|Mux1~0_combout\ : std_logic;
SIGNAL \U04|Mux2~0_combout\ : std_logic;
SIGNAL \U04|Mux3~0_combout\ : std_logic;
SIGNAL \U04|Mux4~0_combout\ : std_logic;
SIGNAL \U04|Mux5~0_combout\ : std_logic;
SIGNAL \U04|Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW9~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U04|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U01|ALT_INV_20~q\ : std_logic;
SIGNAL \U01|ALT_INV_19~q\ : std_logic;
SIGNAL \U01|ALT_INV_18~q\ : std_logic;
SIGNAL \U01|ALT_INV_17~q\ : std_logic;
SIGNAL \U05|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U01|ALT_INV_16~q\ : std_logic;
SIGNAL \U01|ALT_INV_15~q\ : std_logic;
SIGNAL \U01|ALT_INV_14~q\ : std_logic;
SIGNAL \U01|ALT_INV_13~q\ : std_logic;
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
SIGNAL \inst2|ALT_INV_sum[3]~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_sum[2]~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_sum[1]~0_combout\ : std_logic;
SIGNAL \U09|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sum[3]~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sum[2]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sum[1]~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

LEDR3 <= ww_LEDR3;
ww_SW9 <= SW9;
ww_KEY1 <= KEY1;
ww_SW <= SW;
ww_KEY0 <= KEY0;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW9~input_o\ <= NOT \SW9~input_o\;
\inst2|ALT_INV_Mux3~0_combout\ <= NOT \inst2|Mux3~0_combout\;
\inst1|ALT_INV_Mux0~0_combout\ <= NOT \inst1|Mux0~0_combout\;
\inst1|ALT_INV_Mux3~0_combout\ <= NOT \inst1|Mux3~0_combout\;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\U04|ALT_INV_Mux6~0_combout\ <= NOT \U04|Mux6~0_combout\;
\U01|ALT_INV_20~q\ <= NOT \U01|20~q\;
\U01|ALT_INV_19~q\ <= NOT \U01|19~q\;
\U01|ALT_INV_18~q\ <= NOT \U01|18~q\;
\U01|ALT_INV_17~q\ <= NOT \U01|17~q\;
\U05|ALT_INV_Mux6~0_combout\ <= NOT \U05|Mux6~0_combout\;
\U01|ALT_INV_16~q\ <= NOT \U01|16~q\;
\U01|ALT_INV_15~q\ <= NOT \U01|15~q\;
\U01|ALT_INV_14~q\ <= NOT \U01|14~q\;
\U01|ALT_INV_13~q\ <= NOT \U01|13~q\;
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
\inst2|ALT_INV_sum[3]~2_combout\ <= NOT \inst2|sum[3]~2_combout\;
\inst2|ALT_INV_sum[2]~1_combout\ <= NOT \inst2|sum[2]~1_combout\;
\inst2|ALT_INV_sum[1]~0_combout\ <= NOT \inst2|sum[1]~0_combout\;
\U09|ALT_INV_Mux6~0_combout\ <= NOT \U09|Mux6~0_combout\;
\inst1|ALT_INV_sum[3]~2_combout\ <= NOT \inst1|sum[3]~2_combout\;
\inst1|ALT_INV_LessThan0~0_combout\ <= NOT \inst1|LessThan0~0_combout\;
\inst1|ALT_INV_sum[2]~1_combout\ <= NOT \inst1|sum[2]~1_combout\;
\inst1|ALT_INV_sum[1]~0_combout\ <= NOT \inst1|sum[1]~0_combout\;
\inst2|ALT_INV_Add0~17_sumout\ <= NOT \inst2|Add0~17_sumout\;
\inst1|ALT_INV_Add0~17_sumout\ <= NOT \inst1|Add0~17_sumout\;
\inst1|ALT_INV_Add0~13_sumout\ <= NOT \inst1|Add0~13_sumout\;
\inst1|ALT_INV_Add0~9_sumout\ <= NOT \inst1|Add0~9_sumout\;
\inst1|ALT_INV_Add0~5_sumout\ <= NOT \inst1|Add0~5_sumout\;
\inst1|ALT_INV_Add0~1_sumout\ <= NOT \inst1|Add0~1_sumout\;
\inst2|ALT_INV_Add0~13_sumout\ <= NOT \inst2|Add0~13_sumout\;
\inst2|ALT_INV_Add0~9_sumout\ <= NOT \inst2|Add0~9_sumout\;
\inst2|ALT_INV_Add0~5_sumout\ <= NOT \inst2|Add0~5_sumout\;
\inst2|ALT_INV_Add0~1_sumout\ <= NOT \inst2|Add0~1_sumout\;

-- Location: IOOBUF_X0_Y18_N45
\LEDR3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~combout\,
	devoe => ww_devoe,
	o => ww_LEDR3);

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

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: FF_X40_Y1_N41
\U02|20\ : dffeas
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
	q => \U02|20~q\);

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

-- Location: FF_X40_Y1_N35
\U02|18\ : dffeas
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
	q => \U02|18~q\);

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

-- Location: FF_X40_Y1_N59
\U01|18\ : dffeas
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
	q => \U01|18~q\);

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

-- Location: FF_X40_Y1_N38
\U02|17\ : dffeas
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
	q => \U02|17~q\);

-- Location: FF_X39_Y1_N8
\U01|17\ : dffeas
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
	q => \U01|17~q\);

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

-- Location: FF_X39_Y1_N20
\U02|19\ : dffeas
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
	q => \U02|19~q\);

-- Location: LABCELL_X39_Y1_N18
\inst2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = ( \U02|17~q\ ) # ( !\U02|17~q\ & ( (\U02|20~q\ & ((\U02|19~q\) # (\U02|18~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U02|ALT_INV_18~q\,
	datac => \U02|ALT_INV_20~q\,
	datad => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_17~q\,
	combout => \inst2|Mux3~0_combout\);

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

-- Location: FF_X39_Y1_N59
\U02|16\ : dffeas
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
	q => \U02|16~q\);

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

-- Location: FF_X39_Y1_N50
\U02|15\ : dffeas
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

-- Location: FF_X43_Y1_N38
\U02|14\ : dffeas
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
	q => \U02|14~q\);

-- Location: LABCELL_X39_Y1_N57
\inst1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = ( !\U02|14~q\ & ( (!\U02|15~q\ & !\U02|16~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_15~q\,
	datad => \U02|ALT_INV_16~q\,
	dataf => \U02|ALT_INV_14~q\,
	combout => \inst1|Mux0~0_combout\);

-- Location: FF_X39_Y1_N14
\U01|16\ : dffeas
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
	q => \U01|16~q\);

-- Location: FF_X39_Y1_N5
\U01|15\ : dffeas
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
	q => \U01|15~q\);

-- Location: FF_X43_Y1_N14
\U01|14\ : dffeas
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
	q => \U01|14~q\);

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

-- Location: FF_X43_Y1_N8
\U01|13\ : dffeas
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
	q => \U01|13~q\);

-- Location: FF_X43_Y1_N32
\U02|13\ : dffeas
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
	q => \U02|13~q\);

-- Location: LABCELL_X39_Y1_N48
\inst1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = ( \U02|13~q\ ) # ( !\U02|13~q\ & ( (\U02|16~q\ & ((\U02|15~q\) # (\U02|14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U02|ALT_INV_16~q\,
	datac => \U02|ALT_INV_14~q\,
	datad => \U02|ALT_INV_15~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LABCELL_X39_Y1_N0
\inst1|Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_cout\ = CARRY(( \SW9~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	cin => GND,
	cout => \inst1|Add0~22_cout\);

-- Location: LABCELL_X39_Y1_N3
\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_sumout\ = SUM(( \U01|13~q\ ) + ( (!\SW9~input_o\ & (\U02|13~q\)) # (\SW9~input_o\ & ((!\inst1|Mux3~0_combout\))) ) + ( \inst1|Add0~22_cout\ ))
-- \inst1|Add0~2\ = CARRY(( \U01|13~q\ ) + ( (!\SW9~input_o\ & (\U02|13~q\)) # (\SW9~input_o\ & ((!\inst1|Mux3~0_combout\))) ) + ( \inst1|Add0~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001111010100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datab => \U01|ALT_INV_13~q\,
	datac => \U02|ALT_INV_13~q\,
	dataf => \inst1|ALT_INV_Mux3~0_combout\,
	cin => \inst1|Add0~22_cout\,
	sumout => \inst1|Add0~1_sumout\,
	cout => \inst1|Add0~2\);

-- Location: LABCELL_X39_Y1_N6
\inst1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_sumout\ = SUM(( (\U02|14~q\ & ((!\SW9~input_o\) # (!\U02|16~q\))) ) + ( \U01|14~q\ ) + ( \inst1|Add0~2\ ))
-- \inst1|Add0~10\ = CARRY(( (\U02|14~q\ & ((!\SW9~input_o\) # (!\U02|16~q\))) ) + ( \U01|14~q\ ) + ( \inst1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datab => \U02|ALT_INV_16~q\,
	datac => \U02|ALT_INV_14~q\,
	dataf => \U01|ALT_INV_14~q\,
	cin => \inst1|Add0~2\,
	sumout => \inst1|Add0~9_sumout\,
	cout => \inst1|Add0~10\);

-- Location: LABCELL_X39_Y1_N9
\inst1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_sumout\ = SUM(( (!\SW9~input_o\ & (((\U02|15~q\)))) # (\SW9~input_o\ & (!\U02|16~q\ & (!\U02|14~q\ $ (!\U02|15~q\)))) ) + ( \U01|15~q\ ) + ( \inst1|Add0~10\ ))
-- \inst1|Add0~14\ = CARRY(( (!\SW9~input_o\ & (((\U02|15~q\)))) # (\SW9~input_o\ & (!\U02|16~q\ & (!\U02|14~q\ $ (!\U02|15~q\)))) ) + ( \U01|15~q\ ) + ( \inst1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datab => \U02|ALT_INV_16~q\,
	datac => \U02|ALT_INV_14~q\,
	datad => \U02|ALT_INV_15~q\,
	dataf => \U01|ALT_INV_15~q\,
	cin => \inst1|Add0~10\,
	sumout => \inst1|Add0~13_sumout\,
	cout => \inst1|Add0~14\);

-- Location: LABCELL_X39_Y1_N12
\inst1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_sumout\ = SUM(( \U01|16~q\ ) + ( (!\SW9~input_o\ & (\U02|16~q\)) # (\SW9~input_o\ & ((\inst1|Mux0~0_combout\))) ) + ( \inst1|Add0~14\ ))
-- \inst1|Add0~6\ = CARRY(( \U01|16~q\ ) + ( (!\SW9~input_o\ & (\U02|16~q\)) # (\SW9~input_o\ & ((\inst1|Mux0~0_combout\))) ) + ( \inst1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datab => \U02|ALT_INV_16~q\,
	datac => \inst1|ALT_INV_Mux0~0_combout\,
	datad => \U01|ALT_INV_16~q\,
	cin => \inst1|Add0~14\,
	sumout => \inst1|Add0~5_sumout\,
	cout => \inst1|Add0~6\);

-- Location: LABCELL_X40_Y1_N33
\inst1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = ( \inst1|Add0~9_sumout\ ) # ( !\inst1|Add0~9_sumout\ & ( \inst1|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_Add0~13_sumout\,
	dataf => \inst1|ALT_INV_Add0~9_sumout\,
	combout => \inst1|LessThan0~0_combout\);

-- Location: LABCELL_X39_Y1_N15
\inst1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_sumout\ = SUM(( GND ) + ( GND ) + ( \inst1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add0~6\,
	sumout => \inst1|Add0~17_sumout\);

-- Location: LABCELL_X39_Y1_N30
\inst2|Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_cout\ = CARRY(( VCC ) + ( ((\inst1|Add0~5_sumout\ & \inst1|LessThan0~0_combout\)) # (\inst1|Add0~17_sumout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_Add0~5_sumout\,
	datac => \inst1|ALT_INV_LessThan0~0_combout\,
	dataf => \inst1|ALT_INV_Add0~17_sumout\,
	cin => GND,
	cout => \inst2|Add0~22_cout\);

-- Location: LABCELL_X39_Y1_N33
\inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_sumout\ = SUM(( \U01|17~q\ ) + ( (!\SW9~input_o\ & (\U02|17~q\)) # (\SW9~input_o\ & ((!\inst2|Mux3~0_combout\))) ) + ( \inst2|Add0~22_cout\ ))
-- \inst2|Add0~18\ = CARRY(( \U01|17~q\ ) + ( (!\SW9~input_o\ & (\U02|17~q\)) # (\SW9~input_o\ & ((!\inst2|Mux3~0_combout\))) ) + ( \inst2|Add0~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW9~input_o\,
	datac => \U02|ALT_INV_17~q\,
	datad => \U01|ALT_INV_17~q\,
	dataf => \inst2|ALT_INV_Mux3~0_combout\,
	cin => \inst2|Add0~22_cout\,
	sumout => \inst2|Add0~17_sumout\,
	cout => \inst2|Add0~18\);

-- Location: LABCELL_X39_Y1_N36
\inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_sumout\ = SUM(( (\U02|18~q\ & ((!\U02|20~q\) # (!\SW9~input_o\))) ) + ( \U01|18~q\ ) + ( \inst2|Add0~18\ ))
-- \inst2|Add0~2\ = CARRY(( (\U02|18~q\ & ((!\U02|20~q\) # (!\SW9~input_o\))) ) + ( \U01|18~q\ ) + ( \inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_20~q\,
	datab => \ALT_INV_SW9~input_o\,
	datad => \U02|ALT_INV_18~q\,
	dataf => \U01|ALT_INV_18~q\,
	cin => \inst2|Add0~18\,
	sumout => \inst2|Add0~1_sumout\,
	cout => \inst2|Add0~2\);

-- Location: LABCELL_X40_Y1_N39
\inst2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (!\U02|18~q\ & (!\U02|19~q\ & !\U02|20~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_18~q\,
	datab => \U02|ALT_INV_19~q\,
	datad => \U02|ALT_INV_20~q\,
	combout => \inst2|Mux0~0_combout\);

-- Location: FF_X40_Y1_N50
\U01|20\ : dffeas
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
	q => \U01|20~q\);

-- Location: FF_X39_Y1_N47
\U01|19\ : dffeas
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
	q => \U01|19~q\);

-- Location: LABCELL_X39_Y1_N39
\inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_sumout\ = SUM(( \U01|19~q\ ) + ( (!\SW9~input_o\ & (((\U02|19~q\)))) # (\SW9~input_o\ & (!\U02|20~q\ & (!\U02|18~q\ $ (!\U02|19~q\)))) ) + ( \inst2|Add0~2\ ))
-- \inst2|Add0~6\ = CARRY(( \U01|19~q\ ) + ( (!\SW9~input_o\ & (((\U02|19~q\)))) # (\SW9~input_o\ & (!\U02|20~q\ & (!\U02|18~q\ $ (!\U02|19~q\)))) ) + ( \inst2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_20~q\,
	datab => \ALT_INV_SW9~input_o\,
	datac => \U02|ALT_INV_18~q\,
	datad => \U01|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_19~q\,
	cin => \inst2|Add0~2\,
	sumout => \inst2|Add0~5_sumout\,
	cout => \inst2|Add0~6\);

-- Location: LABCELL_X39_Y1_N42
\inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_sumout\ = SUM(( (!\SW9~input_o\ & (\U02|20~q\)) # (\SW9~input_o\ & ((\inst2|Mux0~0_combout\))) ) + ( \U01|20~q\ ) + ( \inst2|Add0~6\ ))
-- \inst2|Add0~10\ = CARRY(( (!\SW9~input_o\ & (\U02|20~q\)) # (\SW9~input_o\ & ((\inst2|Mux0~0_combout\))) ) + ( \U01|20~q\ ) + ( \inst2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_20~q\,
	datab => \inst2|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_SW9~input_o\,
	dataf => \U01|ALT_INV_20~q\,
	cin => \inst2|Add0~6\,
	sumout => \inst2|Add0~9_sumout\,
	cout => \inst2|Add0~10\);

-- Location: LABCELL_X39_Y1_N45
\inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~13_sumout\ = SUM(( GND ) + ( GND ) + ( \inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Add0~10\,
	sumout => \inst2|Add0~13_sumout\);

-- Location: LABCELL_X40_Y1_N30
inst3 : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~combout\ = ( \SW9~input_o\ & ( (!\inst2|Add0~13_sumout\ & ((!\inst2|Add0~9_sumout\) # ((!\inst2|Add0~1_sumout\ & !\inst2|Add0~5_sumout\)))) ) ) # ( !\SW9~input_o\ & ( ((\inst2|Add0~9_sumout\ & ((\inst2|Add0~5_sumout\) # (\inst2|Add0~1_sumout\)))) # 
-- (\inst2|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001111111111000100111111111111101100000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~1_sumout\,
	datab => \inst2|ALT_INV_Add0~9_sumout\,
	datac => \inst2|ALT_INV_Add0~5_sumout\,
	datad => \inst2|ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_SW9~input_o\,
	combout => \inst3~combout\);

-- Location: LABCELL_X39_Y1_N54
\inst1|sum[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sum[2]~1_combout\ = ( \inst1|Add0~5_sumout\ & ( (!\inst1|Add0~13_sumout\ & (\inst1|Add0~17_sumout\ & !\inst1|Add0~9_sumout\)) # (\inst1|Add0~13_sumout\ & ((\inst1|Add0~9_sumout\))) ) ) # ( !\inst1|Add0~5_sumout\ & ( !\inst1|Add0~13_sumout\ $ 
-- (((!\inst1|Add0~17_sumout\) # (\inst1|Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001100001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_Add0~13_sumout\,
	datac => \inst1|ALT_INV_Add0~17_sumout\,
	datad => \inst1|ALT_INV_Add0~9_sumout\,
	dataf => \inst1|ALT_INV_Add0~5_sumout\,
	combout => \inst1|sum[2]~1_combout\);

-- Location: LABCELL_X39_Y1_N21
\inst1|sum[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sum[3]~2_combout\ = ( \inst1|Add0~17_sumout\ & ( !\inst1|LessThan0~0_combout\ $ (!\inst1|Add0~5_sumout\) ) ) # ( !\inst1|Add0~17_sumout\ & ( (!\inst1|LessThan0~0_combout\ & \inst1|Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_LessThan0~0_combout\,
	datac => \inst1|ALT_INV_Add0~5_sumout\,
	dataf => \inst1|ALT_INV_Add0~17_sumout\,
	combout => \inst1|sum[3]~2_combout\);

-- Location: LABCELL_X39_Y1_N51
\inst1|sum[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sum[1]~0_combout\ = ( \inst1|Add0~13_sumout\ & ( !\inst1|Add0~9_sumout\ $ (((!\inst1|Add0~17_sumout\ & !\inst1|Add0~5_sumout\))) ) ) # ( !\inst1|Add0~13_sumout\ & ( (!\inst1|Add0~17_sumout\ & (!\inst1|Add0~5_sumout\ & \inst1|Add0~9_sumout\)) # 
-- (\inst1|Add0~17_sumout\ & ((!\inst1|Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100000010101011010000001011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Add0~17_sumout\,
	datac => \inst1|ALT_INV_Add0~5_sumout\,
	datad => \inst1|ALT_INV_Add0~9_sumout\,
	dataf => \inst1|ALT_INV_Add0~13_sumout\,
	combout => \inst1|sum[1]~0_combout\);

-- Location: MLABCELL_X42_Y2_N3
\U09|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux0~0_combout\ = ( \inst1|sum[1]~0_combout\ & ( \inst1|sum[3]~2_combout\ ) ) # ( !\inst1|sum[1]~0_combout\ & ( !\inst1|sum[2]~1_combout\ $ (((!\inst1|Add0~1_sumout\) # (\inst1|sum[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_sum[2]~1_combout\,
	datac => \inst1|ALT_INV_Add0~1_sumout\,
	datad => \inst1|ALT_INV_sum[3]~2_combout\,
	dataf => \inst1|ALT_INV_sum[1]~0_combout\,
	combout => \U09|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y2_N6
\U09|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux1~0_combout\ = ( \inst1|Add0~1_sumout\ & ( \inst1|sum[1]~0_combout\ & ( \inst1|sum[3]~2_combout\ ) ) ) # ( !\inst1|Add0~1_sumout\ & ( \inst1|sum[1]~0_combout\ & ( (\inst1|sum[3]~2_combout\) # (\inst1|sum[2]~1_combout\) ) ) ) # ( 
-- \inst1|Add0~1_sumout\ & ( !\inst1|sum[1]~0_combout\ & ( \inst1|sum[2]~1_combout\ ) ) ) # ( !\inst1|Add0~1_sumout\ & ( !\inst1|sum[1]~0_combout\ & ( (\inst1|sum[2]~1_combout\ & \inst1|sum[3]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100111111001111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_sum[2]~1_combout\,
	datac => \inst1|ALT_INV_sum[3]~2_combout\,
	datae => \inst1|ALT_INV_Add0~1_sumout\,
	dataf => \inst1|ALT_INV_sum[1]~0_combout\,
	combout => \U09|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y2_N15
\U09|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux2~0_combout\ = ( \inst1|sum[1]~0_combout\ & ( ((!\inst1|sum[2]~1_combout\ & !\inst1|Add0~1_sumout\)) # (\inst1|sum[3]~2_combout\) ) ) # ( !\inst1|sum[1]~0_combout\ & ( (\inst1|sum[2]~1_combout\ & \inst1|sum[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111000000111111111100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_sum[2]~1_combout\,
	datac => \inst1|ALT_INV_Add0~1_sumout\,
	datad => \inst1|ALT_INV_sum[3]~2_combout\,
	dataf => \inst1|ALT_INV_sum[1]~0_combout\,
	combout => \U09|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y2_N48
\U09|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux3~0_combout\ = ( \inst1|sum[2]~1_combout\ & ( (!\inst1|sum[1]~0_combout\ $ (\inst1|Add0~1_sumout\)) # (\inst1|sum[3]~2_combout\) ) ) # ( !\inst1|sum[2]~1_combout\ & ( (!\inst1|sum[1]~0_combout\ & (\inst1|Add0~1_sumout\ & 
-- !\inst1|sum[3]~2_combout\)) # (\inst1|sum[1]~0_combout\ & ((\inst1|sum[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010110011111100111111001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_sum[1]~0_combout\,
	datab => \inst1|ALT_INV_Add0~1_sumout\,
	datac => \inst1|ALT_INV_sum[3]~2_combout\,
	dataf => \inst1|ALT_INV_sum[2]~1_combout\,
	combout => \U09|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y2_N51
\U09|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux4~0_combout\ = ((!\inst1|sum[1]~0_combout\ & (\inst1|sum[2]~1_combout\)) # (\inst1|sum[1]~0_combout\ & ((\inst1|sum[3]~2_combout\)))) # (\inst1|Add0~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101101111111001110110111111100111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_sum[1]~0_combout\,
	datab => \inst1|ALT_INV_Add0~1_sumout\,
	datac => \inst1|ALT_INV_sum[2]~1_combout\,
	datad => \inst1|ALT_INV_sum[3]~2_combout\,
	combout => \U09|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y2_N54
\U09|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux5~0_combout\ = ( \inst1|sum[2]~1_combout\ & ( ((\inst1|sum[1]~0_combout\ & \inst1|Add0~1_sumout\)) # (\inst1|sum[3]~2_combout\) ) ) # ( !\inst1|sum[2]~1_combout\ & ( ((\inst1|Add0~1_sumout\ & !\inst1|sum[3]~2_combout\)) # 
-- (\inst1|sum[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_sum[1]~0_combout\,
	datab => \inst1|ALT_INV_Add0~1_sumout\,
	datac => \inst1|ALT_INV_sum[3]~2_combout\,
	dataf => \inst1|ALT_INV_sum[2]~1_combout\,
	combout => \U09|Mux5~0_combout\);

-- Location: MLABCELL_X42_Y2_N57
\U09|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux6~0_combout\ = ( \inst1|sum[2]~1_combout\ & ( (!\inst1|sum[3]~2_combout\ & ((!\inst1|sum[1]~0_combout\) # (!\inst1|Add0~1_sumout\))) ) ) # ( !\inst1|sum[2]~1_combout\ & ( !\inst1|sum[1]~0_combout\ $ (!\inst1|sum[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_sum[1]~0_combout\,
	datab => \inst1|ALT_INV_Add0~1_sumout\,
	datad => \inst1|ALT_INV_sum[3]~2_combout\,
	dataf => \inst1|ALT_INV_sum[2]~1_combout\,
	combout => \U09|Mux6~0_combout\);

-- Location: LABCELL_X40_Y1_N6
\inst2|sum[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|sum[2]~1_combout\ = ( \inst2|Add0~5_sumout\ & ( ((!\inst2|Add0~9_sumout\ & !\inst2|Add0~13_sumout\)) # (\inst2|Add0~1_sumout\) ) ) # ( !\inst2|Add0~5_sumout\ & ( (!\inst2|Add0~1_sumout\ & \inst2|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011011101010101011101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~1_sumout\,
	datab => \inst2|ALT_INV_Add0~9_sumout\,
	datad => \inst2|ALT_INV_Add0~13_sumout\,
	dataf => \inst2|ALT_INV_Add0~5_sumout\,
	combout => \inst2|sum[2]~1_combout\);

-- Location: LABCELL_X40_Y1_N15
\inst2|sum[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|sum[3]~2_combout\ = ( \inst2|Add0~5_sumout\ & ( (!\inst2|Add0~9_sumout\ & \inst2|Add0~13_sumout\) ) ) # ( !\inst2|Add0~5_sumout\ & ( (!\inst2|Add0~1_sumout\ & (\inst2|Add0~9_sumout\)) # (\inst2|Add0~1_sumout\ & (!\inst2|Add0~9_sumout\ & 
-- \inst2|Add0~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011010000010100101101000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~1_sumout\,
	datac => \inst2|ALT_INV_Add0~9_sumout\,
	datad => \inst2|ALT_INV_Add0~13_sumout\,
	dataf => \inst2|ALT_INV_Add0~5_sumout\,
	combout => \inst2|sum[3]~2_combout\);

-- Location: LABCELL_X40_Y1_N9
\inst2|sum[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|sum[1]~0_combout\ = ( \inst2|Add0~5_sumout\ & ( !\inst2|Add0~1_sumout\ $ (((!\inst2|Add0~9_sumout\ & !\inst2|Add0~13_sumout\))) ) ) # ( !\inst2|Add0~5_sumout\ & ( (!\inst2|Add0~1_sumout\ & ((\inst2|Add0~13_sumout\))) # (\inst2|Add0~1_sumout\ & 
-- (!\inst2|Add0~9_sumout\ & !\inst2|Add0~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101001001010010010100100101001101010011010100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~1_sumout\,
	datab => \inst2|ALT_INV_Add0~9_sumout\,
	datac => \inst2|ALT_INV_Add0~13_sumout\,
	dataf => \inst2|ALT_INV_Add0~5_sumout\,
	combout => \inst2|sum[1]~0_combout\);

-- Location: LABCELL_X40_Y1_N51
\U08|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux0~0_combout\ = ( \inst2|sum[1]~0_combout\ & ( \inst2|sum[3]~2_combout\ ) ) # ( !\inst2|sum[1]~0_combout\ & ( !\inst2|sum[2]~1_combout\ $ (((!\inst2|Add0~17_sumout\) # (\inst2|sum[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101011010010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_sum[2]~1_combout\,
	datac => \inst2|ALT_INV_sum[3]~2_combout\,
	datad => \inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst2|ALT_INV_sum[1]~0_combout\,
	combout => \U08|Mux0~0_combout\);

-- Location: LABCELL_X40_Y1_N24
\U08|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux1~0_combout\ = ( \inst2|sum[1]~0_combout\ & ( ((\inst2|sum[2]~1_combout\ & !\inst2|Add0~17_sumout\)) # (\inst2|sum[3]~2_combout\) ) ) # ( !\inst2|sum[1]~0_combout\ & ( (\inst2|sum[2]~1_combout\ & ((\inst2|Add0~17_sumout\) # 
-- (\inst2|sum[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101110111001100110111011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_sum[2]~1_combout\,
	datab => \inst2|ALT_INV_sum[3]~2_combout\,
	datad => \inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst2|ALT_INV_sum[1]~0_combout\,
	combout => \U08|Mux1~0_combout\);

-- Location: LABCELL_X40_Y1_N27
\U08|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux2~0_combout\ = ( \inst2|sum[1]~0_combout\ & ( ((!\inst2|sum[2]~1_combout\ & !\inst2|Add0~17_sumout\)) # (\inst2|sum[3]~2_combout\) ) ) # ( !\inst2|sum[1]~0_combout\ & ( (\inst2|sum[2]~1_combout\ & \inst2|sum[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_sum[2]~1_combout\,
	datac => \inst2|ALT_INV_sum[3]~2_combout\,
	datad => \inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst2|ALT_INV_sum[1]~0_combout\,
	combout => \U08|Mux2~0_combout\);

-- Location: LABCELL_X40_Y1_N0
\U08|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux3~0_combout\ = ( \inst2|sum[1]~0_combout\ & ( ((\inst2|sum[2]~1_combout\ & \inst2|Add0~17_sumout\)) # (\inst2|sum[3]~2_combout\) ) ) # ( !\inst2|sum[1]~0_combout\ & ( !\inst2|sum[2]~1_combout\ $ (((!\inst2|Add0~17_sumout\) # 
-- (\inst2|sum[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110011001010101011001100100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_sum[2]~1_combout\,
	datab => \inst2|ALT_INV_sum[3]~2_combout\,
	datad => \inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst2|ALT_INV_sum[1]~0_combout\,
	combout => \U08|Mux3~0_combout\);

-- Location: LABCELL_X40_Y1_N48
\U08|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux4~0_combout\ = ( \inst2|sum[1]~0_combout\ & ( (\inst2|Add0~17_sumout\) # (\inst2|sum[3]~2_combout\) ) ) # ( !\inst2|sum[1]~0_combout\ & ( (\inst2|Add0~17_sumout\) # (\inst2|sum[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_sum[2]~1_combout\,
	datab => \inst2|ALT_INV_sum[3]~2_combout\,
	datac => \inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst2|ALT_INV_sum[1]~0_combout\,
	combout => \U08|Mux4~0_combout\);

-- Location: LABCELL_X40_Y1_N3
\U08|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux5~0_combout\ = ( \inst2|sum[1]~0_combout\ & ( (!\inst2|sum[2]~1_combout\) # ((\inst2|Add0~17_sumout\) # (\inst2|sum[3]~2_combout\)) ) ) # ( !\inst2|sum[1]~0_combout\ & ( (!\inst2|sum[2]~1_combout\ & (!\inst2|sum[3]~2_combout\ & 
-- \inst2|Add0~17_sumout\)) # (\inst2|sum[2]~1_combout\ & (\inst2|sum[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_sum[2]~1_combout\,
	datab => \inst2|ALT_INV_sum[3]~2_combout\,
	datac => \inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst2|ALT_INV_sum[1]~0_combout\,
	combout => \U08|Mux5~0_combout\);

-- Location: LABCELL_X40_Y1_N12
\U08|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux6~0_combout\ = ( \inst2|sum[1]~0_combout\ & ( (!\inst2|sum[3]~2_combout\ & ((!\inst2|sum[2]~1_combout\) # (!\inst2|Add0~17_sumout\))) ) ) # ( !\inst2|sum[1]~0_combout\ & ( !\inst2|sum[3]~2_combout\ $ (!\inst2|sum[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sum[3]~2_combout\,
	datac => \inst2|ALT_INV_sum[2]~1_combout\,
	datad => \inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst2|ALT_INV_sum[1]~0_combout\,
	combout => \U08|Mux6~0_combout\);

-- Location: LABCELL_X43_Y1_N45
\U07|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux0~0_combout\ = ( \U02|13~q\ & ( !\U02|16~q\ $ (((\U02|15~q\) # (\U02|14~q\))) ) ) # ( !\U02|13~q\ & ( (!\U02|14~q\ & ((\U02|15~q\))) # (\U02|14~q\ & (\U02|16~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101110011001001100111001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_14~q\,
	datab => \U02|ALT_INV_16~q\,
	datad => \U02|ALT_INV_15~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux0~0_combout\);

-- Location: LABCELL_X39_Y1_N27
\U07|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux1~0_combout\ = ( \U02|13~q\ & ( (!\U02|14~q\ & ((\U02|15~q\))) # (\U02|14~q\ & (\U02|16~q\)) ) ) # ( !\U02|13~q\ & ( (!\U02|14~q\ & (\U02|16~q\ & \U02|15~q\)) # (\U02|14~q\ & ((\U02|15~q\) # (\U02|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_14~q\,
	datab => \U02|ALT_INV_16~q\,
	datad => \U02|ALT_INV_15~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux1~0_combout\);

-- Location: LABCELL_X43_Y1_N51
\U07|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux2~0_combout\ = ( \U02|13~q\ & ( (\U02|16~q\ & ((\U02|14~q\) # (\U02|15~q\))) ) ) # ( !\U02|13~q\ & ( (!\U02|15~q\ & ((\U02|14~q\))) # (\U02|15~q\ & (\U02|16~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_15~q\,
	datac => \U02|ALT_INV_16~q\,
	datad => \U02|ALT_INV_14~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux2~0_combout\);

-- Location: LABCELL_X43_Y1_N42
\U07|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux3~0_combout\ = ( \U02|13~q\ & ( (!\U02|14~q\ & (!\U02|16~q\ $ (\U02|15~q\))) # (\U02|14~q\ & ((\U02|15~q\) # (\U02|16~q\))) ) ) # ( !\U02|13~q\ & ( (!\U02|14~q\ & ((\U02|15~q\))) # (\U02|14~q\ & (\U02|16~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101110010111100101111001011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_14~q\,
	datab => \U02|ALT_INV_16~q\,
	datac => \U02|ALT_INV_15~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux3~0_combout\);

-- Location: LABCELL_X39_Y1_N24
\U07|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux4~0_combout\ = ( \U02|13~q\ ) # ( !\U02|13~q\ & ( (!\U02|14~q\ & ((\U02|15~q\))) # (\U02|14~q\ & (\U02|16~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U02|ALT_INV_16~q\,
	datac => \U02|ALT_INV_14~q\,
	datad => \U02|ALT_INV_15~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux4~0_combout\);

-- Location: LABCELL_X43_Y1_N54
\U07|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux5~0_combout\ = ( \U02|13~q\ & ( (!\U02|16~q\ $ (\U02|15~q\)) # (\U02|14~q\) ) ) # ( !\U02|13~q\ & ( (!\U02|15~q\ & ((\U02|14~q\))) # (\U02|15~q\ & (\U02|16~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111000011111111111100001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U02|ALT_INV_16~q\,
	datac => \U02|ALT_INV_15~q\,
	datad => \U02|ALT_INV_14~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux5~0_combout\);

-- Location: LABCELL_X43_Y1_N0
\U07|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux6~0_combout\ = ( \U02|13~q\ & ( (!\U02|16~q\ & (!\U02|15~q\ $ (!\U02|14~q\))) # (\U02|16~q\ & (!\U02|15~q\ & !\U02|14~q\)) ) ) # ( !\U02|13~q\ & ( !\U02|16~q\ $ (((!\U02|15~q\ & !\U02|14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110000111100110000000011110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U02|ALT_INV_16~q\,
	datac => \U02|ALT_INV_15~q\,
	datad => \U02|ALT_INV_14~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux6~0_combout\);

-- Location: LABCELL_X40_Y1_N42
\U06|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux0~0_combout\ = ( \U02|17~q\ & ( !\U02|20~q\ $ (((\U02|19~q\) # (\U02|18~q\))) ) ) # ( !\U02|17~q\ & ( (!\U02|18~q\ & ((\U02|19~q\))) # (\U02|18~q\ & (\U02|20~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101110010011100100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_18~q\,
	datab => \U02|ALT_INV_20~q\,
	datac => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_17~q\,
	combout => \U06|Mux0~0_combout\);

-- Location: LABCELL_X40_Y1_N45
\U06|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux1~0_combout\ = ( \U02|17~q\ & ( (!\U02|18~q\ & ((\U02|19~q\))) # (\U02|18~q\ & (\U02|20~q\)) ) ) # ( !\U02|17~q\ & ( (!\U02|18~q\ & (\U02|20~q\ & \U02|19~q\)) # (\U02|18~q\ & ((\U02|19~q\) # (\U02|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_18~q\,
	datac => \U02|ALT_INV_20~q\,
	datad => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_17~q\,
	combout => \U06|Mux1~0_combout\);

-- Location: LABCELL_X40_Y1_N18
\U06|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux2~0_combout\ = ( \U02|17~q\ & ( (\U02|20~q\ & ((\U02|19~q\) # (\U02|18~q\))) ) ) # ( !\U02|17~q\ & ( (!\U02|19~q\ & (\U02|18~q\)) # (\U02|19~q\ & ((\U02|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_18~q\,
	datab => \U02|ALT_INV_20~q\,
	datac => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_17~q\,
	combout => \U06|Mux2~0_combout\);

-- Location: LABCELL_X40_Y1_N21
\U06|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux3~0_combout\ = ( \U02|17~q\ & ( (!\U02|18~q\ & (!\U02|20~q\ $ (\U02|19~q\))) # (\U02|18~q\ & ((\U02|19~q\) # (\U02|20~q\))) ) ) # ( !\U02|17~q\ & ( (!\U02|18~q\ & ((\U02|19~q\))) # (\U02|18~q\ & (\U02|20~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110100101010111111010010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_18~q\,
	datac => \U02|ALT_INV_20~q\,
	datad => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_17~q\,
	combout => \U06|Mux3~0_combout\);

-- Location: LABCELL_X40_Y1_N57
\U06|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux4~0_combout\ = ( \U02|17~q\ ) # ( !\U02|17~q\ & ( (!\U02|18~q\ & ((\U02|19~q\))) # (\U02|18~q\ & (\U02|20~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_18~q\,
	datab => \U02|ALT_INV_20~q\,
	datac => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_17~q\,
	combout => \U06|Mux4~0_combout\);

-- Location: LABCELL_X40_Y1_N36
\U06|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux5~0_combout\ = ( \U02|20~q\ & ( (\U02|19~q\) # (\U02|18~q\) ) ) # ( !\U02|20~q\ & ( (!\U02|18~q\ & (!\U02|19~q\ & \U02|17~q\)) # (\U02|18~q\ & ((!\U02|19~q\) # (\U02|17~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101010001001101110101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_18~q\,
	datab => \U02|ALT_INV_19~q\,
	datad => \U02|ALT_INV_17~q\,
	dataf => \U02|ALT_INV_20~q\,
	combout => \U06|Mux5~0_combout\);

-- Location: LABCELL_X40_Y1_N54
\U06|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux6~0_combout\ = ( \U02|17~q\ & ( (!\U02|18~q\ & (!\U02|20~q\ $ (!\U02|19~q\))) # (\U02|18~q\ & (!\U02|20~q\ & !\U02|19~q\)) ) ) # ( !\U02|17~q\ & ( !\U02|20~q\ $ (((!\U02|18~q\ & !\U02|19~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110001101100011011000110110001101000011010000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_18~q\,
	datab => \U02|ALT_INV_20~q\,
	datac => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_17~q\,
	combout => \U06|Mux6~0_combout\);

-- Location: LABCELL_X43_Y1_N9
\U05|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux0~0_combout\ = ( \U01|15~q\ & ( \U01|13~q\ & ( \U01|16~q\ ) ) ) # ( !\U01|15~q\ & ( \U01|13~q\ & ( !\U01|14~q\ $ (\U01|16~q\) ) ) ) # ( \U01|15~q\ & ( !\U01|13~q\ & ( (!\U01|14~q\) # (\U01|16~q\) ) ) ) # ( !\U01|15~q\ & ( !\U01|13~q\ & ( 
-- (\U01|14~q\ & \U01|16~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111000011110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U01|ALT_INV_14~q\,
	datac => \U01|ALT_INV_16~q\,
	datae => \U01|ALT_INV_15~q\,
	dataf => \U01|ALT_INV_13~q\,
	combout => \U05|Mux0~0_combout\);

-- Location: LABCELL_X43_Y1_N18
\U05|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux1~0_combout\ = ( \U01|13~q\ & ( (!\U01|14~q\ & (\U01|15~q\)) # (\U01|14~q\ & ((\U01|16~q\))) ) ) # ( !\U01|13~q\ & ( (!\U01|15~q\ & (\U01|14~q\ & \U01|16~q\)) # (\U01|15~q\ & ((\U01|16~q\) # (\U01|14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_15~q\,
	datab => \U01|ALT_INV_14~q\,
	datac => \U01|ALT_INV_16~q\,
	dataf => \U01|ALT_INV_13~q\,
	combout => \U05|Mux1~0_combout\);

-- Location: LABCELL_X43_Y1_N21
\U05|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux2~0_combout\ = ( \U01|13~q\ & ( (\U01|16~q\ & ((\U01|14~q\) # (\U01|15~q\))) ) ) # ( !\U01|13~q\ & ( (!\U01|15~q\ & (\U01|14~q\)) # (\U01|15~q\ & ((\U01|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_15~q\,
	datab => \U01|ALT_INV_14~q\,
	datac => \U01|ALT_INV_16~q\,
	dataf => \U01|ALT_INV_13~q\,
	combout => \U05|Mux2~0_combout\);

-- Location: LABCELL_X43_Y1_N48
\U05|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux3~0_combout\ = ( \U01|13~q\ & ( (!\U01|14~q\ & (!\U01|15~q\ $ (\U01|16~q\))) # (\U01|14~q\ & ((\U01|16~q\) # (\U01|15~q\))) ) ) # ( !\U01|13~q\ & ( (!\U01|14~q\ & (\U01|15~q\)) # (\U01|14~q\ & ((\U01|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111000011001111111100001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U01|ALT_INV_14~q\,
	datac => \U01|ALT_INV_15~q\,
	datad => \U01|ALT_INV_16~q\,
	dataf => \U01|ALT_INV_13~q\,
	combout => \U05|Mux3~0_combout\);

-- Location: LABCELL_X43_Y1_N57
\U05|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux4~0_combout\ = ( \U01|13~q\ ) # ( !\U01|13~q\ & ( (!\U01|14~q\ & (\U01|15~q\)) # (\U01|14~q\ & ((\U01|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_15~q\,
	datac => \U01|ALT_INV_14~q\,
	datad => \U01|ALT_INV_16~q\,
	dataf => \U01|ALT_INV_13~q\,
	combout => \U05|Mux4~0_combout\);

-- Location: LABCELL_X43_Y1_N33
\U05|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux5~0_combout\ = ( \U01|15~q\ & ( \U01|13~q\ & ( (\U01|16~q\) # (\U01|14~q\) ) ) ) # ( !\U01|15~q\ & ( \U01|13~q\ & ( (!\U01|16~q\) # (\U01|14~q\) ) ) ) # ( \U01|15~q\ & ( !\U01|13~q\ & ( \U01|16~q\ ) ) ) # ( !\U01|15~q\ & ( !\U01|13~q\ & ( 
-- \U01|14~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111111110011111100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U01|ALT_INV_14~q\,
	datac => \U01|ALT_INV_16~q\,
	datae => \U01|ALT_INV_15~q\,
	dataf => \U01|ALT_INV_13~q\,
	combout => \U05|Mux5~0_combout\);

-- Location: LABCELL_X43_Y1_N3
\U05|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux6~0_combout\ = ( \U01|13~q\ & ( (!\U01|15~q\ & (!\U01|14~q\ $ (!\U01|16~q\))) # (\U01|15~q\ & (!\U01|14~q\ & !\U01|16~q\)) ) ) # ( !\U01|13~q\ & ( !\U01|16~q\ $ (((!\U01|15~q\ & !\U01|14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000001011010101000000101101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_15~q\,
	datac => \U01|ALT_INV_14~q\,
	datad => \U01|ALT_INV_16~q\,
	dataf => \U01|ALT_INV_13~q\,
	combout => \U05|Mux6~0_combout\);

-- Location: MLABCELL_X42_Y2_N30
\U04|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux0~0_combout\ = ( \U01|18~q\ & ( \U01|20~q\ ) ) # ( !\U01|18~q\ & ( !\U01|19~q\ $ (((!\U01|17~q\) # (\U01|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001010110010101100100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_19~q\,
	datab => \U01|ALT_INV_20~q\,
	datac => \U01|ALT_INV_17~q\,
	dataf => \U01|ALT_INV_18~q\,
	combout => \U04|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y2_N33
\U04|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux1~0_combout\ = ( \U01|18~q\ & ( ((\U01|19~q\ & !\U01|17~q\)) # (\U01|20~q\) ) ) # ( !\U01|18~q\ & ( (\U01|19~q\ & ((\U01|17~q\) # (\U01|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101110111001100110111011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_19~q\,
	datab => \U01|ALT_INV_20~q\,
	datad => \U01|ALT_INV_17~q\,
	dataf => \U01|ALT_INV_18~q\,
	combout => \U04|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y2_N36
\U04|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux2~0_combout\ = ( \U01|17~q\ & ( \U01|18~q\ & ( \U01|20~q\ ) ) ) # ( !\U01|17~q\ & ( \U01|18~q\ & ( (!\U01|19~q\) # (\U01|20~q\) ) ) ) # ( \U01|17~q\ & ( !\U01|18~q\ & ( (\U01|20~q\ & \U01|19~q\) ) ) ) # ( !\U01|17~q\ & ( !\U01|18~q\ & ( 
-- (\U01|20~q\ & \U01|19~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U01|ALT_INV_20~q\,
	datac => \U01|ALT_INV_19~q\,
	datae => \U01|ALT_INV_17~q\,
	dataf => \U01|ALT_INV_18~q\,
	combout => \U04|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y2_N0
\U04|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux3~0_combout\ = ( \U01|18~q\ & ( ((\U01|19~q\ & \U01|17~q\)) # (\U01|20~q\) ) ) # ( !\U01|18~q\ & ( !\U01|19~q\ $ (((!\U01|17~q\) # (\U01|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_19~q\,
	datac => \U01|ALT_INV_17~q\,
	datad => \U01|ALT_INV_20~q\,
	dataf => \U01|ALT_INV_18~q\,
	combout => \U04|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y2_N45
\U04|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux4~0_combout\ = ( \U01|18~q\ & ( (\U01|17~q\) # (\U01|20~q\) ) ) # ( !\U01|18~q\ & ( (\U01|17~q\) # (\U01|19~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_19~q\,
	datab => \U01|ALT_INV_20~q\,
	datad => \U01|ALT_INV_17~q\,
	dataf => \U01|ALT_INV_18~q\,
	combout => \U04|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y2_N42
\U04|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux5~0_combout\ = ( \U01|18~q\ & ( ((!\U01|19~q\) # (\U01|17~q\)) # (\U01|20~q\) ) ) # ( !\U01|18~q\ & ( (!\U01|20~q\ & (!\U01|19~q\ & \U01|17~q\)) # (\U01|20~q\ & (\U01|19~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U01|ALT_INV_20~q\,
	datac => \U01|ALT_INV_19~q\,
	datad => \U01|ALT_INV_17~q\,
	dataf => \U01|ALT_INV_18~q\,
	combout => \U04|Mux5~0_combout\);

-- Location: MLABCELL_X42_Y2_N12
\U04|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux6~0_combout\ = ( \U01|18~q\ & ( (!\U01|20~q\ & ((!\U01|19~q\) # (!\U01|17~q\))) ) ) # ( !\U01|18~q\ & ( !\U01|19~q\ $ (!\U01|20~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_19~q\,
	datac => \U01|ALT_INV_17~q\,
	datad => \U01|ALT_INV_20~q\,
	dataf => \U01|ALT_INV_18~q\,
	combout => \U04|Mux6~0_combout\);

-- Location: MLABCELL_X13_Y36_N0
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


