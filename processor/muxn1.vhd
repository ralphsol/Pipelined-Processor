----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:56 03/11/2016 
-- Design Name: 
-- Module Name:    muxn1 - Behavioral 
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

entity muxn1 is
port( I0n1: 	in std_logic_vector(3 downto 0);
		I1n1: 	in std_logic_vector(3 downto 0);
		Sel_muxn1:	in std_logic;
		O_muxn1: 		out std_logic_vector(3 downto 0)
	);
end muxn1;

architecture Behavioral of muxn1 is

begin
	process(I0n1, I1n1, Sel_muxn1)
    begin
        case Sel_muxn1 is
            when '0' =>	O_muxn1 <= I0n1;
            when '1' => O_muxn1 <= I1n1;
				when others =>
        end case;
    end process;

end Behavioral;

