library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.ALL;
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lcd is

	port(
		clk, reset : in STD_LOGIC;
		SF_D : out bit_vector(3 downto 0);
		LCD_E, LCD_RS, LCD_RW, SF_CE0 : out bit;
		MORSE_INPUT : in bit_vector(7 downto 0);
		MORSE_INPUT_ENABLE : in STD_LOGIC;
		MORSE_LINE_SWITCH : in STD_LOGIC;
		MORSE_DELETE_CHAR : in STD_LOGIC
	);
	
	end lcd;

architecture behavior of lcd is

	type tx_sequence is (high_setup, high_hold, oneus, low_setup, low_hold, fortyus, done);
	signal tx_state : tx_sequence := done;

	signal tx_byte : bit_vector(7 downto 0);
	signal tx_init : bit := '0';

	type init_sequence is (idle, fifteenms, one, two, three, four, five, six, seven, eight, done);
	signal init_state : init_sequence := idle;
	signal init_init, init_done : bit := '0';

	signal i : integer range 0 to 750000 := 0;
	signal i2 : integer range 0 to 2000 := 0;
	signal i3 : integer range 0 to 82000 := 0;

	signal SF_D0, SF_D1 : bit_vector(3 downto 0);
	signal LCD_E0, LCD_E1 : bit;
	signal mux : bit;
	
	signal line_switch_cmd : bit_vector(7 downto 0);
	signal top_line_cursor    : integer := 0;
	signal bottom_line_cursor : integer := 0;
	signal current_line : bit := '0';

	type display_state is (init, function_set, entry_set, set_display, clr_display, pause, set_addr, set_addr_40, write_morse_input, line_switch, cursor_shift_left_first, cursor_shift_left_second, whitespace, done);  
	
	signal cur_state : display_state := init;

begin
	SF_CE0 <= '1'; --disable intel strataflash
	LCD_RW <= '0'; --write only
	
	--The following "with" statements simplify the process of adding and removing states.
	--when to transmit a command/data and when not to

	with cur_state select
		tx_init <= '0' when init | pause | done, 
					  '1' when others;
					  
--control the bus
	with cur_state select mux <= '1' when init,
									     '0' when others;
										  									  
--control the initialization sequence
	with cur_state select init_init <= '1' when init,
												  '0' when others;
												  
--register select
	with cur_state select LCD_RS <= '0' when function_set|entry_set|set_display|clr_display|set_addr|set_addr_40|line_switch|cursor_shift_left_first|cursor_shift_left_second,
											  '1' when others;
											  								  
--what byte to transmit to lcd
--refer to datasheet for an explanation of these values
	with cur_state select
		tx_byte <=  "00101000" when function_set,
						"00000110" when entry_set,
						"00001100" when set_display,
						"00000001" when clr_display,
						"10000000" when set_addr,
						"11000000" when set_addr_40,
					   MORSE_INPUT when write_morse_input,
						line_switch_cmd when line_switch,
						"00010000" when cursor_shift_left_first | cursor_shift_left_second,
						"00100000" when whitespace,
						"00000000" when others;
						
	--main state machine
	display: process(clk, reset, MORSE_INPUT_ENABLE)
	begin
		if(reset='1') then
			cur_state <= function_set;
			top_line_cursor <= 0;
			bottom_line_cursor <= 0;
			current_line <= '0';
		elsif(clk='1' and clk'event) then
			case cur_state is
			--refer to intialize state machine below
				when init =>
					if(init_done = '1') then
						cur_state <= function_set;
					else
						cur_state <= init;
					end if;
				--every other state but pause uses the transmit state machine
				when function_set =>
					if(i2 = 2000) then
					cur_state <= entry_set;
					else
					cur_state <= function_set;
					end if;
					
				when entry_set =>
					if(i2 = 2000) then
					cur_state <= set_display;
					else
					cur_state <= entry_set;
					end if;
					
				when set_display =>
					if(i2 = 2000) then
					cur_state <= clr_display;
					else
					cur_state <= set_display;
					end if;
					
				when clr_display =>
					i3 <= 0;
					if(i2 = 2000) then
					cur_state <= pause;
					else
					cur_state <= clr_display;
					end if;
					
				when pause =>
					if(i3 = 82000) then
					cur_state <= set_addr;
					i3 <= 0;
					else
					cur_state <= pause;
					i3 <= i3 + 1;
					end if;
					
				when set_addr =>
					if(i2 = 2000) then
					cur_state <= done;
					else
					cur_state <= set_addr;
					end if;	
					
				when set_addr_40 =>
					if(i2 = 2000) then
					cur_state <= done;
					else
					cur_state <= set_addr_40;
					end if;
							
				when write_morse_input =>
					if(i2 = 2000) then
						cur_state <= done;
												
						if(top_line_cursor > 15) then
							top_line_cursor <= 0;
							cur_state <= set_addr;
						end if;
											
						if(bottom_line_cursor > 15) then
							bottom_line_cursor <= 0;
							cur_state <= set_addr;
						end if;
				
					else
						cur_state <= write_morse_input;
					end if;	

				when line_switch =>
					if(i2 = 2000) then
						cur_state <= done;
					else
						cur_state <= line_switch;
					end if;				
					
				when cursor_shift_left_first =>
					
					if(i2 = 2000) then
						cur_state <= whitespace;
					else
						cur_state <= cursor_shift_left_first;
					end if;
					
				when whitespace =>
					if(i2 = 2000) then
						cur_state <= cursor_shift_left_second;
					else
						cur_state <= whitespace;
					end if;	
					
				when cursor_shift_left_second =>
					
					if(i2 = 2000) then
						cur_state <= done;
					else
						cur_state <= cursor_shift_left_second;
					end if;
										
				when done =>			
					if (MORSE_INPUT_ENABLE = '1') then
					
						cur_state <= write_morse_input;
						
						if(current_line = '0') then
							top_line_cursor <= top_line_cursor + 1;
						else
							bottom_line_cursor <= bottom_line_cursor + 1;
						end if;
						
					elsif(MORSE_LINE_SWITCH = '1') then
					
						cur_state <= line_switch;

						if(current_line = '0') then
							current_line <= '1';
							case bottom_line_cursor is
								when 0 => line_switch_cmd  <= "11000000";
								when 1 => line_switch_cmd  <= "11000001";
								when 2 => line_switch_cmd  <= "11000010";
								when 3 => line_switch_cmd  <= "11000011";
								when 4 => line_switch_cmd  <= "11000100";
								when 5 => line_switch_cmd  <= "11000101";
								when 6 => line_switch_cmd  <= "11000110";
								when 7 => line_switch_cmd  <= "11000111";
								when 8 => line_switch_cmd  <= "11001000";
								when 9 => line_switch_cmd  <= "11001001";
								when 10 => line_switch_cmd <= "11001010";
								when 11 => line_switch_cmd <= "11001011";
								when 12 => line_switch_cmd <= "11001100";
								when 13 => line_switch_cmd <= "11001101";
								when 14 => line_switch_cmd <= "11001110";
								when 15 => line_switch_cmd <= "11001111";
								when others => line_switch_cmd <= "11000000";
							end case;
						else
							current_line <= '0';
							case top_line_cursor is
								when 0 => line_switch_cmd  <= "10000000";
								when 1 => line_switch_cmd  <= "10000001";
								when 2 => line_switch_cmd  <= "10000010";
								when 3 => line_switch_cmd  <= "10000011";
								when 4 => line_switch_cmd  <= "10000100";
								when 5 => line_switch_cmd  <= "10000101";
								when 6 => line_switch_cmd  <= "10000110";
								when 7 => line_switch_cmd  <= "10000111";
								when 8 => line_switch_cmd  <= "10001000";
								when 9 => line_switch_cmd  <= "10001001";
								when 10 => line_switch_cmd <= "10001010";
								when 11 => line_switch_cmd <= "10001011";
								when 12 => line_switch_cmd <= "10001100";
								when 13 => line_switch_cmd <= "10001101";
								when 14 => line_switch_cmd <= "10001110";
								when 15 => line_switch_cmd <= "10001111";
								when others => line_switch_cmd <= "10000000";
							end case;
						end if;	
						
					elsif (MORSE_DELETE_CHAR = '1') then
					
						cur_state <= cursor_shift_left_first;
					
						if(current_line = '0') then
							top_line_cursor <= top_line_cursor - 1;
						else
							bottom_line_cursor <= bottom_line_cursor - 1;
						end if;
						
					else
						cur_state <= done;
					end if;
			end case;
		end if;
	end process display;

	with mux select
		SF_D <= SF_D0 when '0', --transmit
		SF_D1 when others; --initialize
		
	with mux select
		LCD_E <= LCD_E0 when '0', --transmit
		LCD_E1 when others; --initialize
	
	--specified by datasheet
	transmit : process(clk, reset, tx_init)
	begin
		if(reset='1') then
		tx_state <= done;
		elsif(clk='1' and clk'event) then
		case tx_state is
			when high_setup => --40ns
				LCD_E0 <= '0';
				SF_D0 <= tx_byte(7 downto 4);
				if(i2 = 2) then
				tx_state <= high_hold;
				i2 <= 0;
				else
				tx_state <= high_setup;
				i2 <= i2 + 1;
				end if;
			
			when high_hold => --230ns
				LCD_E0 <= '1';
				SF_D0 <= tx_byte(7 downto 4);
				if(i2 = 12) then
				tx_state <= oneus;
				i2 <= 0;
				else
				tx_state <= high_hold;
				i2 <= i2 + 1;
				end if;
			
			when oneus =>
				LCD_E0 <= '0';
				if(i2 = 50) then
				tx_state <= low_setup;
				i2 <= 0;
				else
				tx_state <= oneus;
				i2 <= i2 + 1;
				end if;
			
			when low_setup =>
				LCD_E0 <= '0';
				SF_D0 <= tx_byte(3 downto 0);
				if(i2 = 2) then
				tx_state <= low_hold;
				i2 <= 0;
				else
				tx_state <= low_setup;
				i2 <= i2 + 1;
				end if;
			
			when low_hold =>
				LCD_E0 <= '1';
				SF_D0 <= tx_byte(3 downto 0);
				if(i2 = 12) then
				tx_state <= fortyus;
				i2 <= 0;
				else
				tx_state <= low_hold;
				i2 <= i2 + 1;
				end if;
			
			when fortyus =>
				LCD_E0 <= '0';
				if(i2 = 2000) then
				tx_state <= done;
				i2 <= 0;
				else
				tx_state <= fortyus;
				i2 <= i2 + 1;
				end if;
		
			when done =>
				LCD_E0 <= '0';
				if(tx_init = '1') then
				tx_state <= high_setup;
				i2 <= 0;
				else
				tx_state <= done;
				i2 <= 0;
			end if;
			end case;
			end if;
	end process transmit;
	
	--specified by datasheet
	power_on_initialize: process(clk, reset, init_init) --power on initialization sequence
	begin
		if(reset='1') then
		init_state <= idle;
		init_done <= '0';
		elsif(clk='1' and clk'event) then
		case init_state is
			when idle =>
			init_done <= '0';
			if(init_init = '1') then
			init_state <= fifteenms;
			i <= 0;
			else
			init_state <= idle;
			i <= i + 1;
			end if;
		when fifteenms =>
			init_done <= '0';
			if(i = 750000) then
			init_state <= one;
			i <= 0;
			else
			init_state <= fifteenms;
			i <= i + 1;
			end if;
		when one =>
			SF_D1 <= "0011";
			LCD_E1 <= '1';
			init_done <= '0';
			if(i = 11) then
			init_state<=two;
			i <= 0;
			else
			init_state<=one;
			i <= i + 1;
			end if;
		when two =>
			LCD_E1 <= '0';
			init_done <= '0';
			if(i = 205000) then
			init_state<=three;
			i <= 0;
			else
			init_state<=two;
			i <= i + 1;
			end if;
		when three =>
			SF_D1 <= "0011";
			LCD_E1 <= '1';
			init_done <= '0';
			if(i = 11) then
			init_state<=four;
			i <= 0;
			else
			init_state<=three;
			i <= i + 1;
			end if;
		when four =>
			LCD_E1 <= '0';
			init_done <= '0';
			if(i = 5000) then
			init_state<=five;
			i <= 0;
			else
			init_state<=four;
			i <= i + 1;
			end if;
		when five =>
			SF_D1 <= "0011";
			LCD_E1 <= '1';
			init_done <= '0';
			if(i = 11) then
			init_state<=six;
			i <= 0;
			else
			init_state<=five;
			i <= i + 1;
			end if;
		when six =>
			LCD_E1 <= '0';
			init_done <= '0';
			if(i = 2000) then
			init_state<=seven;
			i <= 0;
			else
			init_state<=six;
			i <= i + 1;
			end if;
		when seven =>
			SF_D1 <= "0010";
			LCD_E1 <= '1';
			init_done <= '0';
			if(i = 11) then
			init_state<=eight;
			i <= 0;
			else
			init_state<=seven;
			i <= i + 1;
			end if;
		when eight =>
			LCD_E1 <= '0';
			init_done <= '0';
			if(i = 2000) then
			init_state<=done;
			i <= 0;
			else
			init_state<=eight;
			i <= i + 1;
			end if;
		when done =>
		init_state <= done;
		init_done <= '1';
		end case;
		end if;
	end process power_on_initialize;
end behavior;


