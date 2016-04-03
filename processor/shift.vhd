----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:09:54 03/11/2016 
-- Design Name: 
-- Module Name:    shift - Behavioral 
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

entity shift is
port( I_Shift: 	in std_logic_vector(23 downto 0);
		O_Shift: 	out std_logic_vector(31 downto 0)
	);
end shift;

architecture Behavioral of shift is
begin
	process(I_Shift)
    begin
		O_Shift <= I_Shift(23)&I_Shift(23)&I_Shift(23)&I_Shift(23)&I_Shift(23)&I_Shift(23)&I_Shift&"00";
    end process;

end Behavioral;

