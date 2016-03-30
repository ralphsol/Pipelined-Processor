----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:56 03/11/2016 
-- Design Name: 
-- Module Name:    muxa - Behavioral 
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

entity muxa is
port( 	I0a: 	in std_logic_vector(3 downto 0);
		I1a: 	in std_logic_vector(3 downto 0);
		Sel_muxa:	in std_logic;
		O_muxa: 		out std_logic_vector(3 downto 0)
	);
end muxa;

architecture Behavioral of muxa is

begin
	process(I0a, I1a, Sel_muxa)
    begin
        case Sel_muxa is
            when '0' =>	O_muxa <= I0a;
            when '1' => O_muxa <= I1a;
				when others =>
        end case;
    end process;

end Behavioral;

