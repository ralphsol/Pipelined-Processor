----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:00 04/04/2016 
-- Design Name: 
-- Module Name:    regidex8 - Behavioral 
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
entity regidex8 is
port (clock_regidex8	: 	in std_logic;
		regidex8_we	:	in std_logic;
		regidex8_data_in:	in std_logic;				-- write data 
		regidex8_data_out:	out std_logic				-- read data
);
end regidex8;

architecture Behavioral of regidex8 is

  signal tmp_ram: std_logic;

begin

	write:process(clock_regidex8, regidex8_we, regidex8_data_in)
	begin
		if (clock_regidex8'event and clock_regidex8='1') then
			if (regidex8_we='1') then
				tmp_ram <= regidex8_data_in;
			end if;
			regidex8_data_out <= tmp_ram;
		end if;
	end process;

end Behavioral;

