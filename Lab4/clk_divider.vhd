library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity clk_divider is
	port
	(
		clk		  : in std_logic;
		rst_n	  : in std_logic;
		out_clk	  : out std_logic
	);
end entity;

architecture rtl of clk_divider is

	signal  cnt	: std_logic_vector(25 downto 0); -- Max is 67108864
	signal  out_clk_r : std_logic;

begin

	process (clk, rst_n)
	begin
		if rst_n = '0' then
			cnt <= (others => '0');
			out_clk_r <= '0';
		elsif (rising_edge(clk)) then
			if cnt < 50000000 then
				cnt <= cnt + 1;
			else 
				cnt <= (others => '0');
			end if;
			if cnt < 25000000 then
				out_clk_r <= '1';
			else
				out_clk_r <= '0';
			end if;
		end if;
	end process;

	out_clk <= out_clk_r;
	
end rtl;
