----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:01:03 03/11/2016 
-- Design Name: 
-- Module Name:    muxc - Behavioral 
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

entity muxc is
port( 	I0c: 	in std_logic_vector(31 downto 0);
		I1c: 	in std_logic_vector(31 downto 0);
		Sel_muxc:	in std_logic;
		O_muxc: 		out std_logic_vector(31 downto 0)
	);
end muxc;

architecture Behavioral of muxc is

begin
	process(I0c, I1c, Sel_muxc)
    begin
        case Sel_muxc is
            when '0' =>	O_muxc <= I0c;
            when '1' => O_muxc <= I1c;
				when others =>
        end case;
    end process;


end Behavioral;

