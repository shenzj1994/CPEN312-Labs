LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY ROM64x16 IS
	PORT
	(
		A, B, C, D, E, F : IN STD_LOGIC;
		clock		: IN STD_LOGIC  := '1';
		Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : OUT STD_LOGIC;
		Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15: OUT STD_LOGIC
	);
END ROM64x16;


ARCHITECTURE SYN OF rom64x16 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (5 DOWNTO 0);

	COMPONENT altsyncram
	GENERIC (
		clock_enable_input_a		: STRING;
		clock_enable_output_a		: STRING;
		init_file		: STRING;
		intended_device_family		: STRING;
		lpm_hint		: STRING;
		lpm_type		: STRING;
		numwords_a		: NATURAL;
		operation_mode		: STRING;
		outdata_aclr_a		: STRING;
		outdata_reg_a		: STRING;
		widthad_a		: NATURAL;
		width_a		: NATURAL;
		width_byteena_a		: NATURAL
	);
	PORT (
			clock0	: IN STD_LOGIC ;
			address_a	: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			q_a	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	
	Q15 <= sub_wire0(15);
	Q14 <= sub_wire0(14);
	Q13 <= sub_wire0(13);
	Q12 <= sub_wire0(12);
	Q11 <= sub_wire0(11);
	Q10 <= sub_wire0(10);
	Q9 <= sub_wire0(9);
	Q8 <= sub_wire0(8);
	Q7 <= sub_wire0(7);
	Q6 <= sub_wire0(6);
	Q5 <= sub_wire0(5);
	Q4 <= sub_wire0(4);
	Q3 <= sub_wire0(3);
	Q2 <= sub_wire0(2);
	Q1 <= sub_wire0(1);
	Q0 <= sub_wire0(0);
	
	sub_wire1(0)<=A;
	sub_wire1(1)<=B;
	sub_wire1(2)<=C;
	sub_wire1(3)<=D;
	sub_wire1(4)<=E;
	sub_wire1(5)<=F;

	altsyncram_component : altsyncram
	GENERIC MAP (
		clock_enable_input_a => "BYPASS",
		clock_enable_output_a => "BYPASS",
		init_file => "PSM_Program.mif",
		intended_device_family => "Stratix II",
		lpm_hint => "ENABLE_RUNTIME_MOD=NO",
		lpm_type => "altsyncram",
		numwords_a => 64,
		operation_mode => "ROM",
		outdata_aclr_a => "NONE",
		outdata_reg_a => "CLOCK0",
		widthad_a => 6,
		width_a => 16,
		width_byteena_a => 1
	)
	PORT MAP (
		clock0 => clock,
		address_a => sub_wire1,
		q_a => sub_wire0
	);

END SYN;
