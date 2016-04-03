----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:13:49 03/11/2016 
-- Design Name: 
-- Module Name:    add4 - Behavioral 
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

entity add4 is
port( 	I_add4: 	in std_logic_vector(31 downto 0);
		O_add4: 	out std_logic_vector(31 downto 0) := "00000000000000000000000000000000"
	);
end add4;

architecture Behavioral of add4 is

begin
	process(I_add4)
    begin
		--O_add4 <= I_add4 + "00000000000000000000000000000100";
		O_add4 <= std_logic_vector(to_unsigned(to_integer(unsigned( I_add4 )) + 4, 32));
    end process;


end Behavioral;

