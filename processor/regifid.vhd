----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:00 04/04/2016 
-- Design Name: 
-- Module Name:    regifid - Behavioral 
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
entity regifid is
port (clock_regifid	: 	in std_logic;
		regifid_we	:	in std_logic;
		regifid_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regifid_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end regifid;

architecture Behavioral of regifid is

  signal tmp_ram: std_logic_vector(31 downto 0);

begin

	write:process(clock_regifid, regifid_we, regifid_data_in)
	begin
		if (clock_regifid'event and clock_regifid='1') then
			if (regifid_we='1') then
				tmp_ram <= regifid_data_in;
			end if;
			regifid_data_out <= tmp_ram;
		end if;
	end process;

end Behavioral;

