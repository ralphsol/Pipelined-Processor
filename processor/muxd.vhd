----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:01:14 03/11/2016 
-- Design Name: 
-- Module Name:    muxd - Behavioral 
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

entity muxd is
port( I0d: 	in std_logic_vector(31 downto 0);
		I1d: 	in std_logic_vector(31 downto 0);
		Sel_muxd:	in std_logic;
		O_muxd: 		out std_logic_vector(31 downto 0)
	);
end muxd;

architecture Behavioral of muxd is

begin
	process(I0d, I1d, Sel_muxd)
    begin
        case Sel_muxd is
            when '0' =>	O_muxd <= I0d;
            when '1' => O_muxd <= I1d;
				when others =>
        end case;
    end process;


end Behavioral;

