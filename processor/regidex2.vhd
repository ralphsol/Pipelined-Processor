----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:00 04/04/2016 
-- Design Name: 
-- Module Name:    regidex2 - Behavioral 
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
entity regidex2 is
port (clock_regidex2	: 	in std_logic;
		regidex2_we	:	in std_logic;
		regidex2_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regidex2_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end regidex2;

architecture Behavioral of regidex2 is

  signal tmp_ram: std_logic_vector(31 downto 0);

begin

	write:process(clock_regidex2, regidex2_we, regidex2_data_in)
	begin
		if (clock_regidex2'event and clock_regidex2='1') then
			if (regidex2_we='1') then
				tmp_ram <= regidex2_data_in;
			end if;
			regidex2_data_out <= tmp_ram;
		end if;
	end process;

end Behavioral;

