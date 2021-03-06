----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:15:04 04/14/2016 
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
port( ac_curr	: 	in std_logic_vector(3 downto 0);		-- curr_state : cs1 for opc
		ac_ir		:	in std_logic_vector(3 downto 0);		-- IR[24-21]
		ac_op		: 	out std_logic_vector(6 downto 0)		-- opc : IR[26-21]
	);
end actrl;

architecture Behavioral of actrl is

begin
	process(ac_curr, ac_ir)
	begin
		ac_op(3 downto 0) <= ac_ir;
	end process;
end Behavioral;

