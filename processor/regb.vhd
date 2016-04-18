----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:19:12 04/04/2016 
-- Design Name: 
-- Module Name:    regb - Behavioral 
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

entity regb is
port (clock_rega	: 	in std_logic;
		regb_we		:	in std_logic_vector(;
		regb_data_in:	in std_logic_vector(31 downto 0);				-- write data 
		regb_data_out:	out std_logic_vector(31 downto 0)				-- read data
);
end regb;

architecture Behavioral of regb is

begin


end Behavioral;

