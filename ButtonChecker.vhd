----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:41:15 01/14/2022 
-- Design Name: 
-- Module Name:    ButtonChecker - Behavioral 
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

entity ButtonChecker is
    Port ( CLK : in  STD_LOGIC;
           BTN_VAL : in  STD_LOGIC;
           IS_PRESSED : out  STD_LOGIC);
end ButtonChecker;

architecture Behavioral of ButtonChecker is

	signal BTN_VAL_PREV : STD_LOGIC := '0';

begin

STATE_MACHINE: PROCESS(CLK) 

begin
	if(CLK'EVENT and CLK = '1') then
		if not (BTN_VAL = BTN_VAL_PREV) then
			if(BTN_PUSH = '1') then
				led_stat <= not led_stat;
			end if;
			push_prev <= BTN_PUSH;
		end if;			
	end if;
END PROCESS STATE_MACHINE;

end Behavioral;

