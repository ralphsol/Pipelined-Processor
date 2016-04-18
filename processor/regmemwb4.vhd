----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:00 04/04/2016 
-- Design Name: 
-- Module Name:    regmemwb4 - Behavioral 
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
entity regmemwb4 is
port (clock_regmemwb4	: 	in std_logic;
		regmemwb4_we	:	in std_logic;
		regmemwb4_data_in:	in std_logic;				-- write data 
		regmemwb4_data_out:	out std_logic				-- read data
);
end regmemwb4;

architecture Behavioral of regmemwb4 is

  signal tmp_ram: std_logic;

begin

	write:process(clock_regmemwb4, regmemwb4_we, regmemwb4_data_in)
	begin
		if (clock_regmemwb4'event and clock_regmemwb4='1') then
			if (regmemwb4_we='1') then
				tmp_ram <= regmemwb4_data_in;
			end if;
			regmemwb4_data_out <= tmp_ram;
		end if;
	end process;

end Behavioral;

