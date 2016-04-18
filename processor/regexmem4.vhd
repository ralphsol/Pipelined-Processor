----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:00 04/04/2016 
-- Design Name: 
-- Module Name:    regexmem4 - Behavioral 
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
entity regexmem4 is
port (clock_regexmem4	: 	in std_logic;
		regexmem4_we	:	in std_logic;
		regexmem4_data_in:	in std_logic_vector(1 downto 0);				-- write data
		regexmem4_data_out:	out std_logic_vector(1 downto 0)				-- MW MR
);
end regexmem4;

architecture Behavioral of regexmem4 is

  signal tmp_ram: std_logic_vector(1 downto 0);

begin

	write:process(clock_regexmem4, regexmem4_we, regexmem4_data_in)
	begin
		if (clock_regexmem4'event and clock_regexmem4='1') then
			if (regexmem4_we='1') then
				tmp_ram <= regexmem4_data_in;
			end if;
			regexmem4_data_out <= tmp_ram;
		end if;
	end process;

end Behavioral;

