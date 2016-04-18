----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:27 04/14/2016 
-- Design Name: 
-- Module Name:    state_ctrl - Behavioral 
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

entity state_ctrl is
port( curr_state	: 	in std_logic_vector(3 downto 0);	-- current state
		I_ir			:	in std_logic_vector(2 downto 0);	-- IR[27, 26, 20]
		next_state	: 	out std_logic_vector(3 downto 0)			-- next state
	);
end state_ctrl;

architecture Behavioral of state_ctrl is

begin
	process(curr_state, I_ir)
	begin
		next_state <= "0000";
		if (curr_state="0000") then
			if (I_ir="000" or I_ir="001") then
				next_state <= "0001";
			elsif (I_ir="010") then
				next_state <= "0001";
			elsif (I_ir="011") then
				next_state <= "0001";
			elsif (I_ir="100" or I_ir="101") then		
				next_state <= "0001";	
			end if;
		elsif (curr_state="0001") then
			if (I_ir="000" or I_ir="001") then
				next_state <= "0010";
			elsif (I_ir="010") then
				next_state <= "0100";
			elsif (I_ir="011") then
				next_state <= "0100";
			elsif (I_ir="100" or I_ir="101") then	
				next_state <= "1000";		
			end if;
		elsif (curr_state="0010") then
			if (I_ir="000" or I_ir="001") then
				next_state <= "0011";		
			end if;
		elsif (curr_state="0011") then
			if (I_ir="000" or I_ir="001") then
				next_state <= "0000";		
			end if;
		elsif (curr_state="0100") then
			if (I_ir="010") then
				next_state <= "0101";
			elsif (I_ir="011") then
				next_state <= "0110";
			end if;
		elsif (curr_state="0101") then
			if (I_ir="010") then
				next_state <= "0000";		
			end if;
		elsif (curr_state="0110") then
			if (I_ir="011") then
				next_state <= "0111";	
			end if;
		elsif (curr_state="0111") then
			if (I_ir="011") then
				next_state <= "0000";
			end if;
		elsif (curr_state="1000") then	
			if (I_ir="100" or I_ir="101") then	
				next_state <= "0000";		
			end if;	
		end if;
	end process;
end Behavioral;

