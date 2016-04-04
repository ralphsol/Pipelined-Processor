----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:54:10 04/04/2016 
-- Design Name: 
-- Module Name:    muxn2 - Behavioral 
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

entity muxn3 is
port( I0n3: 	in std_logic_vector(31 downto 0);
		I1n3: 	in std_logic_vector(31 downto 0);
		I2n3: 	in std_logic_vector(31 downto 0);
		Sel_muxn3:	in std_logic_vector(1 downto 0);
		O_muxn3: 	out std_logic_vector(31 downto 0)
	);
end muxn3;

architecture Behavioral of muxn3 is

begin
	process(I0n3, I1n3, I2n3, Sel_muxn3)
    begin
        case Sel_muxn3 is
            when "00" => O_muxn3 <= I0n3;
            when "01" => O_muxn3 <= I1n3;
            when "10" => O_muxn3 <= I2n3;
				when others =>
        end case;
    end process;


end Behavioral;

