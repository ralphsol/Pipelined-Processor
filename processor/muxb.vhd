----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:00:37 03/11/2016 
-- Design Name: 
-- Module Name:    muxb - Behavioral 
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

entity muxb is
port( 	I0b: 	in std_logic_vector(31 downto 0);
		I1b: 	in std_logic_vector(31 downto 0);
		Sel_muxb:	in std_logic;
		O_muxb: 		out std_logic_vector(31 downto 0)
	);
end muxb;

architecture Behavioral of muxb is

begin
	process(I0b, I1b, Sel_muxb)
    begin
        case Sel_muxb is
            when '0' =>	O_muxb <= I0b;
            when '1' => O_muxb <= I1b;
				when others =>
        end case;
    end process;


end Behavioral;

