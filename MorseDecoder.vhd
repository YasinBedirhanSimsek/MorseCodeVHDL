----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:16:32 01/14/2022 
-- Design Name: 
-- Module Name:    MorseDecoder - Behavioral 
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

entity MorseDecoder is
    Port ( LED0 : out  STD_LOGIC;
           LED1 : out  STD_LOGIC;
           LED2 : out  STD_LOGIC;
           LED3 : out  STD_LOGIC;
           LED4 : out  STD_LOGIC;
           LED5 : out  STD_LOGIC;
           LED6 : out  STD_LOGIC;
           LED7 : out  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  BTN_RESET : in STD_LOGIC;
           BTN_PUSH : in  STD_LOGIC;
           BTN_SAVE : in  STD_LOGIC;
			  BTN_NL : in  STD_LOGIC;
			  BTN_DELETE : in  STD_LOGIC;
			  --LCD--
			  SF_D : out bit_vector(3 downto 0);
			  LCD_E, LCD_RS, LCD_RW, SF_CE0 : out bit);
			  		  
end MorseDecoder;

architecture Behavioral of MorseDecoder is

--State definitions
type STATE_TYPE is (RESET, IDLE, COUNT_PRESS, SAVE_PRESS, SAVE_CHARACTER, WRITE_TO_LCD, SWITCH_LINE, DELETE_CHAR);

--State signal
signal current_state : STATE_TYPE := RESET;

--10ms clock signals
signal   clk_10ms_timer   : integer   := 0;
signal   clk_10ms_flag    : STD_LOGIC := '0';
constant clk_10ms_limit   : integer   := 500_000 / 2;

--5 cycle clock signals
signal clk_5cycle_timer : integer := 0;

--Morse signals
signal push_timer : integer := 0;
type int_array_type is array(0 to 3) of integer;
signal morse_char : int_array_type := (others => 0);
signal morse_idx  : integer range 0 to 3 := 0;
signal morse_encoded : bit_vector(7 downto 0) := (others => '0');

--Button signals
signal BTN_PUSH_pressed : std_logic := '0';
signal BTN_SAVE_pressed : std_logic := '0';
signal BTN_RESET_pressed : std_logic := '0';
signal BTN_NL_pressed : std_logic := '0';
signal BTN_DELETE_pressed : std_logic := '0';

--LCD control signals
signal lcd_buffer : bit_vector(7 downto 0);
signal lcd_enable : std_logic := '0';
signal lcd_switch_line_enable : std_logic := '0';
signal lcd_delete_char_enable : std_logic := '0';

begin

--Button controllers
BTN_PUSH_CONTROLLER : entity work.ButtonController(Behavioral) port map (CLK => clk_10ms_flag,  CHECK_TYPE => "00", BTN_VAL => BTN_PUSH, BTN_PRESSED => BTN_PUSH_pressed);
BTN_SAVE_CONTROLLER : entity work.ButtonController(Behavioral) port map (CLK => clk_10ms_flag,  CHECK_TYPE => "01", BTN_VAL => BTN_SAVE, BTN_PRESSED => BTN_SAVE_pressed);
BTN_RESET_CONTROLLER : entity work.ButtonController(Behavioral) port map (CLK => clk_10ms_flag, CHECK_TYPE => "00", BTN_VAL => BTN_RESET, BTN_PRESSED => BTN_RESET_pressed);
BTN_NL_CONTROLLER : entity work.ButtonController(Behavioral) port map (CLK => clk_10ms_flag,  CHECK_TYPE => "10", BTN_VAL => BTN_NL, BTN_PRESSED => BTN_NL_pressed);
BTN_DELETE_CONTROLLER : entity work.ButtonController(Behavioral) port map (CLK => clk_10ms_flag,  CHECK_TYPE => "01", BTN_VAL => BTN_DELETE, BTN_PRESSED => BTN_DELETE_pressed);

--LCD controller
LCD_CONTROLLER : entity work.LCD(behavior) port map (clk => CLK, 
																	  reset => BTN_RESET, 
																	  SF_D => SF_D,
																	  LCD_E=> LCD_E, 
																	  LCD_RS => LCD_RS,
																	  LCD_RW => LCD_RW,
																	  SF_CE0 => SF_CE0,
																	  MORSE_INPUT => lcd_buffer,
																	  MORSE_INPUT_ENABLE => lcd_enable,
																	  MORSE_LINE_SWITCH => lcd_switch_line_enable,
																	  MORSE_DELETE_CHAR => lcd_delete_char_enable);
																	  
--Encoded Morse Character Look Up Table
MORSE_LOOK_TABLE : entity work.MorseLookUpTable(Behavioral) port map (MORSE_CHAR_IN => morse_encoded, ASCII_CHAR_OUT => lcd_buffer);															 

--Generates 10ms clock on clk_10ms_flag
CLK_PROCESS : PROCESS(CLK) begin

	if(CLK'EVENT and CLK = '1') then
	
		clk_10ms_timer <= clk_10ms_timer + 1;
		
		if(clk_10ms_timer = clk_10ms_limit) then 
			clk_10ms_flag <= not clk_10ms_flag; 
			clk_10ms_timer <= 0;
		end if;
	
	end if;

END PROCESS CLK_PROCESS;
--

--General State Machine
STATE_MACHINE: PROCESS(clk_10ms_flag) begin

	if(clk_10ms_flag'EVENT and clk_10ms_flag = '1') then
	
		case current_state is
		
				when RESET =>
					current_state <= IDLE;
					LED0 <= '0';
					LED1 <= '0';
					LED2 <= '0';
					LED3 <= '0';
					LED4 <= '0';
					LED5 <= '0';
					LED6 <= '0';
					LED7 <= '0';
					push_timer <= 0;
					morse_char(0) <= 0;
					morse_char(1) <= 0;
					morse_char(2) <= 0;
					morse_char(3) <= 0;
					morse_idx  <= 0;
		
            when IDLE =>				
					if BTN_PUSH_pressed = '1' then
						current_state <= COUNT_PRESS;
					elsif BTN_SAVE_pressed = '1' then
						current_state <= SAVE_CHARACTER;
					elsif BTN_RESET_pressed = '1' then
						current_state <= RESET;
					elsif BTN_NL_pressed = '1' then
						current_state <= SWITCH_LINE;
					elsif BTN_DELETE_pressed = '1' then
						current_state <= DELETE_CHAR;
					else
						current_state <= IDLE;
					end if;
							 
            when COUNT_PRESS =>
					if BTN_PUSH_pressed = '1' then
						current_state <= COUNT_PRESS;
						push_timer <= push_timer + 1;
					elsif BTN_RESET_pressed = '1' then
						current_state <= RESET;
					else
						current_state <= SAVE_PRESS;
					end if;
					
				when SAVE_PRESS =>
					morse_char(morse_idx) <= push_timer;
					morse_idx <= morse_idx + 1;
					push_timer <= 0;
					current_state <= IDLE;
					if BTN_RESET_pressed = '1' then
						current_state <= RESET;
					end if;
				
				when SAVE_CHARACTER =>				
					-------------------------------------------------------
					if morse_char(0) = 0 then
						LED0 <= '0';
						LED1 <= '0';
						morse_encoded(0) <= '0';
						morse_encoded(1) <= '0';
						
					elsif morse_char(0) < 100 then
						LED0 <= '1';
						LED1 <= '0';
						morse_encoded(0) <= '1';
						morse_encoded(1) <= '0';
					else
						LED0 <= '1';
						LED1 <= '1';
						morse_encoded(0) <= '1';
						morse_encoded(1) <= '1';
					end if;
					-------------------------------------------------------
					if morse_char(1) = 0 then
						LED2 <= '0';
						LED3 <= '0';
						morse_encoded(2) <= '0';
						morse_encoded(3) <= '0';
					elsif morse_char(1) < 100 then
						LED2 <= '1';
						LED3 <= '0';
						morse_encoded(2) <= '1';
						morse_encoded(3) <= '0';
					else
						LED2 <= '1';
						LED3 <= '1';
						morse_encoded(2) <= '1';
						morse_encoded(3) <= '1';
					end if;
					-------------------------------------------------------
					if morse_char(2) = 0 then
						LED4 <= '0';
						LED5 <= '0';
						morse_encoded(4) <= '0';
						morse_encoded(5) <= '0';
					elsif morse_char(2) < 100 then
						LED4 <= '1';
						LED5 <= '0';
						morse_encoded(4) <= '1';
						morse_encoded(5) <= '0';						
					else
						LED4 <= '1';
						LED5 <= '1';
						morse_encoded(4) <= '1';
						morse_encoded(5) <= '1';
					end if;
					-------------------------------------------------------
					if morse_char(3) = 0 then
						LED6 <= '0';
						LED7 <= '0';
						morse_encoded(6) <= '0';
						morse_encoded(7) <= '0';	
					elsif morse_char(3) < 100 then
						LED6 <= '1';
						LED7 <= '0';
						morse_encoded(6) <= '1';
						morse_encoded(7) <= '0';
					else
						LED6 <= '1';
						LED7 <= '1';
						morse_encoded(6) <= '1';
						morse_encoded(7) <= '1';
					end if;
					-------------------------------------------------------
					morse_char(0) <= 0;
					morse_char(1) <= 0;
					morse_char(2) <= 0;
					morse_char(3) <= 0;
					morse_idx  <= 0;
					current_state <= WRITE_TO_LCD;
					
					if BTN_RESET_pressed = '1' then
						current_state <= RESET;
					end if;				
				
				when WRITE_TO_LCD =>	
					current_state <= IDLE;
					
				when SWITCH_LINE =>
					current_state <= IDLE;
					
				when DELETE_CHAR =>
					current_state <= IDLE;
					
            when others => 
					current_state <= RESET;
                
		end case;
		
	end if;
	
END PROCESS STATE_MACHINE;
--

LCD_SEND : PROCESS(CLK, current_state) begin

	if (CLK'EVENT and CLK = '1') then	
	
		if(current_state = WRITE_TO_LCD) then	
		
			clk_5cycle_timer <= clk_5cycle_timer + 1;
		
			if (clk_5cycle_timer < 5)then
				lcd_enable <= '1';		
			else		
				lcd_enable <= '0';			
			end if;
			
		elsif (current_state = SWITCH_LINE) then 
			clk_5cycle_timer <= clk_5cycle_timer + 1;
		
			if (clk_5cycle_timer < 5) then
				lcd_switch_line_enable <= '1';		
			else		
				lcd_switch_line_enable <= '0';			
			end if;	
			
		elsif (current_state = DELETE_CHAR) then
			clk_5cycle_timer <= clk_5cycle_timer + 1;
		
			if (clk_5cycle_timer < 5) then
				lcd_delete_char_enable <= '1';		
			else		
				lcd_delete_char_enable <= '0';			
			end if;
			
		else	
		
			clk_5cycle_timer <= 0;
			lcd_enable <= '0';	
			lcd_switch_line_enable <= '0';
			lcd_delete_char_enable <= '0';
			
		end if;
		
	end if;
	
END PROCESS LCD_SEND;

end Behavioral;

