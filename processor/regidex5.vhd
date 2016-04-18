----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:00 04/04/2016 
-- Design Name: 
-- Module Name:    regidex5 - Behavioral 
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
entity regidex5 is
port (clock_regidex5	: 	in std_logic;
		regidex5_we	:	in std_logic;
		regidex5_data_in:	in std_logic_vector(3 downto 0);				-- write data 
		regidex5_data_out:	out std_logic_vector(3 downto 0)				-- read data
);
end regidex5;

architecture Behavioral of regidex5 is

  signal tmp_ram: std_logic_vector(3 downto 0);

begin

	write:process(clock_regidex5, regidex5_we, regidex5_data_in)
	begin
		if (clock_regidex5'event and clock_regidex5='1') then
			if (regidex5_we='1') then
				tmp_ram <= regidex5_data_in;
			end if;
			regidex5_data_out <= tmp_ram;
		end if;
	end process;

end Behavioral;

