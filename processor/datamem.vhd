----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:25:14 03/11/2016 
-- Design Name: 
-- Module Name:    datamem - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datamem is
port ( 	clock_dm	: 	in std_logic;
		rst_dm		: 	in std_logic;
		Mre		:	in std_logic;
		Mwe		:	in std_logic;
		address	:	in std_logic_vector(3 downto 0);			-- address
		data_in	:	in std_logic_vector(3 downto 0);			-- write data 
		data_out:	out std_logic_vector(3 downto 0)			-- read data
);
end datamem;

architecture Behavioral of datamem is

  type ram_type is array (0 to 255) of 
        		std_logic_vector(3 downto 0);
  signal tmp_ram: ram_type;

begin

	write:process(clock_dm, rst_dm, Mre, address, data_in)
	begin
		if rst_dm='1' then tmp_ram <= (tmp_ram'range => "0000");
		else
			if (clock_dm'event and clock_dm='1') then
				if (Mwe='1' and Mre='0') then
					tmp_ram(to_integer(unsigned(address))) <= data_in;
				end if;
			end if;
		end if;
	end process;

	read:process(clock_dm, rst_dm, Mwe, address)
	begin
		if rst_dm='1' then
			data_out<="0000";
		else
			if (clock_dm'event and clock_dm='1') then
				if (Mre='1' and Mwe='0') then
					data_out <= tmp_ram(to_integer(unsigned(address)));
				end if;
			end if;
		end if;
	end process;


end Behavioral;

