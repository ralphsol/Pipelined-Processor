----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:00 04/04/2016 
-- Design Name: 
-- Module Name:    regexmem5 - Behavioral 
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
entity regexmem5 is
port (clock_regexmem5	: 	in std_logic;
		regexmem5_we	:	in std_logic;
		regexmem5_data_in:	in std_logic;				-- write data 
		regexmem5_data_out:	out std_logic				-- read data
);
end regexmem5;

architecture Behavioral of regexmem5 is

  signal tmp_ram: std_logic;

begin

	write:process(clock_regexmem5, regexmem5_we, regexmem5_data_in)
	begin
		if (clock_regexmem5'event and clock_regexmem5='1') then
			if (regexmem5_we='1') then
				tmp_ram <= regexmem5_data_in;
			end if;
			regexmem5_data_out <= tmp_ram;
		end if;
	end process;

end Behavioral;

