library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity add_sub is
    port(
        a, b     : in   std_logic_vector(7 downto 0); -- input binary numbers.
        carry_in : in   std_logic;
		  c		  : in 	std_logic;
        sum      : out  std_logic_vector(7 downto 0); 
        carry    : out  std_logic  
    );
end add_sub;

architecture a of add_sub is
	signal sum_temp : std_logic_vector(8 downto 0);
begin

	process(a, b, sum_temp, carry_in)
	begin
		if c='1' then
		 --	Add
		 sum_temp <= ('0' & a) + ('0' & b);
		 carry <= sum_temp(8);
		 sum <= sum_temp(7 downto 0);
		else
		 --	Sub
		 sum_temp <= ('0' & a) - ('0' & b);
		 carry <= sum_temp(8);
		 sum <= sum_temp(7 downto 0);
		end if;
		 
	end process;   

end a;