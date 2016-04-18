----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:47 04/14/2016 
-- Design Name: 
-- Module Name:    reg_curr_state - Behavioral 
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

entity reg_curr_state is
port (clock_reg_curr_state		: 	in std_logic;
		reg_curr_state_we			:	in std_logic;
		reg_curr_state_data_in	:	in std_logic_vector(23 downto 0);				-- write data 
		reg_curr_state_data_out	:	out std_logic_vector(23 downto 0)				-- read data
);
end reg_curr_state;

architecture Behavioral of reg_curr_state is

  signal tmp_ram: std_logic_vector(23 downto 0);

begin

	write:process(clock_reg_curr_state, reg_curr_state_we, reg_curr_state_data_in)
	begin
		if (clock_reg_curr_state'event and clock_reg_curr_state='1') then
			if (reg_curr_state_we='1') then
				tmp_ram <= reg_curr_state_data_in;
			end if;
			reg_curr_state_data_out <= tmp_ram;
		end if;
	end process;

end Behavioral;

