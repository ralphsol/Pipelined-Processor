----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:00 04/04/2016 
-- Design Name: 
-- Module Name:    regidex6 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--  write is 1 then the same input or if write is 0 then the previous input
entity regidex6 is
port (clock_regidex6	: 	in std_logic;
		regidex6_we	:	in std_logic;
		regidex6_data_in:	in std_logic;				-- write data 
		regidex6_data_out:	out std_logic			-- read data
);
end regidex6;

architecture Behavioral of regidex6 is

  signal tmp_ram: std_logic;

begin

	write:process(clock_regidex6, regidex6_we, regidex6_data_in)
	begin
		if (clock_regidex6'event and clock_regidex6='1') then
			if (regidex6_we='1') then
				tmp_ram <= regidex6_data_in;
			end if;
			regidex6_data_out <= tmp_ram;
		end if;
	end process;

end Behavioral;

