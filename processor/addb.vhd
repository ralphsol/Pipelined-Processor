----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:14:18 03/11/2016 
-- Design Name: 
-- Module Name:    addb - Behavioral 
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

entity addb is
port( I1_addb: 	in std_logic_vector(31 downto 0);
		I2_addb: 	in std_logic_vector(31 downto 0);
		O_addb: 	out std_logic_vector(31 downto 0)
	);
end addb;

architecture Behavioral of addb is

begin
	process(I1_addb, I2_addb)
    begin
		--O_addb <= I1_addb + I2_addb + 4;
		O_addb <= std_logic_vector(to_unsigned(to_integer(unsigned( I1_addb )) + to_integer(unsigned( I2_addb )) + 4, 32));
    end process;

end Behavioral;

