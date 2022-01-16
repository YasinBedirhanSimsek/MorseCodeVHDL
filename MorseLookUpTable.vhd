----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:19:28 01/15/2022 
-- Design Name: 
-- Module Name:    MorseLookUpTable - Behavioral 
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

entity MorseLookUpTable is
	PORT(MORSE_CHAR_IN  : in  bit_vector(7 downto 0);
		  ASCII_CHAR_OUT : out bit_vector(7 downto 0));
end MorseLookUpTable;

architecture Behavioral of MorseLookUpTable is

begin

	with MORSE_CHAR_IN select 
		ASCII_CHAR_OUT <= "01000001" when "00001101", --A .-
								"01000010" when "01010111", --B -...
								"01000011" when "01110111", --C -.-.
								"01000100" when "00010111", --D -..
								"01000101" when "00000001", --E .
								"01000110" when "01110101", --F ..-.
								"01000111" when "00011111", --G --.
								"01001000" when "01010101", --H ....
								"01001001" when "00000101", --I ..
								"01001010" when "11111101", --J .---
								"01001011" when "00110111", --K -.-
								"01001100" when "01011101", --L .-..
								"01001101" when "00001111", --M --
								"01001110" when "00000111", --N -.
								"01001111" when "00111111", --O ---
								"01010000" when "01111101", --P .--.
								"01010001" when "11011111", --Q --.-
								"01010010" when "00011101", --R .-.
								"01010011" when "00010101", --S ...
								"01010100" when "00000011", --T -
								"01010101" when "00110101", --U ..-
								"01010110" when "11010101", --V ...-
								"01010111" when "00111101", --W .--
								"01011000" when "11010111", --X -..-
								"01011001" when "11110111", --Y -.--
								"01011010" when "01011111", --Z --..
								"00000000" when others;

end Behavioral;

