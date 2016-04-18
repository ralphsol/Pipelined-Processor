----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:56 03/11/2016 
-- Design Name: 
-- Module Name:    muxn4 - Behavioral 
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

entity muxn4 is
port( I0n4: 	in std_logic_vector(31 downto 0);
		I1n4: 	in std_logic_vector(31 downto 0);
		Sel_muxn4:	in std_logic;
		O_muxn4: 		out std_logic_vector(31 downto 0)
	);
end muxn4;

architecture Behavioral of muxn4 is

begin
	process(I0n4, I1n4, Sel_muxn4)
    begin
        case Sel_muxn4 is
            when '0' =>	O_muxn4 <= I0n4;
            when '1' => O_muxn4 <= I1n4;
				when others =>
        end case;
    end process;

end Behavioral;

