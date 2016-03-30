----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:09:40 03/11/2016 
-- Design Name: 
-- Module Name:    extend - Behavioral 
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

entity extend is
port( I_extend: 	in std_logic_vector(11 downto 0);
		O_extend: 	out std_logic_vector(31 downto 0)
	);
end extend;

architecture Behavioral of extend is

begin
	process(I_extend)
    begin
		O_extend <= "00000000000000000000"&I_extend;
    end process;


end Behavioral;

