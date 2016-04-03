----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:28 03/11/2016 
-- Design Name: 
-- Module Name:    IM - Behavioral 
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

entity IM is
port(	IMin:	  in std_logic_vector(31 downto 0);
		IMout: 	  out std_logic_vector(31 downto 0)
);
end IM;

architecture Behavioral of IM is
	type rf_type is array (0 to 3) of std_logic_vector(31 downto 0);
	signal tmp_rf: rf_type := ("00000000000000000011000000000001", "00000000000000000000000000000010", "00000000000000000000000000000001", "00000000000000000000000000000000");

begin
	process(IMin)
	begin
		IMout <= tmp_rf(to_integer(unsigned( IMin )));
	end process;

end Behavioral;

