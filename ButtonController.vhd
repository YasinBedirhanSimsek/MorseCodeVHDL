----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:09:21 01/14/2022 
-- Design Name: 
-- Module Name:    ButtonController - Behavioral 
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

entity ButtonController is
    Port ( CLK : in  STD_LOGIC;
			  CHECK_TYPE : in  STD_LOGIC_VECTOR(1 downto 0);
           BTN_VAL : in  STD_LOGIC;
           BTN_PRESSED : out  STD_LOGIC);
end ButtonController;

architecture Behavioral of ButtonController is

signal BTN_VAL_PREV : STD_LOGIC := '0';

begin

process (CLK) begin

	if(CLK'EVENT and CLK = '1') then
		
			case CHECK_TYPE is 
				
				when "00" =>
					if not (BTN_VAL = BTN_VAL_PREV) then
						if(BTN_VAL = '1') then
							BTN_PRESSED <= '1';
						else
							BTN_PRESSED <= '0';
						end if;
						BTN_VAL_PREV <= BTN_VAL;				
					end if;
					
				when "01" =>
					if not (BTN_VAL = BTN_VAL_PREV) then
						if(BTN_VAL = '1') then
							BTN_PRESSED <= '1';
						end if;
						BTN_VAL_PREV <= BTN_VAL;
					else
						BTN_PRESSED <= '0';
					end if;
					
				when "10" =>
					if not (BTN_VAL = BTN_VAL_PREV) then
						BTN_PRESSED <= '1';
						BTN_VAL_PREV <= BTN_VAL;
					else
						BTN_PRESSED <= '0';
					end if;
					
				when others =>
					BTN_PRESSED <= '0';
					
			end case;
			
	end if;
	
end process;

end Behavioral;
	
		
		

