----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:56 04/03/2016 
-- Design Name: 
-- Module Name:    actrl - Behavioral 
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

entity actrl is
port(	actrlin:	in std_logic_vector(5 downto 0);
		actrlout:	out std_logic_vector(5 downto 0)
);
end actrl;

architecture Behavioral of actrl is

begin
	process(actrlin)
	begin
		actrlout <= actrlin;
	end process;

end Behavioral;

