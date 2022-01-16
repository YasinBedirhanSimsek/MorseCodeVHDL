--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MorseDecoder_synthesis.vhd
-- /___/   /\     Timestamp: Sun Jan 16 02:12:15 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm MorseDecoder -w -dir netgen/synthesis -ofmt vhdl -sim MorseDecoder.ngc MorseDecoder_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: MorseDecoder.ngc
-- Output file	: D:\Ders\FPGA\Workspace\FinalProject\netgen\synthesis\MorseDecoder_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: MorseDecoder
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity MorseDecoder is
  port (
    CLK : in STD_LOGIC := 'X'; 
    LCD_E : out STD_LOGIC; 
    LED0 : out STD_LOGIC; 
    LED1 : out STD_LOGIC; 
    LED2 : out STD_LOGIC; 
    LED3 : out STD_LOGIC; 
    LED4 : out STD_LOGIC; 
    LED5 : out STD_LOGIC; 
    BTN_SAVE : in STD_LOGIC := 'X'; 
    LED6 : out STD_LOGIC; 
    LED7 : out STD_LOGIC; 
    BTN_RESET : in STD_LOGIC := 'X'; 
    LCD_RS : out STD_LOGIC; 
    LCD_RW : out STD_LOGIC; 
    BTN_PUSH : in STD_LOGIC := 'X'; 
    SF_CE0 : out STD_LOGIC; 
    BTN_NL : in STD_LOGIC := 'X'; 
    SF_D : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end MorseDecoder;

architecture Structure of MorseDecoder is
  signal BTN_NL_CONTROLLER_BTN_PRESSED_1 : STD_LOGIC; 
  signal BTN_NL_CONTROLLER_BTN_PRESSED_mux0001 : STD_LOGIC; 
  signal BTN_NL_CONTROLLER_BTN_VAL_PREV_3 : STD_LOGIC; 
  signal BTN_NL_IBUF_4 : STD_LOGIC; 
  signal BTN_PUSH_CONTROLLER_BTN_PRESSED_6 : STD_LOGIC; 
  signal BTN_PUSH_CONTROLLER_BTN_PRESSED_mux0001 : STD_LOGIC; 
  signal BTN_PUSH_CONTROLLER_BTN_VAL_PREV_8 : STD_LOGIC; 
  signal BTN_PUSH_IBUF_9 : STD_LOGIC; 
  signal BTN_RESET_CONTROLLER_BTN_PRESSED_11 : STD_LOGIC; 
  signal BTN_RESET_CONTROLLER_BTN_PRESSED_mux0001 : STD_LOGIC; 
  signal BTN_RESET_CONTROLLER_BTN_VAL_PREV_13 : STD_LOGIC; 
  signal BTN_RESET_IBUF_14 : STD_LOGIC; 
  signal BTN_SAVE_CONTROLLER_BTN_PRESSED_16 : STD_LOGIC; 
  signal BTN_SAVE_CONTROLLER_BTN_PRESSED_mux0001 : STD_LOGIC; 
  signal BTN_SAVE_CONTROLLER_BTN_VAL_PREV_18 : STD_LOGIC; 
  signal BTN_SAVE_IBUF_19 : STD_LOGIC; 
  signal CLK_BUFGP_21 : STD_LOGIC; 
  signal LCD_CONTROLLER_LCD_E0_22 : STD_LOGIC; 
  signal LCD_CONTROLLER_LCD_E1_23 : STD_LOGIC; 
  signal LCD_CONTROLLER_LCD_E1_mux0000 : STD_LOGIC; 
  signal LCD_CONTROLLER_LCD_E1_mux00001_25 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_cy_1_rt_28 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_cy_2_rt_30 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_cy_3_rt_32 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_cy_4_rt_34 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_cy_5_rt_36 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_cy_6_rt_38 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_cy_7_rt_40 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_cy_8_rt_42 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_cy_9_rt_44 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_xor_10_rt_46 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_10_rt_49 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_11_rt_51 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_12_rt_53 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_13_rt_55 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_14_rt_57 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_15_rt_59 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_1_rt_61 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_2_rt_63 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_3_rt_65 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_4_rt_67 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_5_rt_69 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_6_rt_71 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_7_rt_73 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_8_rt_75 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy_9_rt_77 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_xor_16_rt_79 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_10_rt_82 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_11_rt_84 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_12_rt_86 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_13_rt_88 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_14_rt_90 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_15_rt_92 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_16_rt_94 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_17_rt_96 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_18_rt_98 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_1_rt_100 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_2_rt_102 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_3_rt_104 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_4_rt_106 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_5_rt_108 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_6_rt_110 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_7_rt_112 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_8_rt_114 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_cy_9_rt_116 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i_share0000_xor_19_rt_118 : STD_LOGIC; 
  signal LCD_CONTROLLER_N0 : STD_LOGIC; 
  signal LCD_CONTROLLER_N18 : STD_LOGIC; 
  signal LCD_CONTROLLER_N19 : STD_LOGIC; 
  signal LCD_CONTROLLER_N2 : STD_LOGIC; 
  signal LCD_CONTROLLER_N20 : STD_LOGIC; 
  signal LCD_CONTROLLER_N26 : STD_LOGIC; 
  signal LCD_CONTROLLER_N3 : STD_LOGIC; 
  signal LCD_CONTROLLER_N4 : STD_LOGIC; 
  signal LCD_CONTROLLER_N5 : STD_LOGIC; 
  signal LCD_CONTROLLER_N6 : STD_LOGIC; 
  signal LCD_CONTROLLER_N7 : STD_LOGIC; 
  signal LCD_CONTROLLER_N8 : STD_LOGIC; 
  signal LCD_CONTROLLER_N9 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_4_0_137 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_4_10_138 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_4_101_139 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_4_129 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_4_1291_141 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_4_146_142 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_4_265_143 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_4_296_144 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_4_34_145 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_5_114_147 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_5_161_148 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_5_200 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_5_2001_150 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_5_2002_151 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_5_52_152 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_5_92 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_5_921_154 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_109_156 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_141_157 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_16_158 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_168_159 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_259_160 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_300_161 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_44 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_441_163 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_74 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_741_165 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_742_166 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_6_94_167 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_7_108_169 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_7_12_170 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_7_133 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_7_1331_172 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_7_151_173 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_7_184_174 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_7_65_175 : STD_LOGIC; 
  signal LCD_CONTROLLER_SF_D0_mux0000_7_89_176 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_FSM_FFd1_181 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_FSM_FFd1_In_182 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_FSM_FFd2_183 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_FSM_FFd2_In_184 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_FSM_FFd3_185 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_FSM_FFd3_In : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_FSM_FFd3_In1_187 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_FSM_FFd4_188 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_FSM_FFd4_In_189 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_cmp_eq0000 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_cmp_eq000011_191 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_cmp_eq000019_192 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_cmp_eq000024_193 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_cmp_eq0001 : STD_LOGIC; 
  signal LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy_0_rt_196 : STD_LOGIC; 
  signal LCD_CONTROLLER_i2_mux0002_0_110_216 : STD_LOGIC; 
  signal LCD_CONTROLLER_i2_mux0002_0_112_217 : STD_LOGIC; 
  signal LCD_CONTROLLER_i2_mux0002_0_120_218 : STD_LOGIC; 
  signal LCD_CONTROLLER_i2_mux0002_0_146_219 : STD_LOGIC; 
  signal LCD_CONTROLLER_i2_or0001 : STD_LOGIC; 
  signal LCD_CONTROLLER_i_mux0001_0_110_314 : STD_LOGIC; 
  signal LCD_CONTROLLER_i_mux0001_0_121_315 : STD_LOGIC; 
  signal LCD_CONTROLLER_i_mux0001_0_136_316 : STD_LOGIC; 
  signal LCD_CONTROLLER_i_mux0001_0_145_317 : STD_LOGIC; 
  signal LCD_CONTROLLER_i_mux0001_0_147_318 : STD_LOGIC; 
  signal LCD_CONTROLLER_i_or0000 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_done_359 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd1_360 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd1_In : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd10_362 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd10_In : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd11_364 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd2_365 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd2_In : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd3_367 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd3_In : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd4_369 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd4_In : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd5_371 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd5_In : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd6_373 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd6_In : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd7_375 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd7_In : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd8_377 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd8_In : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd9_379 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_FSM_FFd9_In : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_cmp_eq0000 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_cmp_eq000015_382 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_cmp_eq00007_383 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_cmp_eq0001 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_cmp_eq000117_385 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_cmp_eq00012_386 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_cmp_eq0002_387 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_cmp_eq0003_388 : STD_LOGIC; 
  signal LCD_CONTROLLER_init_state_cmp_eq0004_389 : STD_LOGIC; 
  signal LCD_CONTROLLER_mux : STD_LOGIC; 
  signal LCD_CONTROLLER_reset_inv : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_init : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd1_393 : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd1_In : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd2_395 : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd2_In : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd3_397 : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd3_In : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd4_399 : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd4_In : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd5_401 : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd5_In : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd6_403 : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd6_In : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd7_405 : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_FSM_FFd7_In : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_cmp_eq0000 : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_cmp_eq0001_408 : STD_LOGIC; 
  signal LCD_CONTROLLER_tx_state_cmp_eq0002 : STD_LOGIC; 
  signal LCD_E_OBUF_411 : STD_LOGIC; 
  signal LCD_RS_OBUF_413 : STD_LOGIC; 
  signal LED1_OBUF_417 : STD_LOGIC; 
  signal LED1_cmp_eq0000 : STD_LOGIC; 
  signal LED1_mux0001_434 : STD_LOGIC; 
  signal LED2_OBUF_436 : STD_LOGIC; 
  signal LED2_cmp_eq0000 : STD_LOGIC; 
  signal LED2_mux0000 : STD_LOGIC; 
  signal LED3_OBUF_455 : STD_LOGIC; 
  signal LED3_mux0001_456 : STD_LOGIC; 
  signal LED4_OBUF_458 : STD_LOGIC; 
  signal LED4_cmp_eq0000 : STD_LOGIC; 
  signal LED4_mux0000 : STD_LOGIC; 
  signal LED5_OBUF_477 : STD_LOGIC; 
  signal LED5_mux0001_478 : STD_LOGIC; 
  signal LED6_OBUF_480 : STD_LOGIC; 
  signal LED6_cmp_eq0000 : STD_LOGIC; 
  signal LED6_mux0000 : STD_LOGIC; 
  signal LED7_OBUF_499 : STD_LOGIC; 
  signal LED7_mux0001_500 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_10_rt_503 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_11_rt_505 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_12_rt_507 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_13_rt_509 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_14_rt_511 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_15_rt_513 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_16_rt_515 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_17_rt_517 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_18_rt_519 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_19_rt_521 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_1_rt_523 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_20_rt_525 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_21_rt_527 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_22_rt_529 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_23_rt_531 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_24_rt_533 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_25_rt_535 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_26_rt_537 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_27_rt_539 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_28_rt_541 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_29_rt_543 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_2_rt_545 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_30_rt_547 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_3_rt_549 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_4_rt_551 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_5_rt_553 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_6_rt_555 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_7_rt_557 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_8_rt_559 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_cy_9_rt_561 : STD_LOGIC; 
  signal Madd_push_timer_addsub0000_xor_31_rt_563 : STD_LOGIC; 
  signal Mcompar_LED1_cmp_lt0000_cy_0_rt_565 : STD_LOGIC; 
  signal Mcompar_LED3_cmp_lt0000_cy_0_rt_585 : STD_LOGIC; 
  signal Mcompar_LED5_cmp_lt0000_cy_0_rt_605 : STD_LOGIC; 
  signal Mcompar_LED7_cmp_lt0000_cy_0_rt_625 : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_cy_0_rt_645 : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_cy_2_rt_648 : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_lut_10_Q : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_lut_1_Q : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_lut_3_Q_658 : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_lut_4_Q_659 : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_lut_5_Q_660 : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_lut_6_Q_661 : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_lut_7_Q_662 : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_lut_8_Q_663 : STD_LOGIC; 
  signal Mcompar_lcd_enable_cmp_ge0000_lut_9_Q_664 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_10_rt_667 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_11_rt_669 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_12_rt_671 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_13_rt_673 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_14_rt_675 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_15_rt_677 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_16_rt_679 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_17_rt_681 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_18_rt_683 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_19_rt_685 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_1_rt_687 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_20_rt_689 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_21_rt_691 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_22_rt_693 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_23_rt_695 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_24_rt_697 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_25_rt_699 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_26_rt_701 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_27_rt_703 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_28_rt_705 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_29_rt_707 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_2_rt_709 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_30_rt_711 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_3_rt_713 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_4_rt_715 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_5_rt_717 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_6_rt_719 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_7_rt_721 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_8_rt_723 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_cy_9_rt_725 : STD_LOGIC; 
  signal Mcount_clk_10ms_timer_xor_31_rt_727 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_10_rt_730 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_11_rt_732 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_12_rt_734 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_13_rt_736 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_14_rt_738 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_15_rt_740 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_16_rt_742 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_17_rt_744 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_18_rt_746 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_19_rt_748 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_1_rt_750 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_20_rt_752 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_21_rt_754 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_22_rt_756 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_23_rt_758 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_24_rt_760 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_25_rt_762 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_26_rt_764 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_27_rt_766 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_28_rt_768 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_29_rt_770 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_2_rt_772 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_30_rt_774 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_3_rt_776 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_4_rt_778 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_5_rt_780 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_6_rt_782 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_7_rt_784 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_8_rt_786 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_cy_9_rt_788 : STD_LOGIC; 
  signal Mcount_clk_5cycle_timer_xor_31_rt_790 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal Result_25_1 : STD_LOGIC; 
  signal Result_26_1 : STD_LOGIC; 
  signal Result_27_1 : STD_LOGIC; 
  signal Result_28_1 : STD_LOGIC; 
  signal Result_29_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_30_1 : STD_LOGIC; 
  signal Result_31_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal SF_D_0_OBUF_932 : STD_LOGIC; 
  signal SF_D_1_OBUF_933 : STD_LOGIC; 
  signal SF_D_2_OBUF_934 : STD_LOGIC; 
  signal SF_D_3_OBUF_935 : STD_LOGIC; 
  signal clk_10ms_flag_936 : STD_LOGIC; 
  signal clk_10ms_flag1 : STD_LOGIC; 
  signal clk_10ms_flag_not0001 : STD_LOGIC; 
  signal clk_10ms_timer_cmp_eq0000 : STD_LOGIC; 
  signal clk_5cycle_timer_not0001 : STD_LOGIC; 
  signal current_state_FSM_FFd1_1020 : STD_LOGIC; 
  signal current_state_FSM_FFd1_In1 : STD_LOGIC; 
  signal current_state_FSM_FFd2_1022 : STD_LOGIC; 
  signal current_state_FSM_FFd2_In : STD_LOGIC; 
  signal current_state_FSM_FFd2_In1_1024 : STD_LOGIC; 
  signal current_state_FSM_FFd2_In2_1025 : STD_LOGIC; 
  signal current_state_FSM_FFd3_1026 : STD_LOGIC; 
  signal current_state_FSM_FFd3_In14_1027 : STD_LOGIC; 
  signal current_state_FSM_FFd3_In38_1028 : STD_LOGIC; 
  signal current_state_FSM_FFd3_In57 : STD_LOGIC; 
  signal current_state_cmp_eq0001 : STD_LOGIC; 
  signal current_state_cmp_eq0004 : STD_LOGIC; 
  signal lcd_enable_1032 : STD_LOGIC; 
  signal lcd_enable_cmp_ge0000 : STD_LOGIC; 
  signal lcd_enable_or0000 : STD_LOGIC; 
  signal morse_char_0_0_1035 : STD_LOGIC; 
  signal morse_char_0_1_1036 : STD_LOGIC; 
  signal morse_char_0_10_1037 : STD_LOGIC; 
  signal morse_char_0_11_1038 : STD_LOGIC; 
  signal morse_char_0_12_1039 : STD_LOGIC; 
  signal morse_char_0_13_1040 : STD_LOGIC; 
  signal morse_char_0_14_1041 : STD_LOGIC; 
  signal morse_char_0_15_1042 : STD_LOGIC; 
  signal morse_char_0_16_1043 : STD_LOGIC; 
  signal morse_char_0_17_1044 : STD_LOGIC; 
  signal morse_char_0_18_1045 : STD_LOGIC; 
  signal morse_char_0_19_1046 : STD_LOGIC; 
  signal morse_char_0_2_1047 : STD_LOGIC; 
  signal morse_char_0_20_1048 : STD_LOGIC; 
  signal morse_char_0_21_1049 : STD_LOGIC; 
  signal morse_char_0_22_1050 : STD_LOGIC; 
  signal morse_char_0_23_1051 : STD_LOGIC; 
  signal morse_char_0_24_1052 : STD_LOGIC; 
  signal morse_char_0_25_1053 : STD_LOGIC; 
  signal morse_char_0_26_1054 : STD_LOGIC; 
  signal morse_char_0_27_1055 : STD_LOGIC; 
  signal morse_char_0_28_1056 : STD_LOGIC; 
  signal morse_char_0_29_1057 : STD_LOGIC; 
  signal morse_char_0_3_1058 : STD_LOGIC; 
  signal morse_char_0_30_1059 : STD_LOGIC; 
  signal morse_char_0_31_1060 : STD_LOGIC; 
  signal morse_char_0_4_1061 : STD_LOGIC; 
  signal morse_char_0_5_1062 : STD_LOGIC; 
  signal morse_char_0_6_1063 : STD_LOGIC; 
  signal morse_char_0_7_1064 : STD_LOGIC; 
  signal morse_char_0_8_1065 : STD_LOGIC; 
  signal morse_char_0_9_1066 : STD_LOGIC; 
  signal morse_char_0_or0000 : STD_LOGIC; 
  signal morse_char_1_0_1100 : STD_LOGIC; 
  signal morse_char_1_1_1101 : STD_LOGIC; 
  signal morse_char_1_10_1102 : STD_LOGIC; 
  signal morse_char_1_11_1103 : STD_LOGIC; 
  signal morse_char_1_12_1104 : STD_LOGIC; 
  signal morse_char_1_13_1105 : STD_LOGIC; 
  signal morse_char_1_14_1106 : STD_LOGIC; 
  signal morse_char_1_15_1107 : STD_LOGIC; 
  signal morse_char_1_16_1108 : STD_LOGIC; 
  signal morse_char_1_17_1109 : STD_LOGIC; 
  signal morse_char_1_18_1110 : STD_LOGIC; 
  signal morse_char_1_19_1111 : STD_LOGIC; 
  signal morse_char_1_2_1112 : STD_LOGIC; 
  signal morse_char_1_20_1113 : STD_LOGIC; 
  signal morse_char_1_21_1114 : STD_LOGIC; 
  signal morse_char_1_22_1115 : STD_LOGIC; 
  signal morse_char_1_23_1116 : STD_LOGIC; 
  signal morse_char_1_24_1117 : STD_LOGIC; 
  signal morse_char_1_25_1118 : STD_LOGIC; 
  signal morse_char_1_26_1119 : STD_LOGIC; 
  signal morse_char_1_27_1120 : STD_LOGIC; 
  signal morse_char_1_28_1121 : STD_LOGIC; 
  signal morse_char_1_29_1122 : STD_LOGIC; 
  signal morse_char_1_3_1123 : STD_LOGIC; 
  signal morse_char_1_30_1124 : STD_LOGIC; 
  signal morse_char_1_31_1125 : STD_LOGIC; 
  signal morse_char_1_4_1126 : STD_LOGIC; 
  signal morse_char_1_5_1127 : STD_LOGIC; 
  signal morse_char_1_6_1128 : STD_LOGIC; 
  signal morse_char_1_7_1129 : STD_LOGIC; 
  signal morse_char_1_8_1130 : STD_LOGIC; 
  signal morse_char_1_9_1131 : STD_LOGIC; 
  signal morse_char_2_0_1164 : STD_LOGIC; 
  signal morse_char_2_1_1165 : STD_LOGIC; 
  signal morse_char_2_10_1166 : STD_LOGIC; 
  signal morse_char_2_11_1167 : STD_LOGIC; 
  signal morse_char_2_12_1168 : STD_LOGIC; 
  signal morse_char_2_13_1169 : STD_LOGIC; 
  signal morse_char_2_14_1170 : STD_LOGIC; 
  signal morse_char_2_15_1171 : STD_LOGIC; 
  signal morse_char_2_16_1172 : STD_LOGIC; 
  signal morse_char_2_17_1173 : STD_LOGIC; 
  signal morse_char_2_18_1174 : STD_LOGIC; 
  signal morse_char_2_19_1175 : STD_LOGIC; 
  signal morse_char_2_2_1176 : STD_LOGIC; 
  signal morse_char_2_20_1177 : STD_LOGIC; 
  signal morse_char_2_21_1178 : STD_LOGIC; 
  signal morse_char_2_22_1179 : STD_LOGIC; 
  signal morse_char_2_23_1180 : STD_LOGIC; 
  signal morse_char_2_24_1181 : STD_LOGIC; 
  signal morse_char_2_25_1182 : STD_LOGIC; 
  signal morse_char_2_26_1183 : STD_LOGIC; 
  signal morse_char_2_27_1184 : STD_LOGIC; 
  signal morse_char_2_28_1185 : STD_LOGIC; 
  signal morse_char_2_29_1186 : STD_LOGIC; 
  signal morse_char_2_3_1187 : STD_LOGIC; 
  signal morse_char_2_30_1188 : STD_LOGIC; 
  signal morse_char_2_31_1189 : STD_LOGIC; 
  signal morse_char_2_4_1190 : STD_LOGIC; 
  signal morse_char_2_5_1191 : STD_LOGIC; 
  signal morse_char_2_6_1192 : STD_LOGIC; 
  signal morse_char_2_7_1193 : STD_LOGIC; 
  signal morse_char_2_8_1194 : STD_LOGIC; 
  signal morse_char_2_9_1195 : STD_LOGIC; 
  signal morse_char_3_0_1228 : STD_LOGIC; 
  signal morse_char_3_1_1229 : STD_LOGIC; 
  signal morse_char_3_10_1230 : STD_LOGIC; 
  signal morse_char_3_11_1231 : STD_LOGIC; 
  signal morse_char_3_12_1232 : STD_LOGIC; 
  signal morse_char_3_13_1233 : STD_LOGIC; 
  signal morse_char_3_14_1234 : STD_LOGIC; 
  signal morse_char_3_15_1235 : STD_LOGIC; 
  signal morse_char_3_16_1236 : STD_LOGIC; 
  signal morse_char_3_17_1237 : STD_LOGIC; 
  signal morse_char_3_18_1238 : STD_LOGIC; 
  signal morse_char_3_19_1239 : STD_LOGIC; 
  signal morse_char_3_2_1240 : STD_LOGIC; 
  signal morse_char_3_20_1241 : STD_LOGIC; 
  signal morse_char_3_21_1242 : STD_LOGIC; 
  signal morse_char_3_22_1243 : STD_LOGIC; 
  signal morse_char_3_23_1244 : STD_LOGIC; 
  signal morse_char_3_24_1245 : STD_LOGIC; 
  signal morse_char_3_25_1246 : STD_LOGIC; 
  signal morse_char_3_26_1247 : STD_LOGIC; 
  signal morse_char_3_27_1248 : STD_LOGIC; 
  signal morse_char_3_28_1249 : STD_LOGIC; 
  signal morse_char_3_29_1250 : STD_LOGIC; 
  signal morse_char_3_3_1251 : STD_LOGIC; 
  signal morse_char_3_30_1252 : STD_LOGIC; 
  signal morse_char_3_31_1253 : STD_LOGIC; 
  signal morse_char_3_4_1254 : STD_LOGIC; 
  signal morse_char_3_5_1255 : STD_LOGIC; 
  signal morse_char_3_6_1256 : STD_LOGIC; 
  signal morse_char_3_7_1257 : STD_LOGIC; 
  signal morse_char_3_8_1258 : STD_LOGIC; 
  signal morse_char_3_9_1259 : STD_LOGIC; 
  signal morse_encoded_0_mux0000 : STD_LOGIC; 
  signal morse_encoded_1_mux0000 : STD_LOGIC; 
  signal morse_encoded_2_mux0000 : STD_LOGIC; 
  signal morse_encoded_3_mux0000 : STD_LOGIC; 
  signal morse_encoded_4_mux0000 : STD_LOGIC; 
  signal morse_encoded_5_mux0000 : STD_LOGIC; 
  signal morse_encoded_6_mux0000 : STD_LOGIC; 
  signal morse_encoded_7_mux0000 : STD_LOGIC; 
  signal morse_idx_mux0000_0_1_1311 : STD_LOGIC; 
  signal morse_idx_mux0000_0_2_1312 : STD_LOGIC; 
  signal LCD_CONTROLLER_Madd_i2_share0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal LCD_CONTROLLER_Madd_i2_share0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal LCD_CONTROLLER_Madd_i3_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal LCD_CONTROLLER_Madd_i_share0000_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal LCD_CONTROLLER_Madd_i_share0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal LCD_CONTROLLER_SF_D0 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal LCD_CONTROLLER_SF_D0_mux0000 : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal LCD_CONTROLLER_SF_D1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal LCD_CONTROLLER_SF_D1_mux0000 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal LCD_CONTROLLER_i2 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal LCD_CONTROLLER_i2_mux0002 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal LCD_CONTROLLER_i2_share0000 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal LCD_CONTROLLER_i3 : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal LCD_CONTROLLER_i3_addsub0000 : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal LCD_CONTROLLER_i3_mux0000 : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal LCD_CONTROLLER_i : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal LCD_CONTROLLER_i_mux0001 : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal LCD_CONTROLLER_i_share0000 : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal LED1_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal LED1_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal LED2_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal LED2_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal LED4_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal LED4_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal LED6_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal LED6_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Madd_push_timer_addsub0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Madd_push_timer_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcompar_LED1_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_LED1_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal Mcompar_LED3_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_LED3_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal Mcompar_LED5_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_LED5_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal Mcompar_LED7_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_LED7_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal Mcompar_lcd_enable_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcount_clk_10ms_timer_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_clk_10ms_timer_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_clk_5cycle_timer_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_clk_5cycle_timer_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal clk_10ms_timer : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal clk_10ms_timer_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal clk_10ms_timer_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal clk_5cycle_timer : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal morse_char_0_mux0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal morse_char_1_mux0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal morse_char_2_mux0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal morse_char_3_mux0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal morse_encoded : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal morse_idx : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal morse_idx_mux0000 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal push_timer : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal push_timer_addsub0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal push_timer_mux0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  clk_10ms_flag : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => clk_10ms_timer_cmp_eq0000,
      D => clk_10ms_flag_not0001,
      Q => clk_10ms_flag1
    );
  lcd_enable : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => N1,
      R => lcd_enable_or0000,
      Q => lcd_enable_1032
    );
  LED1_5 : FD
    port map (
      C => clk_10ms_flag_936,
      D => LED1_mux0001_434,
      Q => LED1_OBUF_417
    );
  LED2_6 : FD
    port map (
      C => clk_10ms_flag_936,
      D => LED2_mux0000,
      Q => LED2_OBUF_436
    );
  LED3_7 : FD
    port map (
      C => clk_10ms_flag_936,
      D => LED3_mux0001_456,
      Q => LED3_OBUF_455
    );
  LED6_8 : FD
    port map (
      C => clk_10ms_flag_936,
      D => LED6_mux0000,
      Q => LED6_OBUF_480
    );
  LED4_9 : FD
    port map (
      C => clk_10ms_flag_936,
      D => LED4_mux0000,
      Q => LED4_OBUF_458
    );
  LED5_10 : FD
    port map (
      C => clk_10ms_flag_936,
      D => LED5_mux0001_478,
      Q => LED5_OBUF_477
    );
  LED7_11 : FD
    port map (
      C => clk_10ms_flag_936,
      D => LED7_mux0001_500,
      Q => LED7_OBUF_499
    );
  push_timer_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(31),
      Q => push_timer(0)
    );
  push_timer_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(30),
      Q => push_timer(1)
    );
  push_timer_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(29),
      Q => push_timer(2)
    );
  push_timer_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(28),
      Q => push_timer(3)
    );
  push_timer_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(27),
      Q => push_timer(4)
    );
  push_timer_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(26),
      Q => push_timer(5)
    );
  push_timer_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(25),
      Q => push_timer(6)
    );
  push_timer_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(24),
      Q => push_timer(7)
    );
  push_timer_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(23),
      Q => push_timer(8)
    );
  push_timer_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(22),
      Q => push_timer(9)
    );
  push_timer_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(21),
      Q => push_timer(10)
    );
  push_timer_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(20),
      Q => push_timer(11)
    );
  push_timer_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(19),
      Q => push_timer(12)
    );
  push_timer_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(18),
      Q => push_timer(13)
    );
  push_timer_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(17),
      Q => push_timer(14)
    );
  push_timer_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(16),
      Q => push_timer(15)
    );
  push_timer_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(15),
      Q => push_timer(16)
    );
  push_timer_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(14),
      Q => push_timer(17)
    );
  push_timer_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(13),
      Q => push_timer(18)
    );
  push_timer_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(12),
      Q => push_timer(19)
    );
  push_timer_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(11),
      Q => push_timer(20)
    );
  push_timer_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(10),
      Q => push_timer(21)
    );
  push_timer_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(9),
      Q => push_timer(22)
    );
  push_timer_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(8),
      Q => push_timer(23)
    );
  push_timer_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(7),
      Q => push_timer(24)
    );
  push_timer_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(6),
      Q => push_timer(25)
    );
  push_timer_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(5),
      Q => push_timer(26)
    );
  push_timer_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(4),
      Q => push_timer(27)
    );
  push_timer_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(3),
      Q => push_timer(28)
    );
  push_timer_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(2),
      Q => push_timer(29)
    );
  push_timer_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(1),
      Q => push_timer(30)
    );
  push_timer_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => push_timer_mux0000(0),
      Q => push_timer(31)
    );
  morse_char_0_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(31),
      Q => morse_char_0_0_1035
    );
  morse_char_0_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(30),
      Q => morse_char_0_1_1036
    );
  morse_char_0_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(29),
      Q => morse_char_0_2_1047
    );
  morse_char_0_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(28),
      Q => morse_char_0_3_1058
    );
  morse_char_0_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(27),
      Q => morse_char_0_4_1061
    );
  morse_char_0_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(26),
      Q => morse_char_0_5_1062
    );
  morse_char_0_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(25),
      Q => morse_char_0_6_1063
    );
  morse_char_0_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(24),
      Q => morse_char_0_7_1064
    );
  morse_char_0_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(23),
      Q => morse_char_0_8_1065
    );
  morse_char_0_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(22),
      Q => morse_char_0_9_1066
    );
  morse_char_0_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(21),
      Q => morse_char_0_10_1037
    );
  morse_char_0_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(20),
      Q => morse_char_0_11_1038
    );
  morse_char_0_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(19),
      Q => morse_char_0_12_1039
    );
  morse_char_0_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(18),
      Q => morse_char_0_13_1040
    );
  morse_char_0_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(17),
      Q => morse_char_0_14_1041
    );
  morse_char_0_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(16),
      Q => morse_char_0_15_1042
    );
  morse_char_0_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(15),
      Q => morse_char_0_16_1043
    );
  morse_char_0_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(14),
      Q => morse_char_0_17_1044
    );
  morse_char_0_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(13),
      Q => morse_char_0_18_1045
    );
  morse_char_0_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(12),
      Q => morse_char_0_19_1046
    );
  morse_char_0_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(11),
      Q => morse_char_0_20_1048
    );
  morse_char_0_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(10),
      Q => morse_char_0_21_1049
    );
  morse_char_0_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(9),
      Q => morse_char_0_22_1050
    );
  morse_char_0_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(8),
      Q => morse_char_0_23_1051
    );
  morse_char_0_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(7),
      Q => morse_char_0_24_1052
    );
  morse_char_0_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(6),
      Q => morse_char_0_25_1053
    );
  morse_char_0_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(5),
      Q => morse_char_0_26_1054
    );
  morse_char_0_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(4),
      Q => morse_char_0_27_1055
    );
  morse_char_0_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(3),
      Q => morse_char_0_28_1056
    );
  morse_char_0_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(2),
      Q => morse_char_0_29_1057
    );
  morse_char_0_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(1),
      Q => morse_char_0_30_1059
    );
  morse_char_0_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_0_mux0000(0),
      Q => morse_char_0_31_1060
    );
  morse_char_1_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(31),
      Q => morse_char_1_0_1100
    );
  morse_char_1_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(30),
      Q => morse_char_1_1_1101
    );
  morse_char_1_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(29),
      Q => morse_char_1_2_1112
    );
  morse_char_1_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(28),
      Q => morse_char_1_3_1123
    );
  morse_char_1_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(27),
      Q => morse_char_1_4_1126
    );
  morse_char_1_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(26),
      Q => morse_char_1_5_1127
    );
  morse_char_1_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(25),
      Q => morse_char_1_6_1128
    );
  morse_char_1_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(24),
      Q => morse_char_1_7_1129
    );
  morse_char_1_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(23),
      Q => morse_char_1_8_1130
    );
  morse_char_1_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(22),
      Q => morse_char_1_9_1131
    );
  morse_char_1_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(21),
      Q => morse_char_1_10_1102
    );
  morse_char_1_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(20),
      Q => morse_char_1_11_1103
    );
  morse_char_1_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(19),
      Q => morse_char_1_12_1104
    );
  morse_char_1_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(18),
      Q => morse_char_1_13_1105
    );
  morse_char_1_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(17),
      Q => morse_char_1_14_1106
    );
  morse_char_1_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(16),
      Q => morse_char_1_15_1107
    );
  morse_char_1_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(15),
      Q => morse_char_1_16_1108
    );
  morse_char_1_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(14),
      Q => morse_char_1_17_1109
    );
  morse_char_1_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(13),
      Q => morse_char_1_18_1110
    );
  morse_char_1_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(12),
      Q => morse_char_1_19_1111
    );
  morse_char_1_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(11),
      Q => morse_char_1_20_1113
    );
  morse_char_1_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(10),
      Q => morse_char_1_21_1114
    );
  morse_char_1_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(9),
      Q => morse_char_1_22_1115
    );
  morse_char_1_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(8),
      Q => morse_char_1_23_1116
    );
  morse_char_1_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(7),
      Q => morse_char_1_24_1117
    );
  morse_char_1_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(6),
      Q => morse_char_1_25_1118
    );
  morse_char_1_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(5),
      Q => morse_char_1_26_1119
    );
  morse_char_1_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(4),
      Q => morse_char_1_27_1120
    );
  morse_char_1_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(3),
      Q => morse_char_1_28_1121
    );
  morse_char_1_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(2),
      Q => morse_char_1_29_1122
    );
  morse_char_1_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(1),
      Q => morse_char_1_30_1124
    );
  morse_char_1_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_1_mux0000(0),
      Q => morse_char_1_31_1125
    );
  morse_char_2_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(31),
      Q => morse_char_2_0_1164
    );
  morse_char_2_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(30),
      Q => morse_char_2_1_1165
    );
  morse_char_2_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(29),
      Q => morse_char_2_2_1176
    );
  morse_char_2_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(28),
      Q => morse_char_2_3_1187
    );
  morse_char_2_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(27),
      Q => morse_char_2_4_1190
    );
  morse_char_2_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(26),
      Q => morse_char_2_5_1191
    );
  morse_char_2_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(25),
      Q => morse_char_2_6_1192
    );
  morse_char_2_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(24),
      Q => morse_char_2_7_1193
    );
  morse_char_2_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(23),
      Q => morse_char_2_8_1194
    );
  morse_char_2_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(22),
      Q => morse_char_2_9_1195
    );
  morse_char_2_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(21),
      Q => morse_char_2_10_1166
    );
  morse_char_2_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(20),
      Q => morse_char_2_11_1167
    );
  morse_char_2_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(19),
      Q => morse_char_2_12_1168
    );
  morse_char_2_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(18),
      Q => morse_char_2_13_1169
    );
  morse_char_2_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(17),
      Q => morse_char_2_14_1170
    );
  morse_char_2_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(16),
      Q => morse_char_2_15_1171
    );
  morse_char_2_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(15),
      Q => morse_char_2_16_1172
    );
  morse_char_2_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(14),
      Q => morse_char_2_17_1173
    );
  morse_char_2_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(13),
      Q => morse_char_2_18_1174
    );
  morse_char_2_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(12),
      Q => morse_char_2_19_1175
    );
  morse_char_2_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(11),
      Q => morse_char_2_20_1177
    );
  morse_char_2_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(10),
      Q => morse_char_2_21_1178
    );
  morse_char_2_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(9),
      Q => morse_char_2_22_1179
    );
  morse_char_2_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(8),
      Q => morse_char_2_23_1180
    );
  morse_char_2_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(7),
      Q => morse_char_2_24_1181
    );
  morse_char_2_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(6),
      Q => morse_char_2_25_1182
    );
  morse_char_2_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(5),
      Q => morse_char_2_26_1183
    );
  morse_char_2_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(4),
      Q => morse_char_2_27_1184
    );
  morse_char_2_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(3),
      Q => morse_char_2_28_1185
    );
  morse_char_2_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(2),
      Q => morse_char_2_29_1186
    );
  morse_char_2_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(1),
      Q => morse_char_2_30_1188
    );
  morse_char_2_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_2_mux0000(0),
      Q => morse_char_2_31_1189
    );
  morse_char_3_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(31),
      Q => morse_char_3_0_1228
    );
  morse_char_3_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(30),
      Q => morse_char_3_1_1229
    );
  morse_char_3_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(29),
      Q => morse_char_3_2_1240
    );
  morse_char_3_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(28),
      Q => morse_char_3_3_1251
    );
  morse_char_3_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(27),
      Q => morse_char_3_4_1254
    );
  morse_char_3_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(26),
      Q => morse_char_3_5_1255
    );
  morse_char_3_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(25),
      Q => morse_char_3_6_1256
    );
  morse_char_3_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(24),
      Q => morse_char_3_7_1257
    );
  morse_char_3_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(23),
      Q => morse_char_3_8_1258
    );
  morse_char_3_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(22),
      Q => morse_char_3_9_1259
    );
  morse_char_3_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(21),
      Q => morse_char_3_10_1230
    );
  morse_char_3_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(20),
      Q => morse_char_3_11_1231
    );
  morse_char_3_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(19),
      Q => morse_char_3_12_1232
    );
  morse_char_3_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(18),
      Q => morse_char_3_13_1233
    );
  morse_char_3_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(17),
      Q => morse_char_3_14_1234
    );
  morse_char_3_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(16),
      Q => morse_char_3_15_1235
    );
  morse_char_3_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(15),
      Q => morse_char_3_16_1236
    );
  morse_char_3_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(14),
      Q => morse_char_3_17_1237
    );
  morse_char_3_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(13),
      Q => morse_char_3_18_1238
    );
  morse_char_3_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(12),
      Q => morse_char_3_19_1239
    );
  morse_char_3_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(11),
      Q => morse_char_3_20_1241
    );
  morse_char_3_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(10),
      Q => morse_char_3_21_1242
    );
  morse_char_3_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(9),
      Q => morse_char_3_22_1243
    );
  morse_char_3_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(8),
      Q => morse_char_3_23_1244
    );
  morse_char_3_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(7),
      Q => morse_char_3_24_1245
    );
  morse_char_3_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(6),
      Q => morse_char_3_25_1246
    );
  morse_char_3_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(5),
      Q => morse_char_3_26_1247
    );
  morse_char_3_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(4),
      Q => morse_char_3_27_1248
    );
  morse_char_3_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(3),
      Q => morse_char_3_28_1249
    );
  morse_char_3_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(2),
      Q => morse_char_3_29_1250
    );
  morse_char_3_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(1),
      Q => morse_char_3_30_1252
    );
  morse_char_3_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_char_3_mux0000(0),
      Q => morse_char_3_31_1253
    );
  morse_idx_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_idx_mux0000(1),
      Q => morse_idx(0)
    );
  morse_idx_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => morse_idx_mux0000(0),
      Q => morse_idx(1)
    );
  morse_encoded_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      CE => current_state_cmp_eq0001,
      D => morse_encoded_1_mux0000,
      Q => morse_encoded(1)
    );
  morse_encoded_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      CE => current_state_cmp_eq0001,
      D => morse_encoded_0_mux0000,
      Q => morse_encoded(0)
    );
  morse_encoded_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      CE => current_state_cmp_eq0001,
      D => morse_encoded_2_mux0000,
      Q => morse_encoded(2)
    );
  morse_encoded_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      CE => current_state_cmp_eq0001,
      D => morse_encoded_3_mux0000,
      Q => morse_encoded(3)
    );
  morse_encoded_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      CE => current_state_cmp_eq0001,
      D => morse_encoded_4_mux0000,
      Q => morse_encoded(4)
    );
  morse_encoded_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      CE => current_state_cmp_eq0001,
      D => morse_encoded_5_mux0000,
      Q => morse_encoded(5)
    );
  morse_encoded_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      CE => current_state_cmp_eq0001,
      D => morse_encoded_6_mux0000,
      Q => morse_encoded(6)
    );
  morse_encoded_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      CE => current_state_cmp_eq0001,
      D => morse_encoded_7_mux0000,
      Q => morse_encoded(7)
    );
  clk_10ms_timer_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_0_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(0)
    );
  clk_10ms_timer_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_1_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(1)
    );
  clk_10ms_timer_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_2_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(2)
    );
  clk_10ms_timer_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_3_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(3)
    );
  clk_10ms_timer_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_4_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(4)
    );
  clk_10ms_timer_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_5_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(5)
    );
  clk_10ms_timer_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_6_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(6)
    );
  clk_10ms_timer_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_7_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(7)
    );
  clk_10ms_timer_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_8_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(8)
    );
  clk_10ms_timer_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_9_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(9)
    );
  clk_10ms_timer_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_10_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(10)
    );
  clk_10ms_timer_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_11_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(11)
    );
  clk_10ms_timer_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_12_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(12)
    );
  clk_10ms_timer_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_13_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(13)
    );
  clk_10ms_timer_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_14_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(14)
    );
  clk_10ms_timer_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_15_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(15)
    );
  clk_10ms_timer_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_16_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(16)
    );
  clk_10ms_timer_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_17_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(17)
    );
  clk_10ms_timer_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_18_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(18)
    );
  clk_10ms_timer_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_19_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(19)
    );
  clk_10ms_timer_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_20_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(20)
    );
  clk_10ms_timer_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_21_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(21)
    );
  clk_10ms_timer_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_22_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(22)
    );
  clk_10ms_timer_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_23_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(23)
    );
  clk_10ms_timer_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_24_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(24)
    );
  clk_10ms_timer_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_25_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(25)
    );
  clk_10ms_timer_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_26_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(26)
    );
  clk_10ms_timer_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_27_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(27)
    );
  clk_10ms_timer_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_28_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(28)
    );
  clk_10ms_timer_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_29_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(29)
    );
  clk_10ms_timer_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_30_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(30)
    );
  clk_10ms_timer_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result_31_1,
      R => clk_10ms_timer_cmp_eq0000,
      Q => clk_10ms_timer(31)
    );
  clk_5cycle_timer_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(0),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(0)
    );
  clk_5cycle_timer_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(1),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(1)
    );
  clk_5cycle_timer_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(2),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(2)
    );
  clk_5cycle_timer_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(3),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(3)
    );
  clk_5cycle_timer_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(4),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(4)
    );
  clk_5cycle_timer_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(5),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(5)
    );
  clk_5cycle_timer_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(6),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(6)
    );
  clk_5cycle_timer_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(7),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(7)
    );
  clk_5cycle_timer_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(8),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(8)
    );
  clk_5cycle_timer_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(9),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(9)
    );
  clk_5cycle_timer_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(10),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(10)
    );
  clk_5cycle_timer_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(11),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(11)
    );
  clk_5cycle_timer_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(12),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(12)
    );
  clk_5cycle_timer_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(13),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(13)
    );
  clk_5cycle_timer_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(14),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(14)
    );
  clk_5cycle_timer_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(15),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(15)
    );
  clk_5cycle_timer_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(16),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(16)
    );
  clk_5cycle_timer_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(17),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(17)
    );
  clk_5cycle_timer_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(18),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(18)
    );
  clk_5cycle_timer_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(19),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(19)
    );
  clk_5cycle_timer_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(20),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(20)
    );
  clk_5cycle_timer_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(21),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(21)
    );
  clk_5cycle_timer_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(22),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(22)
    );
  clk_5cycle_timer_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(23),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(23)
    );
  clk_5cycle_timer_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(24),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(24)
    );
  clk_5cycle_timer_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(25),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(25)
    );
  clk_5cycle_timer_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(26),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(26)
    );
  clk_5cycle_timer_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(27),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(27)
    );
  clk_5cycle_timer_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(28),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(28)
    );
  clk_5cycle_timer_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(29),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(29)
    );
  clk_5cycle_timer_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(30),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(30)
    );
  clk_5cycle_timer_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => Result(31),
      R => clk_5cycle_timer_not0001,
      Q => clk_5cycle_timer(31)
    );
  Madd_push_timer_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Madd_push_timer_addsub0000_lut(0),
      O => Madd_push_timer_addsub0000_cy(0)
    );
  Madd_push_timer_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Madd_push_timer_addsub0000_lut(0),
      O => push_timer_addsub0000(0)
    );
  Madd_push_timer_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(0),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_1_rt_523,
      O => Madd_push_timer_addsub0000_cy(1)
    );
  Madd_push_timer_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(0),
      LI => Madd_push_timer_addsub0000_cy_1_rt_523,
      O => push_timer_addsub0000(1)
    );
  Madd_push_timer_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(1),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_2_rt_545,
      O => Madd_push_timer_addsub0000_cy(2)
    );
  Madd_push_timer_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(1),
      LI => Madd_push_timer_addsub0000_cy_2_rt_545,
      O => push_timer_addsub0000(2)
    );
  Madd_push_timer_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(2),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_3_rt_549,
      O => Madd_push_timer_addsub0000_cy(3)
    );
  Madd_push_timer_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(2),
      LI => Madd_push_timer_addsub0000_cy_3_rt_549,
      O => push_timer_addsub0000(3)
    );
  Madd_push_timer_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(3),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_4_rt_551,
      O => Madd_push_timer_addsub0000_cy(4)
    );
  Madd_push_timer_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(3),
      LI => Madd_push_timer_addsub0000_cy_4_rt_551,
      O => push_timer_addsub0000(4)
    );
  Madd_push_timer_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(4),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_5_rt_553,
      O => Madd_push_timer_addsub0000_cy(5)
    );
  Madd_push_timer_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(4),
      LI => Madd_push_timer_addsub0000_cy_5_rt_553,
      O => push_timer_addsub0000(5)
    );
  Madd_push_timer_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(5),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_6_rt_555,
      O => Madd_push_timer_addsub0000_cy(6)
    );
  Madd_push_timer_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(5),
      LI => Madd_push_timer_addsub0000_cy_6_rt_555,
      O => push_timer_addsub0000(6)
    );
  Madd_push_timer_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(6),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_7_rt_557,
      O => Madd_push_timer_addsub0000_cy(7)
    );
  Madd_push_timer_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(6),
      LI => Madd_push_timer_addsub0000_cy_7_rt_557,
      O => push_timer_addsub0000(7)
    );
  Madd_push_timer_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(7),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_8_rt_559,
      O => Madd_push_timer_addsub0000_cy(8)
    );
  Madd_push_timer_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(7),
      LI => Madd_push_timer_addsub0000_cy_8_rt_559,
      O => push_timer_addsub0000(8)
    );
  Madd_push_timer_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(8),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_9_rt_561,
      O => Madd_push_timer_addsub0000_cy(9)
    );
  Madd_push_timer_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(8),
      LI => Madd_push_timer_addsub0000_cy_9_rt_561,
      O => push_timer_addsub0000(9)
    );
  Madd_push_timer_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(9),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_10_rt_503,
      O => Madd_push_timer_addsub0000_cy(10)
    );
  Madd_push_timer_addsub0000_xor_10_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(9),
      LI => Madd_push_timer_addsub0000_cy_10_rt_503,
      O => push_timer_addsub0000(10)
    );
  Madd_push_timer_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(10),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_11_rt_505,
      O => Madd_push_timer_addsub0000_cy(11)
    );
  Madd_push_timer_addsub0000_xor_11_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(10),
      LI => Madd_push_timer_addsub0000_cy_11_rt_505,
      O => push_timer_addsub0000(11)
    );
  Madd_push_timer_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(11),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_12_rt_507,
      O => Madd_push_timer_addsub0000_cy(12)
    );
  Madd_push_timer_addsub0000_xor_12_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(11),
      LI => Madd_push_timer_addsub0000_cy_12_rt_507,
      O => push_timer_addsub0000(12)
    );
  Madd_push_timer_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(12),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_13_rt_509,
      O => Madd_push_timer_addsub0000_cy(13)
    );
  Madd_push_timer_addsub0000_xor_13_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(12),
      LI => Madd_push_timer_addsub0000_cy_13_rt_509,
      O => push_timer_addsub0000(13)
    );
  Madd_push_timer_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(13),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_14_rt_511,
      O => Madd_push_timer_addsub0000_cy(14)
    );
  Madd_push_timer_addsub0000_xor_14_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(13),
      LI => Madd_push_timer_addsub0000_cy_14_rt_511,
      O => push_timer_addsub0000(14)
    );
  Madd_push_timer_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(14),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_15_rt_513,
      O => Madd_push_timer_addsub0000_cy(15)
    );
  Madd_push_timer_addsub0000_xor_15_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(14),
      LI => Madd_push_timer_addsub0000_cy_15_rt_513,
      O => push_timer_addsub0000(15)
    );
  Madd_push_timer_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(15),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_16_rt_515,
      O => Madd_push_timer_addsub0000_cy(16)
    );
  Madd_push_timer_addsub0000_xor_16_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(15),
      LI => Madd_push_timer_addsub0000_cy_16_rt_515,
      O => push_timer_addsub0000(16)
    );
  Madd_push_timer_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(16),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_17_rt_517,
      O => Madd_push_timer_addsub0000_cy(17)
    );
  Madd_push_timer_addsub0000_xor_17_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(16),
      LI => Madd_push_timer_addsub0000_cy_17_rt_517,
      O => push_timer_addsub0000(17)
    );
  Madd_push_timer_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(17),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_18_rt_519,
      O => Madd_push_timer_addsub0000_cy(18)
    );
  Madd_push_timer_addsub0000_xor_18_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(17),
      LI => Madd_push_timer_addsub0000_cy_18_rt_519,
      O => push_timer_addsub0000(18)
    );
  Madd_push_timer_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(18),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_19_rt_521,
      O => Madd_push_timer_addsub0000_cy(19)
    );
  Madd_push_timer_addsub0000_xor_19_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(18),
      LI => Madd_push_timer_addsub0000_cy_19_rt_521,
      O => push_timer_addsub0000(19)
    );
  Madd_push_timer_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(19),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_20_rt_525,
      O => Madd_push_timer_addsub0000_cy(20)
    );
  Madd_push_timer_addsub0000_xor_20_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(19),
      LI => Madd_push_timer_addsub0000_cy_20_rt_525,
      O => push_timer_addsub0000(20)
    );
  Madd_push_timer_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(20),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_21_rt_527,
      O => Madd_push_timer_addsub0000_cy(21)
    );
  Madd_push_timer_addsub0000_xor_21_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(20),
      LI => Madd_push_timer_addsub0000_cy_21_rt_527,
      O => push_timer_addsub0000(21)
    );
  Madd_push_timer_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(21),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_22_rt_529,
      O => Madd_push_timer_addsub0000_cy(22)
    );
  Madd_push_timer_addsub0000_xor_22_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(21),
      LI => Madd_push_timer_addsub0000_cy_22_rt_529,
      O => push_timer_addsub0000(22)
    );
  Madd_push_timer_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(22),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_23_rt_531,
      O => Madd_push_timer_addsub0000_cy(23)
    );
  Madd_push_timer_addsub0000_xor_23_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(22),
      LI => Madd_push_timer_addsub0000_cy_23_rt_531,
      O => push_timer_addsub0000(23)
    );
  Madd_push_timer_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(23),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_24_rt_533,
      O => Madd_push_timer_addsub0000_cy(24)
    );
  Madd_push_timer_addsub0000_xor_24_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(23),
      LI => Madd_push_timer_addsub0000_cy_24_rt_533,
      O => push_timer_addsub0000(24)
    );
  Madd_push_timer_addsub0000_cy_25_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(24),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_25_rt_535,
      O => Madd_push_timer_addsub0000_cy(25)
    );
  Madd_push_timer_addsub0000_xor_25_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(24),
      LI => Madd_push_timer_addsub0000_cy_25_rt_535,
      O => push_timer_addsub0000(25)
    );
  Madd_push_timer_addsub0000_cy_26_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(25),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_26_rt_537,
      O => Madd_push_timer_addsub0000_cy(26)
    );
  Madd_push_timer_addsub0000_xor_26_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(25),
      LI => Madd_push_timer_addsub0000_cy_26_rt_537,
      O => push_timer_addsub0000(26)
    );
  Madd_push_timer_addsub0000_cy_27_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(26),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_27_rt_539,
      O => Madd_push_timer_addsub0000_cy(27)
    );
  Madd_push_timer_addsub0000_xor_27_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(26),
      LI => Madd_push_timer_addsub0000_cy_27_rt_539,
      O => push_timer_addsub0000(27)
    );
  Madd_push_timer_addsub0000_cy_28_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(27),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_28_rt_541,
      O => Madd_push_timer_addsub0000_cy(28)
    );
  Madd_push_timer_addsub0000_xor_28_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(27),
      LI => Madd_push_timer_addsub0000_cy_28_rt_541,
      O => push_timer_addsub0000(28)
    );
  Madd_push_timer_addsub0000_cy_29_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(28),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_29_rt_543,
      O => Madd_push_timer_addsub0000_cy(29)
    );
  Madd_push_timer_addsub0000_xor_29_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(28),
      LI => Madd_push_timer_addsub0000_cy_29_rt_543,
      O => push_timer_addsub0000(29)
    );
  Madd_push_timer_addsub0000_cy_30_Q : MUXCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(29),
      DI => N0,
      S => Madd_push_timer_addsub0000_cy_30_rt_547,
      O => Madd_push_timer_addsub0000_cy(30)
    );
  Madd_push_timer_addsub0000_xor_30_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(29),
      LI => Madd_push_timer_addsub0000_cy_30_rt_547,
      O => push_timer_addsub0000(30)
    );
  Madd_push_timer_addsub0000_xor_31_Q : XORCY
    port map (
      CI => Madd_push_timer_addsub0000_cy(30),
      LI => Madd_push_timer_addsub0000_xor_31_rt_563,
      O => push_timer_addsub0000(31)
    );
  Mcompar_LED1_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_LED1_cmp_lt0000_cy_0_rt_565,
      O => Mcompar_LED1_cmp_lt0000_cy(0)
    );
  Mcompar_LED1_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => morse_char_0_3_1058,
      I1 => morse_char_0_4_1061,
      O => Mcompar_LED1_cmp_lt0000_lut(1)
    );
  Mcompar_LED1_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_LED1_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_LED1_cmp_lt0000_lut(1),
      O => Mcompar_LED1_cmp_lt0000_cy(1)
    );
  Mcompar_LED1_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => morse_char_0_5_1062,
      I1 => morse_char_0_6_1063,
      O => Mcompar_LED1_cmp_lt0000_lut(2)
    );
  Mcompar_LED1_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_LED1_cmp_lt0000_cy(1),
      DI => N0,
      S => Mcompar_LED1_cmp_lt0000_lut(2),
      O => Mcompar_LED1_cmp_lt0000_cy(2)
    );
  Mcompar_LED1_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_7_1064,
      I1 => morse_char_0_8_1065,
      I2 => morse_char_0_9_1066,
      I3 => morse_char_0_10_1037,
      O => Mcompar_LED1_cmp_lt0000_lut(3)
    );
  Mcompar_LED1_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_LED1_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_LED1_cmp_lt0000_lut(3),
      O => Mcompar_LED1_cmp_lt0000_cy(3)
    );
  Mcompar_LED1_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_11_1038,
      I1 => morse_char_0_12_1039,
      I2 => morse_char_0_13_1040,
      I3 => morse_char_0_14_1041,
      O => Mcompar_LED1_cmp_lt0000_lut(4)
    );
  Mcompar_LED1_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_LED1_cmp_lt0000_cy(3),
      DI => N1,
      S => Mcompar_LED1_cmp_lt0000_lut(4),
      O => Mcompar_LED1_cmp_lt0000_cy(4)
    );
  Mcompar_LED1_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_15_1042,
      I1 => morse_char_0_16_1043,
      I2 => morse_char_0_17_1044,
      I3 => morse_char_0_18_1045,
      O => Mcompar_LED1_cmp_lt0000_lut(5)
    );
  Mcompar_LED1_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_LED1_cmp_lt0000_cy(4),
      DI => N1,
      S => Mcompar_LED1_cmp_lt0000_lut(5),
      O => Mcompar_LED1_cmp_lt0000_cy(5)
    );
  Mcompar_LED1_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_19_1046,
      I1 => morse_char_0_20_1048,
      I2 => morse_char_0_21_1049,
      I3 => morse_char_0_22_1050,
      O => Mcompar_LED1_cmp_lt0000_lut(6)
    );
  Mcompar_LED1_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_LED1_cmp_lt0000_cy(5),
      DI => N1,
      S => Mcompar_LED1_cmp_lt0000_lut(6),
      O => Mcompar_LED1_cmp_lt0000_cy(6)
    );
  Mcompar_LED1_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_23_1051,
      I1 => morse_char_0_24_1052,
      I2 => morse_char_0_25_1053,
      I3 => morse_char_0_26_1054,
      O => Mcompar_LED1_cmp_lt0000_lut(7)
    );
  Mcompar_LED1_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_LED1_cmp_lt0000_cy(6),
      DI => N1,
      S => Mcompar_LED1_cmp_lt0000_lut(7),
      O => Mcompar_LED1_cmp_lt0000_cy(7)
    );
  Mcompar_LED1_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_27_1055,
      I1 => morse_char_0_28_1056,
      I2 => morse_char_0_29_1057,
      I3 => morse_char_0_30_1059,
      O => Mcompar_LED1_cmp_lt0000_lut(8)
    );
  Mcompar_LED1_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_LED1_cmp_lt0000_cy(7),
      DI => N1,
      S => Mcompar_LED1_cmp_lt0000_lut(8),
      O => Mcompar_LED1_cmp_lt0000_cy(8)
    );
  Mcompar_LED1_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_LED1_cmp_lt0000_cy(8),
      DI => N0,
      S => Mcompar_LED1_cmp_lt0000_lut(9),
      O => Mcompar_LED1_cmp_lt0000_cy(9)
    );
  Mcompar_LED3_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_LED3_cmp_lt0000_cy_0_rt_585,
      O => Mcompar_LED3_cmp_lt0000_cy(0)
    );
  Mcompar_LED3_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => morse_char_1_3_1123,
      I1 => morse_char_1_4_1126,
      O => Mcompar_LED3_cmp_lt0000_lut(1)
    );
  Mcompar_LED3_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_LED3_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_LED3_cmp_lt0000_lut(1),
      O => Mcompar_LED3_cmp_lt0000_cy(1)
    );
  Mcompar_LED3_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => morse_char_1_5_1127,
      I1 => morse_char_1_6_1128,
      O => Mcompar_LED3_cmp_lt0000_lut(2)
    );
  Mcompar_LED3_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_LED3_cmp_lt0000_cy(1),
      DI => N0,
      S => Mcompar_LED3_cmp_lt0000_lut(2),
      O => Mcompar_LED3_cmp_lt0000_cy(2)
    );
  Mcompar_LED3_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_7_1129,
      I1 => morse_char_1_8_1130,
      I2 => morse_char_1_9_1131,
      I3 => morse_char_1_10_1102,
      O => Mcompar_LED3_cmp_lt0000_lut(3)
    );
  Mcompar_LED3_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_LED3_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_LED3_cmp_lt0000_lut(3),
      O => Mcompar_LED3_cmp_lt0000_cy(3)
    );
  Mcompar_LED3_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_11_1103,
      I1 => morse_char_1_12_1104,
      I2 => morse_char_1_13_1105,
      I3 => morse_char_1_14_1106,
      O => Mcompar_LED3_cmp_lt0000_lut(4)
    );
  Mcompar_LED3_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_LED3_cmp_lt0000_cy(3),
      DI => N1,
      S => Mcompar_LED3_cmp_lt0000_lut(4),
      O => Mcompar_LED3_cmp_lt0000_cy(4)
    );
  Mcompar_LED3_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_15_1107,
      I1 => morse_char_1_16_1108,
      I2 => morse_char_1_17_1109,
      I3 => morse_char_1_18_1110,
      O => Mcompar_LED3_cmp_lt0000_lut(5)
    );
  Mcompar_LED3_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_LED3_cmp_lt0000_cy(4),
      DI => N1,
      S => Mcompar_LED3_cmp_lt0000_lut(5),
      O => Mcompar_LED3_cmp_lt0000_cy(5)
    );
  Mcompar_LED3_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_19_1111,
      I1 => morse_char_1_20_1113,
      I2 => morse_char_1_21_1114,
      I3 => morse_char_1_22_1115,
      O => Mcompar_LED3_cmp_lt0000_lut(6)
    );
  Mcompar_LED3_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_LED3_cmp_lt0000_cy(5),
      DI => N1,
      S => Mcompar_LED3_cmp_lt0000_lut(6),
      O => Mcompar_LED3_cmp_lt0000_cy(6)
    );
  Mcompar_LED3_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_23_1116,
      I1 => morse_char_1_24_1117,
      I2 => morse_char_1_25_1118,
      I3 => morse_char_1_26_1119,
      O => Mcompar_LED3_cmp_lt0000_lut(7)
    );
  Mcompar_LED3_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_LED3_cmp_lt0000_cy(6),
      DI => N1,
      S => Mcompar_LED3_cmp_lt0000_lut(7),
      O => Mcompar_LED3_cmp_lt0000_cy(7)
    );
  Mcompar_LED3_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_27_1120,
      I1 => morse_char_1_28_1121,
      I2 => morse_char_1_29_1122,
      I3 => morse_char_1_30_1124,
      O => Mcompar_LED3_cmp_lt0000_lut(8)
    );
  Mcompar_LED3_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_LED3_cmp_lt0000_cy(7),
      DI => N1,
      S => Mcompar_LED3_cmp_lt0000_lut(8),
      O => Mcompar_LED3_cmp_lt0000_cy(8)
    );
  Mcompar_LED3_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_LED3_cmp_lt0000_cy(8),
      DI => N0,
      S => Mcompar_LED3_cmp_lt0000_lut(9),
      O => Mcompar_LED3_cmp_lt0000_cy(9)
    );
  Mcompar_LED5_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_LED5_cmp_lt0000_cy_0_rt_605,
      O => Mcompar_LED5_cmp_lt0000_cy(0)
    );
  Mcompar_LED5_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => morse_char_2_3_1187,
      I1 => morse_char_2_4_1190,
      O => Mcompar_LED5_cmp_lt0000_lut(1)
    );
  Mcompar_LED5_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_LED5_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_LED5_cmp_lt0000_lut(1),
      O => Mcompar_LED5_cmp_lt0000_cy(1)
    );
  Mcompar_LED5_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => morse_char_2_5_1191,
      I1 => morse_char_2_6_1192,
      O => Mcompar_LED5_cmp_lt0000_lut(2)
    );
  Mcompar_LED5_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_LED5_cmp_lt0000_cy(1),
      DI => N0,
      S => Mcompar_LED5_cmp_lt0000_lut(2),
      O => Mcompar_LED5_cmp_lt0000_cy(2)
    );
  Mcompar_LED5_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_7_1193,
      I1 => morse_char_2_8_1194,
      I2 => morse_char_2_9_1195,
      I3 => morse_char_2_10_1166,
      O => Mcompar_LED5_cmp_lt0000_lut(3)
    );
  Mcompar_LED5_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_LED5_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_LED5_cmp_lt0000_lut(3),
      O => Mcompar_LED5_cmp_lt0000_cy(3)
    );
  Mcompar_LED5_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_11_1167,
      I1 => morse_char_2_12_1168,
      I2 => morse_char_2_13_1169,
      I3 => morse_char_2_14_1170,
      O => Mcompar_LED5_cmp_lt0000_lut(4)
    );
  Mcompar_LED5_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_LED5_cmp_lt0000_cy(3),
      DI => N1,
      S => Mcompar_LED5_cmp_lt0000_lut(4),
      O => Mcompar_LED5_cmp_lt0000_cy(4)
    );
  Mcompar_LED5_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_15_1171,
      I1 => morse_char_2_16_1172,
      I2 => morse_char_2_17_1173,
      I3 => morse_char_2_18_1174,
      O => Mcompar_LED5_cmp_lt0000_lut(5)
    );
  Mcompar_LED5_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_LED5_cmp_lt0000_cy(4),
      DI => N1,
      S => Mcompar_LED5_cmp_lt0000_lut(5),
      O => Mcompar_LED5_cmp_lt0000_cy(5)
    );
  Mcompar_LED5_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_19_1175,
      I1 => morse_char_2_20_1177,
      I2 => morse_char_2_21_1178,
      I3 => morse_char_2_22_1179,
      O => Mcompar_LED5_cmp_lt0000_lut(6)
    );
  Mcompar_LED5_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_LED5_cmp_lt0000_cy(5),
      DI => N1,
      S => Mcompar_LED5_cmp_lt0000_lut(6),
      O => Mcompar_LED5_cmp_lt0000_cy(6)
    );
  Mcompar_LED5_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_23_1180,
      I1 => morse_char_2_24_1181,
      I2 => morse_char_2_25_1182,
      I3 => morse_char_2_26_1183,
      O => Mcompar_LED5_cmp_lt0000_lut(7)
    );
  Mcompar_LED5_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_LED5_cmp_lt0000_cy(6),
      DI => N1,
      S => Mcompar_LED5_cmp_lt0000_lut(7),
      O => Mcompar_LED5_cmp_lt0000_cy(7)
    );
  Mcompar_LED5_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_27_1184,
      I1 => morse_char_2_28_1185,
      I2 => morse_char_2_29_1186,
      I3 => morse_char_2_30_1188,
      O => Mcompar_LED5_cmp_lt0000_lut(8)
    );
  Mcompar_LED5_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_LED5_cmp_lt0000_cy(7),
      DI => N1,
      S => Mcompar_LED5_cmp_lt0000_lut(8),
      O => Mcompar_LED5_cmp_lt0000_cy(8)
    );
  Mcompar_LED5_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_LED5_cmp_lt0000_cy(8),
      DI => N0,
      S => Mcompar_LED5_cmp_lt0000_lut(9),
      O => Mcompar_LED5_cmp_lt0000_cy(9)
    );
  Mcompar_LED7_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_LED7_cmp_lt0000_cy_0_rt_625,
      O => Mcompar_LED7_cmp_lt0000_cy(0)
    );
  Mcompar_LED7_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => morse_char_3_3_1251,
      I1 => morse_char_3_4_1254,
      O => Mcompar_LED7_cmp_lt0000_lut(1)
    );
  Mcompar_LED7_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_LED7_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_LED7_cmp_lt0000_lut(1),
      O => Mcompar_LED7_cmp_lt0000_cy(1)
    );
  Mcompar_LED7_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => morse_char_3_5_1255,
      I1 => morse_char_3_6_1256,
      O => Mcompar_LED7_cmp_lt0000_lut(2)
    );
  Mcompar_LED7_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_LED7_cmp_lt0000_cy(1),
      DI => N0,
      S => Mcompar_LED7_cmp_lt0000_lut(2),
      O => Mcompar_LED7_cmp_lt0000_cy(2)
    );
  Mcompar_LED7_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_7_1257,
      I1 => morse_char_3_8_1258,
      I2 => morse_char_3_9_1259,
      I3 => morse_char_3_10_1230,
      O => Mcompar_LED7_cmp_lt0000_lut(3)
    );
  Mcompar_LED7_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_LED7_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_LED7_cmp_lt0000_lut(3),
      O => Mcompar_LED7_cmp_lt0000_cy(3)
    );
  Mcompar_LED7_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_11_1231,
      I1 => morse_char_3_12_1232,
      I2 => morse_char_3_13_1233,
      I3 => morse_char_3_14_1234,
      O => Mcompar_LED7_cmp_lt0000_lut(4)
    );
  Mcompar_LED7_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_LED7_cmp_lt0000_cy(3),
      DI => N1,
      S => Mcompar_LED7_cmp_lt0000_lut(4),
      O => Mcompar_LED7_cmp_lt0000_cy(4)
    );
  Mcompar_LED7_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_15_1235,
      I1 => morse_char_3_16_1236,
      I2 => morse_char_3_17_1237,
      I3 => morse_char_3_18_1238,
      O => Mcompar_LED7_cmp_lt0000_lut(5)
    );
  Mcompar_LED7_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_LED7_cmp_lt0000_cy(4),
      DI => N1,
      S => Mcompar_LED7_cmp_lt0000_lut(5),
      O => Mcompar_LED7_cmp_lt0000_cy(5)
    );
  Mcompar_LED7_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_19_1239,
      I1 => morse_char_3_20_1241,
      I2 => morse_char_3_21_1242,
      I3 => morse_char_3_22_1243,
      O => Mcompar_LED7_cmp_lt0000_lut(6)
    );
  Mcompar_LED7_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_LED7_cmp_lt0000_cy(5),
      DI => N1,
      S => Mcompar_LED7_cmp_lt0000_lut(6),
      O => Mcompar_LED7_cmp_lt0000_cy(6)
    );
  Mcompar_LED7_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_23_1244,
      I1 => morse_char_3_24_1245,
      I2 => morse_char_3_25_1246,
      I3 => morse_char_3_26_1247,
      O => Mcompar_LED7_cmp_lt0000_lut(7)
    );
  Mcompar_LED7_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_LED7_cmp_lt0000_cy(6),
      DI => N1,
      S => Mcompar_LED7_cmp_lt0000_lut(7),
      O => Mcompar_LED7_cmp_lt0000_cy(7)
    );
  Mcompar_LED7_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_27_1248,
      I1 => morse_char_3_28_1249,
      I2 => morse_char_3_29_1250,
      I3 => morse_char_3_30_1252,
      O => Mcompar_LED7_cmp_lt0000_lut(8)
    );
  Mcompar_LED7_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_LED7_cmp_lt0000_cy(7),
      DI => N1,
      S => Mcompar_LED7_cmp_lt0000_lut(8),
      O => Mcompar_LED7_cmp_lt0000_cy(8)
    );
  Mcompar_LED7_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_LED7_cmp_lt0000_cy(8),
      DI => N0,
      S => Mcompar_LED7_cmp_lt0000_lut(9),
      O => Mcompar_LED7_cmp_lt0000_cy(9)
    );
  Mcount_clk_10ms_timer_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_clk_10ms_timer_lut(0),
      O => Mcount_clk_10ms_timer_cy(0)
    );
  Mcount_clk_10ms_timer_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_clk_10ms_timer_lut(0),
      O => Result_0_1
    );
  Mcount_clk_10ms_timer_cy_1_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(0),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_1_rt_687,
      O => Mcount_clk_10ms_timer_cy(1)
    );
  Mcount_clk_10ms_timer_xor_1_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(0),
      LI => Mcount_clk_10ms_timer_cy_1_rt_687,
      O => Result_1_1
    );
  Mcount_clk_10ms_timer_cy_2_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(1),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_2_rt_709,
      O => Mcount_clk_10ms_timer_cy(2)
    );
  Mcount_clk_10ms_timer_xor_2_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(1),
      LI => Mcount_clk_10ms_timer_cy_2_rt_709,
      O => Result_2_1
    );
  Mcount_clk_10ms_timer_cy_3_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(2),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_3_rt_713,
      O => Mcount_clk_10ms_timer_cy(3)
    );
  Mcount_clk_10ms_timer_xor_3_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(2),
      LI => Mcount_clk_10ms_timer_cy_3_rt_713,
      O => Result_3_1
    );
  Mcount_clk_10ms_timer_cy_4_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(3),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_4_rt_715,
      O => Mcount_clk_10ms_timer_cy(4)
    );
  Mcount_clk_10ms_timer_xor_4_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(3),
      LI => Mcount_clk_10ms_timer_cy_4_rt_715,
      O => Result_4_1
    );
  Mcount_clk_10ms_timer_cy_5_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(4),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_5_rt_717,
      O => Mcount_clk_10ms_timer_cy(5)
    );
  Mcount_clk_10ms_timer_xor_5_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(4),
      LI => Mcount_clk_10ms_timer_cy_5_rt_717,
      O => Result_5_1
    );
  Mcount_clk_10ms_timer_cy_6_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(5),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_6_rt_719,
      O => Mcount_clk_10ms_timer_cy(6)
    );
  Mcount_clk_10ms_timer_xor_6_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(5),
      LI => Mcount_clk_10ms_timer_cy_6_rt_719,
      O => Result_6_1
    );
  Mcount_clk_10ms_timer_cy_7_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(6),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_7_rt_721,
      O => Mcount_clk_10ms_timer_cy(7)
    );
  Mcount_clk_10ms_timer_xor_7_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(6),
      LI => Mcount_clk_10ms_timer_cy_7_rt_721,
      O => Result_7_1
    );
  Mcount_clk_10ms_timer_cy_8_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(7),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_8_rt_723,
      O => Mcount_clk_10ms_timer_cy(8)
    );
  Mcount_clk_10ms_timer_xor_8_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(7),
      LI => Mcount_clk_10ms_timer_cy_8_rt_723,
      O => Result_8_1
    );
  Mcount_clk_10ms_timer_cy_9_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(8),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_9_rt_725,
      O => Mcount_clk_10ms_timer_cy(9)
    );
  Mcount_clk_10ms_timer_xor_9_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(8),
      LI => Mcount_clk_10ms_timer_cy_9_rt_725,
      O => Result_9_1
    );
  Mcount_clk_10ms_timer_cy_10_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(9),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_10_rt_667,
      O => Mcount_clk_10ms_timer_cy(10)
    );
  Mcount_clk_10ms_timer_xor_10_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(9),
      LI => Mcount_clk_10ms_timer_cy_10_rt_667,
      O => Result_10_1
    );
  Mcount_clk_10ms_timer_cy_11_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(10),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_11_rt_669,
      O => Mcount_clk_10ms_timer_cy(11)
    );
  Mcount_clk_10ms_timer_xor_11_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(10),
      LI => Mcount_clk_10ms_timer_cy_11_rt_669,
      O => Result_11_1
    );
  Mcount_clk_10ms_timer_cy_12_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(11),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_12_rt_671,
      O => Mcount_clk_10ms_timer_cy(12)
    );
  Mcount_clk_10ms_timer_xor_12_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(11),
      LI => Mcount_clk_10ms_timer_cy_12_rt_671,
      O => Result_12_1
    );
  Mcount_clk_10ms_timer_cy_13_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(12),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_13_rt_673,
      O => Mcount_clk_10ms_timer_cy(13)
    );
  Mcount_clk_10ms_timer_xor_13_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(12),
      LI => Mcount_clk_10ms_timer_cy_13_rt_673,
      O => Result_13_1
    );
  Mcount_clk_10ms_timer_cy_14_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(13),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_14_rt_675,
      O => Mcount_clk_10ms_timer_cy(14)
    );
  Mcount_clk_10ms_timer_xor_14_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(13),
      LI => Mcount_clk_10ms_timer_cy_14_rt_675,
      O => Result_14_1
    );
  Mcount_clk_10ms_timer_cy_15_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(14),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_15_rt_677,
      O => Mcount_clk_10ms_timer_cy(15)
    );
  Mcount_clk_10ms_timer_xor_15_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(14),
      LI => Mcount_clk_10ms_timer_cy_15_rt_677,
      O => Result_15_1
    );
  Mcount_clk_10ms_timer_cy_16_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(15),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_16_rt_679,
      O => Mcount_clk_10ms_timer_cy(16)
    );
  Mcount_clk_10ms_timer_xor_16_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(15),
      LI => Mcount_clk_10ms_timer_cy_16_rt_679,
      O => Result_16_1
    );
  Mcount_clk_10ms_timer_cy_17_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(16),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_17_rt_681,
      O => Mcount_clk_10ms_timer_cy(17)
    );
  Mcount_clk_10ms_timer_xor_17_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(16),
      LI => Mcount_clk_10ms_timer_cy_17_rt_681,
      O => Result_17_1
    );
  Mcount_clk_10ms_timer_cy_18_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(17),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_18_rt_683,
      O => Mcount_clk_10ms_timer_cy(18)
    );
  Mcount_clk_10ms_timer_xor_18_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(17),
      LI => Mcount_clk_10ms_timer_cy_18_rt_683,
      O => Result_18_1
    );
  Mcount_clk_10ms_timer_cy_19_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(18),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_19_rt_685,
      O => Mcount_clk_10ms_timer_cy(19)
    );
  Mcount_clk_10ms_timer_xor_19_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(18),
      LI => Mcount_clk_10ms_timer_cy_19_rt_685,
      O => Result_19_1
    );
  Mcount_clk_10ms_timer_cy_20_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(19),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_20_rt_689,
      O => Mcount_clk_10ms_timer_cy(20)
    );
  Mcount_clk_10ms_timer_xor_20_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(19),
      LI => Mcount_clk_10ms_timer_cy_20_rt_689,
      O => Result_20_1
    );
  Mcount_clk_10ms_timer_cy_21_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(20),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_21_rt_691,
      O => Mcount_clk_10ms_timer_cy(21)
    );
  Mcount_clk_10ms_timer_xor_21_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(20),
      LI => Mcount_clk_10ms_timer_cy_21_rt_691,
      O => Result_21_1
    );
  Mcount_clk_10ms_timer_cy_22_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(21),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_22_rt_693,
      O => Mcount_clk_10ms_timer_cy(22)
    );
  Mcount_clk_10ms_timer_xor_22_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(21),
      LI => Mcount_clk_10ms_timer_cy_22_rt_693,
      O => Result_22_1
    );
  Mcount_clk_10ms_timer_cy_23_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(22),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_23_rt_695,
      O => Mcount_clk_10ms_timer_cy(23)
    );
  Mcount_clk_10ms_timer_xor_23_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(22),
      LI => Mcount_clk_10ms_timer_cy_23_rt_695,
      O => Result_23_1
    );
  Mcount_clk_10ms_timer_cy_24_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(23),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_24_rt_697,
      O => Mcount_clk_10ms_timer_cy(24)
    );
  Mcount_clk_10ms_timer_xor_24_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(23),
      LI => Mcount_clk_10ms_timer_cy_24_rt_697,
      O => Result_24_1
    );
  Mcount_clk_10ms_timer_cy_25_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(24),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_25_rt_699,
      O => Mcount_clk_10ms_timer_cy(25)
    );
  Mcount_clk_10ms_timer_xor_25_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(24),
      LI => Mcount_clk_10ms_timer_cy_25_rt_699,
      O => Result_25_1
    );
  Mcount_clk_10ms_timer_cy_26_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(25),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_26_rt_701,
      O => Mcount_clk_10ms_timer_cy(26)
    );
  Mcount_clk_10ms_timer_xor_26_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(25),
      LI => Mcount_clk_10ms_timer_cy_26_rt_701,
      O => Result_26_1
    );
  Mcount_clk_10ms_timer_cy_27_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(26),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_27_rt_703,
      O => Mcount_clk_10ms_timer_cy(27)
    );
  Mcount_clk_10ms_timer_xor_27_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(26),
      LI => Mcount_clk_10ms_timer_cy_27_rt_703,
      O => Result_27_1
    );
  Mcount_clk_10ms_timer_cy_28_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(27),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_28_rt_705,
      O => Mcount_clk_10ms_timer_cy(28)
    );
  Mcount_clk_10ms_timer_xor_28_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(27),
      LI => Mcount_clk_10ms_timer_cy_28_rt_705,
      O => Result_28_1
    );
  Mcount_clk_10ms_timer_cy_29_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(28),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_29_rt_707,
      O => Mcount_clk_10ms_timer_cy(29)
    );
  Mcount_clk_10ms_timer_xor_29_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(28),
      LI => Mcount_clk_10ms_timer_cy_29_rt_707,
      O => Result_29_1
    );
  Mcount_clk_10ms_timer_cy_30_Q : MUXCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(29),
      DI => N0,
      S => Mcount_clk_10ms_timer_cy_30_rt_711,
      O => Mcount_clk_10ms_timer_cy(30)
    );
  Mcount_clk_10ms_timer_xor_30_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(29),
      LI => Mcount_clk_10ms_timer_cy_30_rt_711,
      O => Result_30_1
    );
  Mcount_clk_10ms_timer_xor_31_Q : XORCY
    port map (
      CI => Mcount_clk_10ms_timer_cy(30),
      LI => Mcount_clk_10ms_timer_xor_31_rt_727,
      O => Result_31_1
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_lcd_enable_cmp_ge0000_cy_0_rt_645,
      O => Mcompar_lcd_enable_cmp_ge0000_cy(0)
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_lcd_enable_cmp_ge0000_cy(0),
      DI => N1,
      S => Mcompar_lcd_enable_cmp_ge0000_lut_1_Q,
      O => Mcompar_lcd_enable_cmp_ge0000_cy(1)
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_lcd_enable_cmp_ge0000_cy(1),
      DI => N0,
      S => Mcompar_lcd_enable_cmp_ge0000_cy_2_rt_648,
      O => Mcompar_lcd_enable_cmp_ge0000_cy(2)
    );
  Mcompar_lcd_enable_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_5cycle_timer(3),
      I1 => clk_5cycle_timer(4),
      I2 => clk_5cycle_timer(5),
      I3 => clk_5cycle_timer(6),
      O => Mcompar_lcd_enable_cmp_ge0000_lut_3_Q_658
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_lcd_enable_cmp_ge0000_cy(2),
      DI => N1,
      S => Mcompar_lcd_enable_cmp_ge0000_lut_3_Q_658,
      O => Mcompar_lcd_enable_cmp_ge0000_cy(3)
    );
  Mcompar_lcd_enable_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_5cycle_timer(7),
      I1 => clk_5cycle_timer(8),
      I2 => clk_5cycle_timer(9),
      I3 => clk_5cycle_timer(10),
      O => Mcompar_lcd_enable_cmp_ge0000_lut_4_Q_659
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_lcd_enable_cmp_ge0000_cy(3),
      DI => N1,
      S => Mcompar_lcd_enable_cmp_ge0000_lut_4_Q_659,
      O => Mcompar_lcd_enable_cmp_ge0000_cy(4)
    );
  Mcompar_lcd_enable_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_5cycle_timer(11),
      I1 => clk_5cycle_timer(12),
      I2 => clk_5cycle_timer(13),
      I3 => clk_5cycle_timer(14),
      O => Mcompar_lcd_enable_cmp_ge0000_lut_5_Q_660
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_lcd_enable_cmp_ge0000_cy(4),
      DI => N1,
      S => Mcompar_lcd_enable_cmp_ge0000_lut_5_Q_660,
      O => Mcompar_lcd_enable_cmp_ge0000_cy(5)
    );
  Mcompar_lcd_enable_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_5cycle_timer(15),
      I1 => clk_5cycle_timer(16),
      I2 => clk_5cycle_timer(17),
      I3 => clk_5cycle_timer(18),
      O => Mcompar_lcd_enable_cmp_ge0000_lut_6_Q_661
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_lcd_enable_cmp_ge0000_cy(5),
      DI => N1,
      S => Mcompar_lcd_enable_cmp_ge0000_lut_6_Q_661,
      O => Mcompar_lcd_enable_cmp_ge0000_cy(6)
    );
  Mcompar_lcd_enable_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_5cycle_timer(19),
      I1 => clk_5cycle_timer(20),
      I2 => clk_5cycle_timer(21),
      I3 => clk_5cycle_timer(22),
      O => Mcompar_lcd_enable_cmp_ge0000_lut_7_Q_662
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_lcd_enable_cmp_ge0000_cy(6),
      DI => N1,
      S => Mcompar_lcd_enable_cmp_ge0000_lut_7_Q_662,
      O => Mcompar_lcd_enable_cmp_ge0000_cy(7)
    );
  Mcompar_lcd_enable_cmp_ge0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_5cycle_timer(23),
      I1 => clk_5cycle_timer(24),
      I2 => clk_5cycle_timer(25),
      I3 => clk_5cycle_timer(26),
      O => Mcompar_lcd_enable_cmp_ge0000_lut_8_Q_663
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_lcd_enable_cmp_ge0000_cy(7),
      DI => N1,
      S => Mcompar_lcd_enable_cmp_ge0000_lut_8_Q_663,
      O => Mcompar_lcd_enable_cmp_ge0000_cy(8)
    );
  Mcompar_lcd_enable_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_5cycle_timer(27),
      I1 => clk_5cycle_timer(28),
      I2 => clk_5cycle_timer(29),
      I3 => clk_5cycle_timer(30),
      O => Mcompar_lcd_enable_cmp_ge0000_lut_9_Q_664
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_lcd_enable_cmp_ge0000_cy(8),
      DI => N1,
      S => Mcompar_lcd_enable_cmp_ge0000_lut_9_Q_664,
      O => Mcompar_lcd_enable_cmp_ge0000_cy(9)
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_lcd_enable_cmp_ge0000_cy(9),
      DI => N0,
      S => Mcompar_lcd_enable_cmp_ge0000_lut_10_Q,
      O => lcd_enable_cmp_ge0000
    );
  Mcount_clk_5cycle_timer_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_clk_5cycle_timer_lut(0),
      O => Mcount_clk_5cycle_timer_cy(0)
    );
  Mcount_clk_5cycle_timer_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_clk_5cycle_timer_lut(0),
      O => Result(0)
    );
  Mcount_clk_5cycle_timer_cy_1_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(0),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_1_rt_750,
      O => Mcount_clk_5cycle_timer_cy(1)
    );
  Mcount_clk_5cycle_timer_xor_1_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(0),
      LI => Mcount_clk_5cycle_timer_cy_1_rt_750,
      O => Result(1)
    );
  Mcount_clk_5cycle_timer_cy_2_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(1),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_2_rt_772,
      O => Mcount_clk_5cycle_timer_cy(2)
    );
  Mcount_clk_5cycle_timer_xor_2_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(1),
      LI => Mcount_clk_5cycle_timer_cy_2_rt_772,
      O => Result(2)
    );
  Mcount_clk_5cycle_timer_cy_3_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(2),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_3_rt_776,
      O => Mcount_clk_5cycle_timer_cy(3)
    );
  Mcount_clk_5cycle_timer_xor_3_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(2),
      LI => Mcount_clk_5cycle_timer_cy_3_rt_776,
      O => Result(3)
    );
  Mcount_clk_5cycle_timer_cy_4_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(3),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_4_rt_778,
      O => Mcount_clk_5cycle_timer_cy(4)
    );
  Mcount_clk_5cycle_timer_xor_4_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(3),
      LI => Mcount_clk_5cycle_timer_cy_4_rt_778,
      O => Result(4)
    );
  Mcount_clk_5cycle_timer_cy_5_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(4),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_5_rt_780,
      O => Mcount_clk_5cycle_timer_cy(5)
    );
  Mcount_clk_5cycle_timer_xor_5_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(4),
      LI => Mcount_clk_5cycle_timer_cy_5_rt_780,
      O => Result(5)
    );
  Mcount_clk_5cycle_timer_cy_6_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(5),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_6_rt_782,
      O => Mcount_clk_5cycle_timer_cy(6)
    );
  Mcount_clk_5cycle_timer_xor_6_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(5),
      LI => Mcount_clk_5cycle_timer_cy_6_rt_782,
      O => Result(6)
    );
  Mcount_clk_5cycle_timer_cy_7_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(6),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_7_rt_784,
      O => Mcount_clk_5cycle_timer_cy(7)
    );
  Mcount_clk_5cycle_timer_xor_7_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(6),
      LI => Mcount_clk_5cycle_timer_cy_7_rt_784,
      O => Result(7)
    );
  Mcount_clk_5cycle_timer_cy_8_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(7),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_8_rt_786,
      O => Mcount_clk_5cycle_timer_cy(8)
    );
  Mcount_clk_5cycle_timer_xor_8_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(7),
      LI => Mcount_clk_5cycle_timer_cy_8_rt_786,
      O => Result(8)
    );
  Mcount_clk_5cycle_timer_cy_9_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(8),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_9_rt_788,
      O => Mcount_clk_5cycle_timer_cy(9)
    );
  Mcount_clk_5cycle_timer_xor_9_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(8),
      LI => Mcount_clk_5cycle_timer_cy_9_rt_788,
      O => Result(9)
    );
  Mcount_clk_5cycle_timer_cy_10_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(9),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_10_rt_730,
      O => Mcount_clk_5cycle_timer_cy(10)
    );
  Mcount_clk_5cycle_timer_xor_10_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(9),
      LI => Mcount_clk_5cycle_timer_cy_10_rt_730,
      O => Result(10)
    );
  Mcount_clk_5cycle_timer_cy_11_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(10),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_11_rt_732,
      O => Mcount_clk_5cycle_timer_cy(11)
    );
  Mcount_clk_5cycle_timer_xor_11_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(10),
      LI => Mcount_clk_5cycle_timer_cy_11_rt_732,
      O => Result(11)
    );
  Mcount_clk_5cycle_timer_cy_12_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(11),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_12_rt_734,
      O => Mcount_clk_5cycle_timer_cy(12)
    );
  Mcount_clk_5cycle_timer_xor_12_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(11),
      LI => Mcount_clk_5cycle_timer_cy_12_rt_734,
      O => Result(12)
    );
  Mcount_clk_5cycle_timer_cy_13_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(12),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_13_rt_736,
      O => Mcount_clk_5cycle_timer_cy(13)
    );
  Mcount_clk_5cycle_timer_xor_13_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(12),
      LI => Mcount_clk_5cycle_timer_cy_13_rt_736,
      O => Result(13)
    );
  Mcount_clk_5cycle_timer_cy_14_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(13),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_14_rt_738,
      O => Mcount_clk_5cycle_timer_cy(14)
    );
  Mcount_clk_5cycle_timer_xor_14_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(13),
      LI => Mcount_clk_5cycle_timer_cy_14_rt_738,
      O => Result(14)
    );
  Mcount_clk_5cycle_timer_cy_15_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(14),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_15_rt_740,
      O => Mcount_clk_5cycle_timer_cy(15)
    );
  Mcount_clk_5cycle_timer_xor_15_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(14),
      LI => Mcount_clk_5cycle_timer_cy_15_rt_740,
      O => Result(15)
    );
  Mcount_clk_5cycle_timer_cy_16_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(15),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_16_rt_742,
      O => Mcount_clk_5cycle_timer_cy(16)
    );
  Mcount_clk_5cycle_timer_xor_16_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(15),
      LI => Mcount_clk_5cycle_timer_cy_16_rt_742,
      O => Result(16)
    );
  Mcount_clk_5cycle_timer_cy_17_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(16),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_17_rt_744,
      O => Mcount_clk_5cycle_timer_cy(17)
    );
  Mcount_clk_5cycle_timer_xor_17_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(16),
      LI => Mcount_clk_5cycle_timer_cy_17_rt_744,
      O => Result(17)
    );
  Mcount_clk_5cycle_timer_cy_18_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(17),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_18_rt_746,
      O => Mcount_clk_5cycle_timer_cy(18)
    );
  Mcount_clk_5cycle_timer_xor_18_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(17),
      LI => Mcount_clk_5cycle_timer_cy_18_rt_746,
      O => Result(18)
    );
  Mcount_clk_5cycle_timer_cy_19_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(18),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_19_rt_748,
      O => Mcount_clk_5cycle_timer_cy(19)
    );
  Mcount_clk_5cycle_timer_xor_19_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(18),
      LI => Mcount_clk_5cycle_timer_cy_19_rt_748,
      O => Result(19)
    );
  Mcount_clk_5cycle_timer_cy_20_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(19),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_20_rt_752,
      O => Mcount_clk_5cycle_timer_cy(20)
    );
  Mcount_clk_5cycle_timer_xor_20_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(19),
      LI => Mcount_clk_5cycle_timer_cy_20_rt_752,
      O => Result(20)
    );
  Mcount_clk_5cycle_timer_cy_21_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(20),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_21_rt_754,
      O => Mcount_clk_5cycle_timer_cy(21)
    );
  Mcount_clk_5cycle_timer_xor_21_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(20),
      LI => Mcount_clk_5cycle_timer_cy_21_rt_754,
      O => Result(21)
    );
  Mcount_clk_5cycle_timer_cy_22_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(21),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_22_rt_756,
      O => Mcount_clk_5cycle_timer_cy(22)
    );
  Mcount_clk_5cycle_timer_xor_22_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(21),
      LI => Mcount_clk_5cycle_timer_cy_22_rt_756,
      O => Result(22)
    );
  Mcount_clk_5cycle_timer_cy_23_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(22),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_23_rt_758,
      O => Mcount_clk_5cycle_timer_cy(23)
    );
  Mcount_clk_5cycle_timer_xor_23_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(22),
      LI => Mcount_clk_5cycle_timer_cy_23_rt_758,
      O => Result(23)
    );
  Mcount_clk_5cycle_timer_cy_24_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(23),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_24_rt_760,
      O => Mcount_clk_5cycle_timer_cy(24)
    );
  Mcount_clk_5cycle_timer_xor_24_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(23),
      LI => Mcount_clk_5cycle_timer_cy_24_rt_760,
      O => Result(24)
    );
  Mcount_clk_5cycle_timer_cy_25_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(24),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_25_rt_762,
      O => Mcount_clk_5cycle_timer_cy(25)
    );
  Mcount_clk_5cycle_timer_xor_25_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(24),
      LI => Mcount_clk_5cycle_timer_cy_25_rt_762,
      O => Result(25)
    );
  Mcount_clk_5cycle_timer_cy_26_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(25),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_26_rt_764,
      O => Mcount_clk_5cycle_timer_cy(26)
    );
  Mcount_clk_5cycle_timer_xor_26_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(25),
      LI => Mcount_clk_5cycle_timer_cy_26_rt_764,
      O => Result(26)
    );
  Mcount_clk_5cycle_timer_cy_27_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(26),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_27_rt_766,
      O => Mcount_clk_5cycle_timer_cy(27)
    );
  Mcount_clk_5cycle_timer_xor_27_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(26),
      LI => Mcount_clk_5cycle_timer_cy_27_rt_766,
      O => Result(27)
    );
  Mcount_clk_5cycle_timer_cy_28_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(27),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_28_rt_768,
      O => Mcount_clk_5cycle_timer_cy(28)
    );
  Mcount_clk_5cycle_timer_xor_28_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(27),
      LI => Mcount_clk_5cycle_timer_cy_28_rt_768,
      O => Result(28)
    );
  Mcount_clk_5cycle_timer_cy_29_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(28),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_29_rt_770,
      O => Mcount_clk_5cycle_timer_cy(29)
    );
  Mcount_clk_5cycle_timer_xor_29_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(28),
      LI => Mcount_clk_5cycle_timer_cy_29_rt_770,
      O => Result(29)
    );
  Mcount_clk_5cycle_timer_cy_30_Q : MUXCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(29),
      DI => N0,
      S => Mcount_clk_5cycle_timer_cy_30_rt_774,
      O => Mcount_clk_5cycle_timer_cy(30)
    );
  Mcount_clk_5cycle_timer_xor_30_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(29),
      LI => Mcount_clk_5cycle_timer_cy_30_rt_774,
      O => Result(30)
    );
  Mcount_clk_5cycle_timer_xor_31_Q : XORCY
    port map (
      CI => Mcount_clk_5cycle_timer_cy(30),
      LI => Mcount_clk_5cycle_timer_xor_31_rt_790,
      O => Result(31)
    );
  current_state_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => current_state_FSM_FFd2_In,
      Q => current_state_FSM_FFd2_1022
    );
  BTN_NL_CONTROLLER_BTN_PRESSED : FD
    port map (
      C => clk_10ms_flag_936,
      D => BTN_NL_CONTROLLER_BTN_PRESSED_mux0001,
      Q => BTN_NL_CONTROLLER_BTN_PRESSED_1
    );
  BTN_NL_CONTROLLER_BTN_VAL_PREV : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => BTN_NL_IBUF_4,
      Q => BTN_NL_CONTROLLER_BTN_VAL_PREV_3
    );
  BTN_RESET_CONTROLLER_BTN_PRESSED : FD
    port map (
      C => clk_10ms_flag_936,
      D => BTN_RESET_CONTROLLER_BTN_PRESSED_mux0001,
      Q => BTN_RESET_CONTROLLER_BTN_PRESSED_11
    );
  BTN_RESET_CONTROLLER_BTN_VAL_PREV : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => BTN_RESET_IBUF_14,
      Q => BTN_RESET_CONTROLLER_BTN_VAL_PREV_13
    );
  BTN_SAVE_CONTROLLER_BTN_PRESSED : FD
    port map (
      C => clk_10ms_flag_936,
      D => BTN_SAVE_CONTROLLER_BTN_PRESSED_mux0001,
      Q => BTN_SAVE_CONTROLLER_BTN_PRESSED_16
    );
  BTN_SAVE_CONTROLLER_BTN_VAL_PREV : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => BTN_SAVE_IBUF_19,
      Q => BTN_SAVE_CONTROLLER_BTN_VAL_PREV_18
    );
  BTN_PUSH_CONTROLLER_BTN_PRESSED : FD
    port map (
      C => clk_10ms_flag_936,
      D => BTN_PUSH_CONTROLLER_BTN_PRESSED_mux0001,
      Q => BTN_PUSH_CONTROLLER_BTN_PRESSED_6
    );
  BTN_PUSH_CONTROLLER_BTN_VAL_PREV : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => BTN_PUSH_IBUF_9,
      Q => BTN_PUSH_CONTROLLER_BTN_VAL_PREV_8
    );
  LCD_CONTROLLER_init_state_FSM_FFd10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd10_In,
      Q => LCD_CONTROLLER_init_state_FSM_FFd10_362
    );
  LCD_CONTROLLER_init_state_FSM_FFd8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd8_In,
      Q => LCD_CONTROLLER_init_state_FSM_FFd8_377
    );
  LCD_CONTROLLER_init_state_FSM_FFd7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd7_In,
      Q => LCD_CONTROLLER_init_state_FSM_FFd7_375
    );
  LCD_CONTROLLER_init_state_FSM_FFd9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd9_In,
      Q => LCD_CONTROLLER_init_state_FSM_FFd9_379
    );
  LCD_CONTROLLER_init_state_FSM_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd5_In,
      Q => LCD_CONTROLLER_init_state_FSM_FFd5_371
    );
  LCD_CONTROLLER_init_state_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd4_In,
      Q => LCD_CONTROLLER_init_state_FSM_FFd4_369
    );
  LCD_CONTROLLER_init_state_FSM_FFd6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd6_In,
      Q => LCD_CONTROLLER_init_state_FSM_FFd6_373
    );
  LCD_CONTROLLER_init_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd2_In,
      Q => LCD_CONTROLLER_init_state_FSM_FFd2_365
    );
  LCD_CONTROLLER_init_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd1_In,
      Q => LCD_CONTROLLER_init_state_FSM_FFd1_360
    );
  LCD_CONTROLLER_init_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd3_In,
      Q => LCD_CONTROLLER_init_state_FSM_FFd3_367
    );
  LCD_CONTROLLER_cur_state_FSM_FFd4 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      D => LCD_CONTROLLER_cur_state_FSM_FFd4_In_189,
      PRE => BTN_RESET_IBUF_14,
      Q => LCD_CONTROLLER_cur_state_FSM_FFd4_188
    );
  LCD_CONTROLLER_cur_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_cur_state_FSM_FFd3_In,
      Q => LCD_CONTROLLER_cur_state_FSM_FFd3_185
    );
  LCD_CONTROLLER_cur_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_cur_state_FSM_FFd2_In_184,
      Q => LCD_CONTROLLER_cur_state_FSM_FFd2_183
    );
  LCD_CONTROLLER_cur_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_cur_state_FSM_FFd1_In_182,
      Q => LCD_CONTROLLER_cur_state_FSM_FFd1_181
    );
  LCD_CONTROLLER_tx_state_FSM_FFd6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_tx_state_FSM_FFd6_In,
      Q => LCD_CONTROLLER_tx_state_FSM_FFd6_403
    );
  LCD_CONTROLLER_tx_state_FSM_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_tx_state_FSM_FFd5_In,
      Q => LCD_CONTROLLER_tx_state_FSM_FFd5_401
    );
  LCD_CONTROLLER_tx_state_FSM_FFd7 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_21,
      D => LCD_CONTROLLER_tx_state_FSM_FFd7_In,
      PRE => BTN_RESET_IBUF_14,
      Q => LCD_CONTROLLER_tx_state_FSM_FFd7_405
    );
  LCD_CONTROLLER_tx_state_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_tx_state_FSM_FFd4_In,
      Q => LCD_CONTROLLER_tx_state_FSM_FFd4_399
    );
  LCD_CONTROLLER_tx_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_tx_state_FSM_FFd3_In,
      Q => LCD_CONTROLLER_tx_state_FSM_FFd3_397
    );
  LCD_CONTROLLER_tx_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_tx_state_FSM_FFd2_In,
      Q => LCD_CONTROLLER_tx_state_FSM_FFd2_395
    );
  LCD_CONTROLLER_tx_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_tx_state_FSM_FFd1_In,
      Q => LCD_CONTROLLER_tx_state_FSM_FFd1_393
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_10_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(9),
      LI => LCD_CONTROLLER_Madd_i2_share0000_xor_10_rt_46,
      O => LCD_CONTROLLER_i2_share0000(10)
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_9_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(8),
      LI => LCD_CONTROLLER_Madd_i2_share0000_cy_9_rt_44,
      O => LCD_CONTROLLER_i2_share0000(9)
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_9_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(8),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i2_share0000_cy_9_rt_44,
      O => LCD_CONTROLLER_Madd_i2_share0000_cy(9)
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_8_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(7),
      LI => LCD_CONTROLLER_Madd_i2_share0000_cy_8_rt_42,
      O => LCD_CONTROLLER_i2_share0000(8)
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_8_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(7),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i2_share0000_cy_8_rt_42,
      O => LCD_CONTROLLER_Madd_i2_share0000_cy(8)
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_7_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(6),
      LI => LCD_CONTROLLER_Madd_i2_share0000_cy_7_rt_40,
      O => LCD_CONTROLLER_i2_share0000(7)
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_7_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(6),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i2_share0000_cy_7_rt_40,
      O => LCD_CONTROLLER_Madd_i2_share0000_cy(7)
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_6_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(5),
      LI => LCD_CONTROLLER_Madd_i2_share0000_cy_6_rt_38,
      O => LCD_CONTROLLER_i2_share0000(6)
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_6_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(5),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i2_share0000_cy_6_rt_38,
      O => LCD_CONTROLLER_Madd_i2_share0000_cy(6)
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_5_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(4),
      LI => LCD_CONTROLLER_Madd_i2_share0000_cy_5_rt_36,
      O => LCD_CONTROLLER_i2_share0000(5)
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_5_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(4),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i2_share0000_cy_5_rt_36,
      O => LCD_CONTROLLER_Madd_i2_share0000_cy(5)
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_4_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(3),
      LI => LCD_CONTROLLER_Madd_i2_share0000_cy_4_rt_34,
      O => LCD_CONTROLLER_i2_share0000(4)
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_4_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(3),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i2_share0000_cy_4_rt_34,
      O => LCD_CONTROLLER_Madd_i2_share0000_cy(4)
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_3_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(2),
      LI => LCD_CONTROLLER_Madd_i2_share0000_cy_3_rt_32,
      O => LCD_CONTROLLER_i2_share0000(3)
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_3_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(2),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i2_share0000_cy_3_rt_32,
      O => LCD_CONTROLLER_Madd_i2_share0000_cy(3)
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_2_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(1),
      LI => LCD_CONTROLLER_Madd_i2_share0000_cy_2_rt_30,
      O => LCD_CONTROLLER_i2_share0000(2)
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_2_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(1),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i2_share0000_cy_2_rt_30,
      O => LCD_CONTROLLER_Madd_i2_share0000_cy(2)
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_1_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(0),
      LI => LCD_CONTROLLER_Madd_i2_share0000_cy_1_rt_28,
      O => LCD_CONTROLLER_i2_share0000(1)
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_1_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i2_share0000_cy(0),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i2_share0000_cy_1_rt_28,
      O => LCD_CONTROLLER_Madd_i2_share0000_cy(1)
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => LCD_CONTROLLER_Madd_i2_share0000_lut(0),
      O => LCD_CONTROLLER_i2_share0000(0)
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => LCD_CONTROLLER_Madd_i2_share0000_lut(0),
      O => LCD_CONTROLLER_Madd_i2_share0000_cy(0)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_19_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(18),
      LI => LCD_CONTROLLER_Madd_i_share0000_xor_19_rt_118,
      O => LCD_CONTROLLER_i_share0000(19)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_18_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(17),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_18_rt_98,
      O => LCD_CONTROLLER_i_share0000(18)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_18_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(17),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_18_rt_98,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(18)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_17_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(16),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_17_rt_96,
      O => LCD_CONTROLLER_i_share0000(17)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_17_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(16),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_17_rt_96,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(17)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_16_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(15),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_16_rt_94,
      O => LCD_CONTROLLER_i_share0000(16)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_16_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(15),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_16_rt_94,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(16)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_15_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(14),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_15_rt_92,
      O => LCD_CONTROLLER_i_share0000(15)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_15_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(14),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_15_rt_92,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(15)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_14_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(13),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_14_rt_90,
      O => LCD_CONTROLLER_i_share0000(14)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_14_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(13),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_14_rt_90,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(14)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_13_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(12),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_13_rt_88,
      O => LCD_CONTROLLER_i_share0000(13)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_13_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(12),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_13_rt_88,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(13)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_12_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(11),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_12_rt_86,
      O => LCD_CONTROLLER_i_share0000(12)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_12_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(11),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_12_rt_86,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(12)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_11_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(10),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_11_rt_84,
      O => LCD_CONTROLLER_i_share0000(11)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_11_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(10),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_11_rt_84,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(11)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_10_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(9),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_10_rt_82,
      O => LCD_CONTROLLER_i_share0000(10)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_10_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(9),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_10_rt_82,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(10)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_9_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(8),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_9_rt_116,
      O => LCD_CONTROLLER_i_share0000(9)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_9_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(8),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_9_rt_116,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(9)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_8_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(7),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_8_rt_114,
      O => LCD_CONTROLLER_i_share0000(8)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_8_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(7),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_8_rt_114,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(8)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_7_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(6),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_7_rt_112,
      O => LCD_CONTROLLER_i_share0000(7)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_7_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(6),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_7_rt_112,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(7)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_6_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(5),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_6_rt_110,
      O => LCD_CONTROLLER_i_share0000(6)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_6_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(5),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_6_rt_110,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(6)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_5_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(4),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_5_rt_108,
      O => LCD_CONTROLLER_i_share0000(5)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_5_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(4),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_5_rt_108,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(5)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_4_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(3),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_4_rt_106,
      O => LCD_CONTROLLER_i_share0000(4)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_4_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(3),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_4_rt_106,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(4)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_3_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(2),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_3_rt_104,
      O => LCD_CONTROLLER_i_share0000(3)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_3_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(2),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_3_rt_104,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(3)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_2_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(1),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_2_rt_102,
      O => LCD_CONTROLLER_i_share0000(2)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_2_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(1),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_2_rt_102,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(2)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_1_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(0),
      LI => LCD_CONTROLLER_Madd_i_share0000_cy_1_rt_100,
      O => LCD_CONTROLLER_i_share0000(1)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_1_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i_share0000_cy(0),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i_share0000_cy_1_rt_100,
      O => LCD_CONTROLLER_Madd_i_share0000_cy(1)
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => LCD_CONTROLLER_Madd_i_share0000_lut(0),
      O => LCD_CONTROLLER_i_share0000(0)
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => LCD_CONTROLLER_Madd_i_share0000_lut(0),
      O => LCD_CONTROLLER_Madd_i_share0000_cy(0)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_16_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(15),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_xor_16_rt_79,
      O => LCD_CONTROLLER_i3_addsub0000(16)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_15_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(14),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_15_rt_59,
      O => LCD_CONTROLLER_i3_addsub0000(15)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(14),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_15_rt_59,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(15)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_14_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(13),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_14_rt_57,
      O => LCD_CONTROLLER_i3_addsub0000(14)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(13),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_14_rt_57,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(14)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_13_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(12),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_13_rt_55,
      O => LCD_CONTROLLER_i3_addsub0000(13)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(12),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_13_rt_55,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(13)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_12_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(11),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_12_rt_53,
      O => LCD_CONTROLLER_i3_addsub0000(12)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(11),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_12_rt_53,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(12)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_11_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(10),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_11_rt_51,
      O => LCD_CONTROLLER_i3_addsub0000(11)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(10),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_11_rt_51,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(11)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_10_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(9),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_10_rt_49,
      O => LCD_CONTROLLER_i3_addsub0000(10)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(9),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_10_rt_49,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(10)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_9_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(8),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_9_rt_77,
      O => LCD_CONTROLLER_i3_addsub0000(9)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(8),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_9_rt_77,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(9)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_8_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(7),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_8_rt_75,
      O => LCD_CONTROLLER_i3_addsub0000(8)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(7),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_8_rt_75,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(8)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_7_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(6),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_7_rt_73,
      O => LCD_CONTROLLER_i3_addsub0000(7)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(6),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_7_rt_73,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(7)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_6_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(5),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_6_rt_71,
      O => LCD_CONTROLLER_i3_addsub0000(6)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(5),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_6_rt_71,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(6)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_5_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(4),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_5_rt_69,
      O => LCD_CONTROLLER_i3_addsub0000(5)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(4),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_5_rt_69,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(5)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_4_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(3),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_4_rt_67,
      O => LCD_CONTROLLER_i3_addsub0000(4)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(3),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_4_rt_67,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(4)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_3_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(2),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_3_rt_65,
      O => LCD_CONTROLLER_i3_addsub0000(3)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(2),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_3_rt_65,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(3)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_2_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(1),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_2_rt_63,
      O => LCD_CONTROLLER_i3_addsub0000(2)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(1),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_2_rt_63,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(2)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_1_Q : XORCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(0),
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_cy_1_rt_61,
      O => LCD_CONTROLLER_i3_addsub0000(1)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_Madd_i3_addsub0000_cy(0),
      DI => N0,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_cy_1_rt_61,
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(1)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => LCD_CONTROLLER_Madd_i3_addsub0000_lut(0),
      O => LCD_CONTROLLER_i3_addsub0000(0)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => LCD_CONTROLLER_Madd_i3_addsub0000_lut(0),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy(0)
    );
  LCD_CONTROLLER_LCD_E0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_or0001,
      Q => LCD_CONTROLLER_LCD_E0_22
    );
  LCD_CONTROLLER_i3_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(16),
      Q => LCD_CONTROLLER_i3(16)
    );
  LCD_CONTROLLER_i3_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(15),
      Q => LCD_CONTROLLER_i3(15)
    );
  LCD_CONTROLLER_i3_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(14),
      Q => LCD_CONTROLLER_i3(14)
    );
  LCD_CONTROLLER_i3_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(13),
      Q => LCD_CONTROLLER_i3(13)
    );
  LCD_CONTROLLER_i3_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(12),
      Q => LCD_CONTROLLER_i3(12)
    );
  LCD_CONTROLLER_i3_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(11),
      Q => LCD_CONTROLLER_i3(11)
    );
  LCD_CONTROLLER_i3_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(10),
      Q => LCD_CONTROLLER_i3(10)
    );
  LCD_CONTROLLER_i3_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(9),
      Q => LCD_CONTROLLER_i3(9)
    );
  LCD_CONTROLLER_i3_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(8),
      Q => LCD_CONTROLLER_i3(8)
    );
  LCD_CONTROLLER_i3_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(7),
      Q => LCD_CONTROLLER_i3(7)
    );
  LCD_CONTROLLER_i3_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(6),
      Q => LCD_CONTROLLER_i3(6)
    );
  LCD_CONTROLLER_i3_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(5),
      Q => LCD_CONTROLLER_i3(5)
    );
  LCD_CONTROLLER_i3_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(4),
      Q => LCD_CONTROLLER_i3(4)
    );
  LCD_CONTROLLER_i3_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(3),
      Q => LCD_CONTROLLER_i3(3)
    );
  LCD_CONTROLLER_i3_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(2),
      Q => LCD_CONTROLLER_i3(2)
    );
  LCD_CONTROLLER_i3_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(1),
      Q => LCD_CONTROLLER_i3(1)
    );
  LCD_CONTROLLER_i3_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i3_mux0000(0),
      Q => LCD_CONTROLLER_i3(0)
    );
  LCD_CONTROLLER_i2_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(0),
      Q => LCD_CONTROLLER_i2(10)
    );
  LCD_CONTROLLER_i2_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(1),
      Q => LCD_CONTROLLER_i2(9)
    );
  LCD_CONTROLLER_i2_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(2),
      Q => LCD_CONTROLLER_i2(8)
    );
  LCD_CONTROLLER_i2_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(3),
      Q => LCD_CONTROLLER_i2(7)
    );
  LCD_CONTROLLER_i2_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(4),
      Q => LCD_CONTROLLER_i2(6)
    );
  LCD_CONTROLLER_i2_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(5),
      Q => LCD_CONTROLLER_i2(5)
    );
  LCD_CONTROLLER_i2_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(6),
      Q => LCD_CONTROLLER_i2(4)
    );
  LCD_CONTROLLER_i2_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(7),
      Q => LCD_CONTROLLER_i2(3)
    );
  LCD_CONTROLLER_i2_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(8),
      Q => LCD_CONTROLLER_i2(2)
    );
  LCD_CONTROLLER_i2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(9),
      Q => LCD_CONTROLLER_i2(1)
    );
  LCD_CONTROLLER_i2_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i2_mux0002(10),
      Q => LCD_CONTROLLER_i2(0)
    );
  LCD_CONTROLLER_LCD_E1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_LCD_E1_mux0000,
      Q => LCD_CONTROLLER_LCD_E1_23
    );
  LCD_CONTROLLER_init_done : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CLR => BTN_RESET_IBUF_14,
      D => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      Q => LCD_CONTROLLER_init_done_359
    );
  LCD_CONTROLLER_SF_D1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_SF_D1_mux0000(1),
      Q => LCD_CONTROLLER_SF_D1(1)
    );
  LCD_CONTROLLER_SF_D1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_SF_D1_mux0000(0),
      Q => LCD_CONTROLLER_SF_D1(0)
    );
  LCD_CONTROLLER_i_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(0),
      Q => LCD_CONTROLLER_i(19)
    );
  LCD_CONTROLLER_i_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(1),
      Q => LCD_CONTROLLER_i(18)
    );
  LCD_CONTROLLER_i_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(2),
      Q => LCD_CONTROLLER_i(17)
    );
  LCD_CONTROLLER_i_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(3),
      Q => LCD_CONTROLLER_i(16)
    );
  LCD_CONTROLLER_i_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(4),
      Q => LCD_CONTROLLER_i(15)
    );
  LCD_CONTROLLER_i_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(5),
      Q => LCD_CONTROLLER_i(14)
    );
  LCD_CONTROLLER_i_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(6),
      Q => LCD_CONTROLLER_i(13)
    );
  LCD_CONTROLLER_i_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(7),
      Q => LCD_CONTROLLER_i(12)
    );
  LCD_CONTROLLER_i_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(8),
      Q => LCD_CONTROLLER_i(11)
    );
  LCD_CONTROLLER_i_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(9),
      Q => LCD_CONTROLLER_i(10)
    );
  LCD_CONTROLLER_i_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(10),
      Q => LCD_CONTROLLER_i(9)
    );
  LCD_CONTROLLER_i_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(11),
      Q => LCD_CONTROLLER_i(8)
    );
  LCD_CONTROLLER_i_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(12),
      Q => LCD_CONTROLLER_i(7)
    );
  LCD_CONTROLLER_i_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(13),
      Q => LCD_CONTROLLER_i(6)
    );
  LCD_CONTROLLER_i_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(14),
      Q => LCD_CONTROLLER_i(5)
    );
  LCD_CONTROLLER_i_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(15),
      Q => LCD_CONTROLLER_i(4)
    );
  LCD_CONTROLLER_i_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(16),
      Q => LCD_CONTROLLER_i(3)
    );
  LCD_CONTROLLER_i_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(17),
      Q => LCD_CONTROLLER_i(2)
    );
  LCD_CONTROLLER_i_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(18),
      Q => LCD_CONTROLLER_i(1)
    );
  LCD_CONTROLLER_i_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_i_mux0001(19),
      Q => LCD_CONTROLLER_i(0)
    );
  LCD_CONTROLLER_SF_D0_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_SF_D0_mux0000(7),
      Q => LCD_CONTROLLER_SF_D0(3)
    );
  LCD_CONTROLLER_SF_D0_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_SF_D0_mux0000(6),
      Q => LCD_CONTROLLER_SF_D0(2)
    );
  LCD_CONTROLLER_SF_D0_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_SF_D0_mux0000(5),
      Q => LCD_CONTROLLER_SF_D0(1)
    );
  LCD_CONTROLLER_SF_D0_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_reset_inv,
      D => LCD_CONTROLLER_SF_D0_mux0000(4),
      Q => LCD_CONTROLLER_SF_D0(0)
    );
  clk_10ms_timer_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => clk_10ms_timer(8),
      I1 => clk_10ms_timer(9),
      I2 => clk_10ms_timer(7),
      I3 => clk_10ms_timer(10),
      O => clk_10ms_timer_cmp_eq0000_wg_lut(0)
    );
  clk_10ms_timer_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => clk_10ms_timer_cmp_eq0000_wg_lut(0),
      O => clk_10ms_timer_cmp_eq0000_wg_cy(0)
    );
  clk_10ms_timer_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => clk_10ms_timer(11),
      I1 => clk_10ms_timer(6),
      I2 => clk_10ms_timer(12),
      I3 => clk_10ms_timer(13),
      O => clk_10ms_timer_cmp_eq0000_wg_lut(1)
    );
  clk_10ms_timer_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => clk_10ms_timer_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => clk_10ms_timer_cmp_eq0000_wg_lut(1),
      O => clk_10ms_timer_cmp_eq0000_wg_cy(1)
    );
  clk_10ms_timer_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => clk_10ms_timer(14),
      I1 => clk_10ms_timer(15),
      I2 => clk_10ms_timer(5),
      I3 => clk_10ms_timer(16),
      O => clk_10ms_timer_cmp_eq0000_wg_lut(2)
    );
  clk_10ms_timer_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => clk_10ms_timer_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => clk_10ms_timer_cmp_eq0000_wg_lut(2),
      O => clk_10ms_timer_cmp_eq0000_wg_cy(2)
    );
  clk_10ms_timer_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => clk_10ms_timer(17),
      I1 => clk_10ms_timer(18),
      I2 => clk_10ms_timer(4),
      I3 => clk_10ms_timer(19),
      O => clk_10ms_timer_cmp_eq0000_wg_lut(3)
    );
  clk_10ms_timer_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => clk_10ms_timer_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => clk_10ms_timer_cmp_eq0000_wg_lut(3),
      O => clk_10ms_timer_cmp_eq0000_wg_cy(3)
    );
  clk_10ms_timer_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_10ms_timer(20),
      I1 => clk_10ms_timer(21),
      I2 => clk_10ms_timer(3),
      I3 => clk_10ms_timer(22),
      O => clk_10ms_timer_cmp_eq0000_wg_lut(4)
    );
  clk_10ms_timer_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => clk_10ms_timer_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => clk_10ms_timer_cmp_eq0000_wg_lut(4),
      O => clk_10ms_timer_cmp_eq0000_wg_cy(4)
    );
  clk_10ms_timer_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_10ms_timer(23),
      I1 => clk_10ms_timer(24),
      I2 => clk_10ms_timer(2),
      I3 => clk_10ms_timer(25),
      O => clk_10ms_timer_cmp_eq0000_wg_lut(5)
    );
  clk_10ms_timer_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => clk_10ms_timer_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => clk_10ms_timer_cmp_eq0000_wg_lut(5),
      O => clk_10ms_timer_cmp_eq0000_wg_cy(5)
    );
  clk_10ms_timer_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_10ms_timer(26),
      I1 => clk_10ms_timer(27),
      I2 => clk_10ms_timer(1),
      I3 => clk_10ms_timer(28),
      O => clk_10ms_timer_cmp_eq0000_wg_lut(6)
    );
  clk_10ms_timer_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => clk_10ms_timer_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => clk_10ms_timer_cmp_eq0000_wg_lut(6),
      O => clk_10ms_timer_cmp_eq0000_wg_cy(6)
    );
  clk_10ms_timer_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_10ms_timer(29),
      I1 => clk_10ms_timer(30),
      I2 => clk_10ms_timer(0),
      I3 => clk_10ms_timer(31),
      O => clk_10ms_timer_cmp_eq0000_wg_lut(7)
    );
  clk_10ms_timer_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => clk_10ms_timer_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => clk_10ms_timer_cmp_eq0000_wg_lut(7),
      O => clk_10ms_timer_cmp_eq0000
    );
  LED2_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_8_1130,
      I1 => morse_char_1_9_1131,
      I2 => morse_char_1_7_1129,
      I3 => morse_char_1_10_1102,
      O => LED2_cmp_eq0000_wg_lut(0)
    );
  LED2_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => LED2_cmp_eq0000_wg_lut(0),
      O => LED2_cmp_eq0000_wg_cy(0)
    );
  LED2_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_11_1103,
      I1 => morse_char_1_12_1104,
      I2 => morse_char_1_6_1128,
      I3 => morse_char_1_13_1105,
      O => LED2_cmp_eq0000_wg_lut(1)
    );
  LED2_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => LED2_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => LED2_cmp_eq0000_wg_lut(1),
      O => LED2_cmp_eq0000_wg_cy(1)
    );
  LED2_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_14_1106,
      I1 => morse_char_1_15_1107,
      I2 => morse_char_1_5_1127,
      I3 => morse_char_1_16_1108,
      O => LED2_cmp_eq0000_wg_lut(2)
    );
  LED2_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => LED2_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => LED2_cmp_eq0000_wg_lut(2),
      O => LED2_cmp_eq0000_wg_cy(2)
    );
  LED2_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_17_1109,
      I1 => morse_char_1_18_1110,
      I2 => morse_char_1_4_1126,
      I3 => morse_char_1_19_1111,
      O => LED2_cmp_eq0000_wg_lut(3)
    );
  LED2_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => LED2_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => LED2_cmp_eq0000_wg_lut(3),
      O => LED2_cmp_eq0000_wg_cy(3)
    );
  LED2_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_20_1113,
      I1 => morse_char_1_21_1114,
      I2 => morse_char_1_3_1123,
      I3 => morse_char_1_22_1115,
      O => LED2_cmp_eq0000_wg_lut(4)
    );
  LED2_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => LED2_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => LED2_cmp_eq0000_wg_lut(4),
      O => LED2_cmp_eq0000_wg_cy(4)
    );
  LED2_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_23_1116,
      I1 => morse_char_1_24_1117,
      I2 => morse_char_1_2_1112,
      I3 => morse_char_1_25_1118,
      O => LED2_cmp_eq0000_wg_lut(5)
    );
  LED2_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => LED2_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => LED2_cmp_eq0000_wg_lut(5),
      O => LED2_cmp_eq0000_wg_cy(5)
    );
  LED2_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_26_1119,
      I1 => morse_char_1_27_1120,
      I2 => morse_char_1_1_1101,
      I3 => morse_char_1_28_1121,
      O => LED2_cmp_eq0000_wg_lut(6)
    );
  LED2_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => LED2_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => LED2_cmp_eq0000_wg_lut(6),
      O => LED2_cmp_eq0000_wg_cy(6)
    );
  LED2_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_1_29_1122,
      I1 => morse_char_1_30_1124,
      I2 => morse_char_1_0_1100,
      I3 => morse_char_1_31_1125,
      O => LED2_cmp_eq0000_wg_lut(7)
    );
  LED2_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => LED2_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => LED2_cmp_eq0000_wg_lut(7),
      O => LED2_cmp_eq0000
    );
  LED6_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_8_1258,
      I1 => morse_char_3_9_1259,
      I2 => morse_char_3_7_1257,
      I3 => morse_char_3_10_1230,
      O => LED6_cmp_eq0000_wg_lut(0)
    );
  LED6_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => LED6_cmp_eq0000_wg_lut(0),
      O => LED6_cmp_eq0000_wg_cy(0)
    );
  LED6_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_11_1231,
      I1 => morse_char_3_12_1232,
      I2 => morse_char_3_6_1256,
      I3 => morse_char_3_13_1233,
      O => LED6_cmp_eq0000_wg_lut(1)
    );
  LED6_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => LED6_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => LED6_cmp_eq0000_wg_lut(1),
      O => LED6_cmp_eq0000_wg_cy(1)
    );
  LED6_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_14_1234,
      I1 => morse_char_3_15_1235,
      I2 => morse_char_3_5_1255,
      I3 => morse_char_3_16_1236,
      O => LED6_cmp_eq0000_wg_lut(2)
    );
  LED6_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => LED6_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => LED6_cmp_eq0000_wg_lut(2),
      O => LED6_cmp_eq0000_wg_cy(2)
    );
  LED6_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_17_1237,
      I1 => morse_char_3_18_1238,
      I2 => morse_char_3_4_1254,
      I3 => morse_char_3_19_1239,
      O => LED6_cmp_eq0000_wg_lut(3)
    );
  LED6_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => LED6_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => LED6_cmp_eq0000_wg_lut(3),
      O => LED6_cmp_eq0000_wg_cy(3)
    );
  LED6_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_20_1241,
      I1 => morse_char_3_21_1242,
      I2 => morse_char_3_3_1251,
      I3 => morse_char_3_22_1243,
      O => LED6_cmp_eq0000_wg_lut(4)
    );
  LED6_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => LED6_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => LED6_cmp_eq0000_wg_lut(4),
      O => LED6_cmp_eq0000_wg_cy(4)
    );
  LED6_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_23_1244,
      I1 => morse_char_3_24_1245,
      I2 => morse_char_3_2_1240,
      I3 => morse_char_3_25_1246,
      O => LED6_cmp_eq0000_wg_lut(5)
    );
  LED6_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => LED6_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => LED6_cmp_eq0000_wg_lut(5),
      O => LED6_cmp_eq0000_wg_cy(5)
    );
  LED6_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_26_1247,
      I1 => morse_char_3_27_1248,
      I2 => morse_char_3_1_1229,
      I3 => morse_char_3_28_1249,
      O => LED6_cmp_eq0000_wg_lut(6)
    );
  LED6_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => LED6_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => LED6_cmp_eq0000_wg_lut(6),
      O => LED6_cmp_eq0000_wg_cy(6)
    );
  LED6_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_3_29_1250,
      I1 => morse_char_3_30_1252,
      I2 => morse_char_3_0_1228,
      I3 => morse_char_3_31_1253,
      O => LED6_cmp_eq0000_wg_lut(7)
    );
  LED6_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => LED6_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => LED6_cmp_eq0000_wg_lut(7),
      O => LED6_cmp_eq0000
    );
  LED4_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_8_1194,
      I1 => morse_char_2_9_1195,
      I2 => morse_char_2_7_1193,
      I3 => morse_char_2_10_1166,
      O => LED4_cmp_eq0000_wg_lut(0)
    );
  LED4_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => LED4_cmp_eq0000_wg_lut(0),
      O => LED4_cmp_eq0000_wg_cy(0)
    );
  LED4_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_11_1167,
      I1 => morse_char_2_12_1168,
      I2 => morse_char_2_6_1192,
      I3 => morse_char_2_13_1169,
      O => LED4_cmp_eq0000_wg_lut(1)
    );
  LED4_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => LED4_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => LED4_cmp_eq0000_wg_lut(1),
      O => LED4_cmp_eq0000_wg_cy(1)
    );
  LED4_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_14_1170,
      I1 => morse_char_2_15_1171,
      I2 => morse_char_2_5_1191,
      I3 => morse_char_2_16_1172,
      O => LED4_cmp_eq0000_wg_lut(2)
    );
  LED4_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => LED4_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => LED4_cmp_eq0000_wg_lut(2),
      O => LED4_cmp_eq0000_wg_cy(2)
    );
  LED4_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_17_1173,
      I1 => morse_char_2_18_1174,
      I2 => morse_char_2_4_1190,
      I3 => morse_char_2_19_1175,
      O => LED4_cmp_eq0000_wg_lut(3)
    );
  LED4_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => LED4_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => LED4_cmp_eq0000_wg_lut(3),
      O => LED4_cmp_eq0000_wg_cy(3)
    );
  LED4_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_20_1177,
      I1 => morse_char_2_21_1178,
      I2 => morse_char_2_3_1187,
      I3 => morse_char_2_22_1179,
      O => LED4_cmp_eq0000_wg_lut(4)
    );
  LED4_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => LED4_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => LED4_cmp_eq0000_wg_lut(4),
      O => LED4_cmp_eq0000_wg_cy(4)
    );
  LED4_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_23_1180,
      I1 => morse_char_2_24_1181,
      I2 => morse_char_2_2_1176,
      I3 => morse_char_2_25_1182,
      O => LED4_cmp_eq0000_wg_lut(5)
    );
  LED4_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => LED4_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => LED4_cmp_eq0000_wg_lut(5),
      O => LED4_cmp_eq0000_wg_cy(5)
    );
  LED4_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_26_1183,
      I1 => morse_char_2_27_1184,
      I2 => morse_char_2_1_1165,
      I3 => morse_char_2_28_1185,
      O => LED4_cmp_eq0000_wg_lut(6)
    );
  LED4_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => LED4_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => LED4_cmp_eq0000_wg_lut(6),
      O => LED4_cmp_eq0000_wg_cy(6)
    );
  LED4_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_2_29_1186,
      I1 => morse_char_2_30_1188,
      I2 => morse_char_2_0_1164,
      I3 => morse_char_2_31_1189,
      O => LED4_cmp_eq0000_wg_lut(7)
    );
  LED4_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => LED4_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => LED4_cmp_eq0000_wg_lut(7),
      O => LED4_cmp_eq0000
    );
  LED1_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_8_1065,
      I1 => morse_char_0_9_1066,
      I2 => morse_char_0_7_1064,
      I3 => morse_char_0_10_1037,
      O => LED1_cmp_eq0000_wg_lut(0)
    );
  LED1_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => LED1_cmp_eq0000_wg_lut(0),
      O => LED1_cmp_eq0000_wg_cy(0)
    );
  LED1_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_11_1038,
      I1 => morse_char_0_12_1039,
      I2 => morse_char_0_6_1063,
      I3 => morse_char_0_13_1040,
      O => LED1_cmp_eq0000_wg_lut(1)
    );
  LED1_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => LED1_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => LED1_cmp_eq0000_wg_lut(1),
      O => LED1_cmp_eq0000_wg_cy(1)
    );
  LED1_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_14_1041,
      I1 => morse_char_0_15_1042,
      I2 => morse_char_0_5_1062,
      I3 => morse_char_0_16_1043,
      O => LED1_cmp_eq0000_wg_lut(2)
    );
  LED1_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => LED1_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => LED1_cmp_eq0000_wg_lut(2),
      O => LED1_cmp_eq0000_wg_cy(2)
    );
  LED1_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_17_1044,
      I1 => morse_char_0_18_1045,
      I2 => morse_char_0_4_1061,
      I3 => morse_char_0_19_1046,
      O => LED1_cmp_eq0000_wg_lut(3)
    );
  LED1_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => LED1_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => LED1_cmp_eq0000_wg_lut(3),
      O => LED1_cmp_eq0000_wg_cy(3)
    );
  LED1_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_20_1048,
      I1 => morse_char_0_21_1049,
      I2 => morse_char_0_3_1058,
      I3 => morse_char_0_22_1050,
      O => LED1_cmp_eq0000_wg_lut(4)
    );
  LED1_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => LED1_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => LED1_cmp_eq0000_wg_lut(4),
      O => LED1_cmp_eq0000_wg_cy(4)
    );
  LED1_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_23_1051,
      I1 => morse_char_0_24_1052,
      I2 => morse_char_0_2_1047,
      I3 => morse_char_0_25_1053,
      O => LED1_cmp_eq0000_wg_lut(5)
    );
  LED1_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => LED1_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => LED1_cmp_eq0000_wg_lut(5),
      O => LED1_cmp_eq0000_wg_cy(5)
    );
  LED1_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_26_1054,
      I1 => morse_char_0_27_1055,
      I2 => morse_char_0_1_1036,
      I3 => morse_char_0_28_1056,
      O => LED1_cmp_eq0000_wg_lut(6)
    );
  LED1_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => LED1_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => LED1_cmp_eq0000_wg_lut(6),
      O => LED1_cmp_eq0000_wg_cy(6)
    );
  LED1_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => morse_char_0_29_1057,
      I1 => morse_char_0_30_1059,
      I2 => morse_char_0_0_1035,
      I3 => morse_char_0_31_1060,
      O => LED1_cmp_eq0000_wg_lut(7)
    );
  LED1_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => LED1_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => LED1_cmp_eq0000_wg_lut(7),
      O => LED1_cmp_eq0000
    );
  LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy_0_rt_196,
      O => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy(0)
    );
  LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(5),
      I1 => LCD_CONTROLLER_i3(3),
      I2 => LCD_CONTROLLER_i3(6),
      I3 => LCD_CONTROLLER_i3(7),
      O => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut(1)
    );
  LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy_1_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy(0),
      DI => N0,
      S => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut(1),
      O => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy(1)
    );
  LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(8),
      I1 => LCD_CONTROLLER_i3(9),
      I2 => LCD_CONTROLLER_i3(1),
      I3 => LCD_CONTROLLER_i3(10),
      O => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut(2)
    );
  LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy_2_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy(1),
      DI => N0,
      S => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut(2),
      O => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy(2)
    );
  LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(11),
      I1 => LCD_CONTROLLER_i3(12),
      I2 => LCD_CONTROLLER_i3(0),
      I3 => LCD_CONTROLLER_i3(13),
      O => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut(3)
    );
  LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy_3_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy(2),
      DI => N0,
      S => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut(3),
      O => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy(3)
    );
  LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(16),
      I1 => LCD_CONTROLLER_i3(15),
      I2 => LCD_CONTROLLER_i3(14),
      I3 => LCD_CONTROLLER_i3(2),
      O => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut(4)
    );
  LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy_4_Q : MUXCY
    port map (
      CI => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy(3),
      DI => N0,
      S => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_lut(4),
      O => LCD_CONTROLLER_cur_state_cmp_eq0001
    );
  clk_5cycle_timer_not00011 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => current_state_FSM_FFd3_1026,
      I1 => current_state_FSM_FFd1_1020,
      O => clk_5cycle_timer_not0001
    );
  MORSE_LOOK_TABLE_ASCII_CHAR_OUT_3_31 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => morse_encoded(2),
      I1 => morse_encoded(0),
      I2 => morse_encoded(4),
      O => N20
    );
  MORSE_LOOK_TABLE_ASCII_CHAR_OUT_0_31 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => N23,
      I1 => morse_encoded(4),
      I2 => morse_encoded(3),
      O => N14
    );
  MORSE_LOOK_TABLE_ASCII_CHAR_OUT_3_41 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => morse_encoded(5),
      I1 => morse_encoded(6),
      I2 => morse_encoded(0),
      I3 => morse_encoded(7),
      O => N23
    );
  LCD_CONTROLLER_cur_state_FSM_Out101 : LUT4
    generic map(
      INIT => X"EBAB"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd1_181,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      O => LCD_RS_OBUF_413
    );
  BTN_NL_CONTROLLER_Mmux_BTN_PRESSED_mux000121 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BTN_NL_IBUF_4,
      I1 => BTN_NL_CONTROLLER_BTN_VAL_PREV_3,
      O => BTN_NL_CONTROLLER_BTN_PRESSED_mux0001
    );
  BTN_SAVE_CONTROLLER_Mmux_BTN_PRESSED_mux000121 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => BTN_SAVE_IBUF_19,
      I1 => BTN_SAVE_CONTROLLER_BTN_VAL_PREV_18,
      I2 => BTN_SAVE_CONTROLLER_BTN_PRESSED_16,
      O => BTN_SAVE_CONTROLLER_BTN_PRESSED_mux0001
    );
  BTN_RESET_CONTROLLER_Mmux_BTN_PRESSED_mux000121 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => BTN_RESET_IBUF_14,
      I1 => BTN_RESET_CONTROLLER_BTN_VAL_PREV_13,
      I2 => BTN_RESET_CONTROLLER_BTN_PRESSED_11,
      O => BTN_RESET_CONTROLLER_BTN_PRESSED_mux0001
    );
  BTN_PUSH_CONTROLLER_Mmux_BTN_PRESSED_mux000121 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => BTN_PUSH_IBUF_9,
      I1 => BTN_PUSH_CONTROLLER_BTN_VAL_PREV_8,
      I2 => BTN_PUSH_CONTROLLER_BTN_PRESSED_6,
      O => BTN_PUSH_CONTROLLER_BTN_PRESSED_mux0001
    );
  morse_idx_mux0000_1_1 : LUT4
    generic map(
      INIT => X"9A98"
    )
    port map (
      I0 => morse_idx(0),
      I1 => current_state_FSM_FFd3_1026,
      I2 => current_state_FSM_FFd1_1020,
      I3 => current_state_FSM_FFd2_1022,
      O => morse_idx_mux0000(1)
    );
  LCD_CONTROLLER_SF_D_1_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => LCD_CONTROLLER_mux,
      I1 => LCD_CONTROLLER_SF_D1(1),
      I2 => LCD_CONTROLLER_SF_D0(1),
      O => SF_D_1_OBUF_933
    );
  LCD_CONTROLLER_SF_D_0_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => LCD_CONTROLLER_mux,
      I1 => LCD_CONTROLLER_SF_D1(0),
      I2 => LCD_CONTROLLER_SF_D0(0),
      O => SF_D_0_OBUF_932
    );
  LCD_CONTROLLER_LCD_E2 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => LCD_CONTROLLER_mux,
      I1 => LCD_CONTROLLER_LCD_E1_23,
      I2 => LCD_CONTROLLER_LCD_E0_22,
      O => LCD_E_OBUF_411
    );
  current_state_FSM_Out11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => current_state_FSM_FFd3_1026,
      I1 => current_state_FSM_FFd2_1022,
      O => current_state_cmp_eq0001
    );
  push_timer_mux0000_0_11 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BTN_PUSH_CONTROLLER_BTN_PRESSED_6,
      I1 => current_state_FSM_FFd2_1022,
      I2 => current_state_FSM_FFd3_1026,
      O => N4
    );
  current_state_FSM_FFd2_In11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => BTN_PUSH_CONTROLLER_BTN_PRESSED_6,
      I1 => current_state_FSM_FFd2_1022,
      I2 => current_state_FSM_FFd3_1026,
      O => N13
    );
  LCD_CONTROLLER_i3_mux0000_0_11 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd1_181,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      O => LCD_CONTROLLER_N2
    );
  LED1_mux000111 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => current_state_FSM_FFd2_1022,
      I1 => current_state_FSM_FFd1_1020,
      I2 => current_state_FSM_FFd3_1026,
      O => N21
    );
  LCD_CONTROLLER_cur_state_FSM_Out91 : LUT4
    generic map(
      INIT => X"F6FE"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd1_181,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      O => LCD_CONTROLLER_tx_init
    );
  LCD_CONTROLLER_SF_D1_mux0000_1_2 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => LCD_CONTROLLER_N3,
      I1 => LCD_CONTROLLER_SF_D1(1),
      I2 => LCD_CONTROLLER_i_or0000,
      O => LCD_CONTROLLER_SF_D1_mux0000(1)
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd7_405,
      I1 => LCD_CONTROLLER_tx_state_FSM_FFd1_393,
      I2 => LCD_CONTROLLER_tx_state_FSM_FFd4_399,
      O => LCD_CONTROLLER_N4
    );
  LCD_CONTROLLER_SF_D1_mux0000_0_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd7_375,
      I1 => LCD_CONTROLLER_init_state_FSM_FFd9_379,
      O => N41
    );
  LCD_CONTROLLER_SF_D1_mux0000_0_Q : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd5_371,
      I1 => LCD_CONTROLLER_N3,
      I2 => LCD_CONTROLLER_SF_D1(0),
      I3 => N41,
      O => LCD_CONTROLLER_SF_D1_mux0000(0)
    );
  LCD_CONTROLLER_SF_D1_mux0000_1_1_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd10_362,
      I1 => LCD_CONTROLLER_init_state_FSM_FFd11_364,
      I2 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd6_373,
      O => N8
    );
  LCD_CONTROLLER_SF_D1_mux0000_1_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd2_365,
      I1 => LCD_CONTROLLER_init_state_FSM_FFd4_369,
      I2 => LCD_CONTROLLER_init_state_FSM_FFd8_377,
      I3 => N8,
      O => LCD_CONTROLLER_N3
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_16 : LUT4
    generic map(
      INIT => X"AB01"
    )
    port map (
      I0 => morse_encoded(2),
      I1 => morse_encoded(3),
      I2 => morse_encoded(4),
      I3 => morse_encoded(1),
      O => LCD_CONTROLLER_SF_D0_mux0000_6_16_158
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_94 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => N20,
      I1 => LCD_CONTROLLER_SF_D0_mux0000_6_44,
      I2 => LCD_CONTROLLER_SF_D0_mux0000_6_74,
      O => LCD_CONTROLLER_SF_D0_mux0000_6_94_167
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_109 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => N23,
      I1 => LCD_CONTROLLER_SF_D0_mux0000_6_16_158,
      I2 => LCD_CONTROLLER_SF_D0_mux0000_6_94_167,
      O => LCD_CONTROLLER_SF_D0_mux0000_6_109_156
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_141 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I2 => LCD_CONTROLLER_SF_D0_mux0000_6_109_156,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd1_181,
      O => LCD_CONTROLLER_SF_D0_mux0000_6_141_157
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_168 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_N4,
      I1 => LCD_CONTROLLER_SF_D0(2),
      I2 => LCD_CONTROLLER_N6,
      I3 => LCD_CONTROLLER_SF_D0_mux0000_6_141_157,
      O => LCD_CONTROLLER_SF_D0_mux0000_6_168_159
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_309 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_6_168_159,
      I1 => LCD_CONTROLLER_SF_D0_mux0000_6_300_161,
      O => LCD_CONTROLLER_SF_D0_mux0000(6)
    );
  push_timer_mux0000_31_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(0),
      I2 => push_timer_addsub0000(0),
      I3 => N13,
      O => push_timer_mux0000(31)
    );
  current_state_FSM_Out41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => current_state_FSM_FFd1_1020,
      I1 => current_state_FSM_FFd3_1026,
      O => current_state_cmp_eq0004
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_31 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd3_397,
      I1 => LCD_CONTROLLER_tx_state_FSM_FFd2_395,
      O => LCD_CONTROLLER_N6
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_21 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd5_401,
      I1 => LCD_CONTROLLER_tx_state_FSM_FFd6_403,
      O => LCD_CONTROLLER_N5
    );
  morse_char_0_or00001 : LUT3
    generic map(
      INIT => X"E5"
    )
    port map (
      I0 => current_state_FSM_FFd3_1026,
      I1 => current_state_FSM_FFd1_1020,
      I2 => current_state_FSM_FFd2_1022,
      O => morse_char_0_or0000
    );
  morse_char_3_mux0000_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_22_1243,
      I1 => N97,
      I2 => push_timer(22),
      I3 => N19,
      O => morse_char_3_mux0000(9)
    );
  morse_char_3_mux0000_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_23_1244,
      I1 => N3,
      I2 => push_timer(23),
      I3 => N19,
      O => morse_char_3_mux0000(8)
    );
  morse_char_3_mux0000_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_24_1245,
      I1 => N3,
      I2 => push_timer(24),
      I3 => N19,
      O => morse_char_3_mux0000(7)
    );
  morse_char_3_mux0000_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_25_1246,
      I1 => N3,
      I2 => push_timer(25),
      I3 => N19,
      O => morse_char_3_mux0000(6)
    );
  morse_char_3_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_26_1247,
      I1 => N3,
      I2 => push_timer(26),
      I3 => N19,
      O => morse_char_3_mux0000(5)
    );
  morse_char_3_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_27_1248,
      I1 => N3,
      I2 => push_timer(27),
      I3 => N19,
      O => morse_char_3_mux0000(4)
    );
  morse_char_3_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_28_1249,
      I1 => N3,
      I2 => push_timer(28),
      I3 => N19,
      O => morse_char_3_mux0000(3)
    );
  morse_char_3_mux0000_31_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_0_1228,
      I1 => N3,
      I2 => push_timer(0),
      I3 => N19,
      O => morse_char_3_mux0000(31)
    );
  morse_char_3_mux0000_30_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_1_1229,
      I1 => N3,
      I2 => push_timer(1),
      I3 => N19,
      O => morse_char_3_mux0000(30)
    );
  morse_char_3_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_29_1250,
      I1 => N3,
      I2 => push_timer(29),
      I3 => N19,
      O => morse_char_3_mux0000(2)
    );
  morse_char_3_mux0000_29_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_2_1240,
      I1 => N3,
      I2 => push_timer(2),
      I3 => N19,
      O => morse_char_3_mux0000(29)
    );
  morse_char_3_mux0000_28_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_3_1251,
      I1 => N3,
      I2 => push_timer(3),
      I3 => N19,
      O => morse_char_3_mux0000(28)
    );
  morse_char_3_mux0000_27_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_4_1254,
      I1 => N3,
      I2 => push_timer(4),
      I3 => N19,
      O => morse_char_3_mux0000(27)
    );
  morse_char_3_mux0000_26_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_5_1255,
      I1 => N3,
      I2 => push_timer(5),
      I3 => N19,
      O => morse_char_3_mux0000(26)
    );
  morse_char_3_mux0000_25_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_6_1256,
      I1 => N3,
      I2 => push_timer(6),
      I3 => N19,
      O => morse_char_3_mux0000(25)
    );
  morse_char_3_mux0000_24_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_7_1257,
      I1 => N3,
      I2 => push_timer(7),
      I3 => N19,
      O => morse_char_3_mux0000(24)
    );
  morse_char_3_mux0000_23_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_8_1258,
      I1 => N3,
      I2 => push_timer(8),
      I3 => N19,
      O => morse_char_3_mux0000(23)
    );
  morse_char_3_mux0000_22_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_9_1259,
      I1 => N3,
      I2 => push_timer(9),
      I3 => N19,
      O => morse_char_3_mux0000(22)
    );
  morse_char_3_mux0000_21_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_10_1230,
      I1 => N3,
      I2 => push_timer(10),
      I3 => N19,
      O => morse_char_3_mux0000(21)
    );
  morse_char_3_mux0000_20_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_11_1231,
      I1 => N3,
      I2 => push_timer(11),
      I3 => N19,
      O => morse_char_3_mux0000(20)
    );
  morse_char_3_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_30_1252,
      I1 => N3,
      I2 => push_timer(30),
      I3 => N19,
      O => morse_char_3_mux0000(1)
    );
  morse_char_3_mux0000_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_12_1232,
      I1 => N3,
      I2 => push_timer(12),
      I3 => N19,
      O => morse_char_3_mux0000(19)
    );
  morse_char_3_mux0000_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_13_1233,
      I1 => N3,
      I2 => push_timer(13),
      I3 => N19,
      O => morse_char_3_mux0000(18)
    );
  morse_char_3_mux0000_17_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_14_1234,
      I1 => N3,
      I2 => push_timer(14),
      I3 => N19,
      O => morse_char_3_mux0000(17)
    );
  morse_char_3_mux0000_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_15_1235,
      I1 => N3,
      I2 => push_timer(15),
      I3 => N19,
      O => morse_char_3_mux0000(16)
    );
  morse_char_3_mux0000_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_16_1236,
      I1 => N3,
      I2 => push_timer(16),
      I3 => N19,
      O => morse_char_3_mux0000(15)
    );
  morse_char_3_mux0000_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_17_1237,
      I1 => N3,
      I2 => push_timer(17),
      I3 => N19,
      O => morse_char_3_mux0000(14)
    );
  morse_char_3_mux0000_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_18_1238,
      I1 => N3,
      I2 => push_timer(18),
      I3 => N19,
      O => morse_char_3_mux0000(13)
    );
  morse_char_3_mux0000_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_19_1239,
      I1 => N3,
      I2 => push_timer(19),
      I3 => N19,
      O => morse_char_3_mux0000(12)
    );
  morse_char_3_mux0000_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_20_1241,
      I1 => N3,
      I2 => push_timer(20),
      I3 => N19,
      O => morse_char_3_mux0000(11)
    );
  morse_char_3_mux0000_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_21_1242,
      I1 => N3,
      I2 => push_timer(21),
      I3 => N19,
      O => morse_char_3_mux0000(10)
    );
  morse_char_3_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_3_31_1253,
      I1 => N3,
      I2 => push_timer(31),
      I3 => N19,
      O => morse_char_3_mux0000(0)
    );
  morse_char_2_mux0000_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_22_1179,
      I1 => N98,
      I2 => push_timer(22),
      I3 => N18,
      O => morse_char_2_mux0000(9)
    );
  morse_char_2_mux0000_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_23_1180,
      I1 => N2,
      I2 => push_timer(23),
      I3 => N18,
      O => morse_char_2_mux0000(8)
    );
  morse_char_2_mux0000_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_24_1181,
      I1 => N2,
      I2 => push_timer(24),
      I3 => N18,
      O => morse_char_2_mux0000(7)
    );
  morse_char_2_mux0000_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_25_1182,
      I1 => N2,
      I2 => push_timer(25),
      I3 => N18,
      O => morse_char_2_mux0000(6)
    );
  morse_char_2_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_26_1183,
      I1 => N2,
      I2 => push_timer(26),
      I3 => N18,
      O => morse_char_2_mux0000(5)
    );
  morse_char_2_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_27_1184,
      I1 => N2,
      I2 => push_timer(27),
      I3 => N18,
      O => morse_char_2_mux0000(4)
    );
  morse_char_2_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_28_1185,
      I1 => N2,
      I2 => push_timer(28),
      I3 => N18,
      O => morse_char_2_mux0000(3)
    );
  morse_char_2_mux0000_31_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_0_1164,
      I1 => N2,
      I2 => push_timer(0),
      I3 => N18,
      O => morse_char_2_mux0000(31)
    );
  morse_char_2_mux0000_30_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_1_1165,
      I1 => N2,
      I2 => push_timer(1),
      I3 => N18,
      O => morse_char_2_mux0000(30)
    );
  morse_char_2_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_29_1186,
      I1 => N2,
      I2 => push_timer(29),
      I3 => N18,
      O => morse_char_2_mux0000(2)
    );
  morse_char_2_mux0000_29_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_2_1176,
      I1 => N2,
      I2 => push_timer(2),
      I3 => N18,
      O => morse_char_2_mux0000(29)
    );
  morse_char_2_mux0000_28_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_3_1187,
      I1 => N2,
      I2 => push_timer(3),
      I3 => N18,
      O => morse_char_2_mux0000(28)
    );
  morse_char_2_mux0000_27_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_4_1190,
      I1 => N2,
      I2 => push_timer(4),
      I3 => N18,
      O => morse_char_2_mux0000(27)
    );
  morse_char_2_mux0000_26_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_5_1191,
      I1 => N2,
      I2 => push_timer(5),
      I3 => N18,
      O => morse_char_2_mux0000(26)
    );
  morse_char_2_mux0000_25_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_6_1192,
      I1 => N2,
      I2 => push_timer(6),
      I3 => N18,
      O => morse_char_2_mux0000(25)
    );
  morse_char_2_mux0000_24_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_7_1193,
      I1 => N2,
      I2 => push_timer(7),
      I3 => N18,
      O => morse_char_2_mux0000(24)
    );
  morse_char_2_mux0000_23_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_8_1194,
      I1 => N2,
      I2 => push_timer(8),
      I3 => N18,
      O => morse_char_2_mux0000(23)
    );
  morse_char_2_mux0000_22_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_9_1195,
      I1 => N2,
      I2 => push_timer(9),
      I3 => N18,
      O => morse_char_2_mux0000(22)
    );
  morse_char_2_mux0000_21_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_10_1166,
      I1 => N2,
      I2 => push_timer(10),
      I3 => N18,
      O => morse_char_2_mux0000(21)
    );
  morse_char_2_mux0000_20_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_11_1167,
      I1 => N2,
      I2 => push_timer(11),
      I3 => N18,
      O => morse_char_2_mux0000(20)
    );
  morse_char_2_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_30_1188,
      I1 => N2,
      I2 => push_timer(30),
      I3 => N18,
      O => morse_char_2_mux0000(1)
    );
  morse_char_2_mux0000_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_12_1168,
      I1 => N2,
      I2 => push_timer(12),
      I3 => N18,
      O => morse_char_2_mux0000(19)
    );
  morse_char_2_mux0000_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_13_1169,
      I1 => N2,
      I2 => push_timer(13),
      I3 => N18,
      O => morse_char_2_mux0000(18)
    );
  morse_char_2_mux0000_17_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_14_1170,
      I1 => N2,
      I2 => push_timer(14),
      I3 => N18,
      O => morse_char_2_mux0000(17)
    );
  morse_char_2_mux0000_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_15_1171,
      I1 => N2,
      I2 => push_timer(15),
      I3 => N18,
      O => morse_char_2_mux0000(16)
    );
  morse_char_2_mux0000_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_16_1172,
      I1 => N2,
      I2 => push_timer(16),
      I3 => N18,
      O => morse_char_2_mux0000(15)
    );
  morse_char_2_mux0000_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_17_1173,
      I1 => N2,
      I2 => push_timer(17),
      I3 => N18,
      O => morse_char_2_mux0000(14)
    );
  morse_char_2_mux0000_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_18_1174,
      I1 => N2,
      I2 => push_timer(18),
      I3 => N18,
      O => morse_char_2_mux0000(13)
    );
  morse_char_2_mux0000_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_19_1175,
      I1 => N2,
      I2 => push_timer(19),
      I3 => N18,
      O => morse_char_2_mux0000(12)
    );
  morse_char_2_mux0000_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_20_1177,
      I1 => N2,
      I2 => push_timer(20),
      I3 => N18,
      O => morse_char_2_mux0000(11)
    );
  morse_char_2_mux0000_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_21_1178,
      I1 => N2,
      I2 => push_timer(21),
      I3 => N18,
      O => morse_char_2_mux0000(10)
    );
  morse_char_2_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_2_31_1189,
      I1 => N2,
      I2 => push_timer(31),
      I3 => N18,
      O => morse_char_2_mux0000(0)
    );
  morse_char_1_mux0000_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_22_1115,
      I1 => N99,
      I2 => push_timer(22),
      I3 => N17,
      O => morse_char_1_mux0000(9)
    );
  morse_char_1_mux0000_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_23_1116,
      I1 => N11,
      I2 => push_timer(23),
      I3 => N17,
      O => morse_char_1_mux0000(8)
    );
  morse_char_1_mux0000_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_24_1117,
      I1 => N11,
      I2 => push_timer(24),
      I3 => N17,
      O => morse_char_1_mux0000(7)
    );
  morse_char_1_mux0000_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_25_1118,
      I1 => N11,
      I2 => push_timer(25),
      I3 => N17,
      O => morse_char_1_mux0000(6)
    );
  morse_char_1_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_26_1119,
      I1 => N11,
      I2 => push_timer(26),
      I3 => N17,
      O => morse_char_1_mux0000(5)
    );
  morse_char_1_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_27_1120,
      I1 => N11,
      I2 => push_timer(27),
      I3 => N17,
      O => morse_char_1_mux0000(4)
    );
  morse_char_1_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_28_1121,
      I1 => N11,
      I2 => push_timer(28),
      I3 => N17,
      O => morse_char_1_mux0000(3)
    );
  morse_char_1_mux0000_31_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_0_1100,
      I1 => N11,
      I2 => push_timer(0),
      I3 => N17,
      O => morse_char_1_mux0000(31)
    );
  morse_char_1_mux0000_30_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_1_1101,
      I1 => N11,
      I2 => push_timer(1),
      I3 => N17,
      O => morse_char_1_mux0000(30)
    );
  morse_char_1_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_29_1122,
      I1 => N11,
      I2 => push_timer(29),
      I3 => N17,
      O => morse_char_1_mux0000(2)
    );
  morse_char_1_mux0000_29_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_2_1112,
      I1 => N11,
      I2 => push_timer(2),
      I3 => N17,
      O => morse_char_1_mux0000(29)
    );
  morse_char_1_mux0000_28_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_3_1123,
      I1 => N11,
      I2 => push_timer(3),
      I3 => N17,
      O => morse_char_1_mux0000(28)
    );
  morse_char_1_mux0000_27_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_4_1126,
      I1 => N11,
      I2 => push_timer(4),
      I3 => N17,
      O => morse_char_1_mux0000(27)
    );
  morse_char_1_mux0000_26_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_5_1127,
      I1 => N11,
      I2 => push_timer(5),
      I3 => N17,
      O => morse_char_1_mux0000(26)
    );
  morse_char_1_mux0000_25_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_6_1128,
      I1 => N11,
      I2 => push_timer(6),
      I3 => N17,
      O => morse_char_1_mux0000(25)
    );
  morse_char_1_mux0000_24_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_7_1129,
      I1 => N11,
      I2 => push_timer(7),
      I3 => N17,
      O => morse_char_1_mux0000(24)
    );
  morse_char_1_mux0000_23_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_8_1130,
      I1 => N11,
      I2 => push_timer(8),
      I3 => N17,
      O => morse_char_1_mux0000(23)
    );
  morse_char_1_mux0000_22_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_9_1131,
      I1 => N11,
      I2 => push_timer(9),
      I3 => N17,
      O => morse_char_1_mux0000(22)
    );
  morse_char_1_mux0000_21_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_10_1102,
      I1 => N11,
      I2 => push_timer(10),
      I3 => N17,
      O => morse_char_1_mux0000(21)
    );
  morse_char_1_mux0000_20_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_11_1103,
      I1 => N11,
      I2 => push_timer(11),
      I3 => N17,
      O => morse_char_1_mux0000(20)
    );
  morse_char_1_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_30_1124,
      I1 => N11,
      I2 => push_timer(30),
      I3 => N17,
      O => morse_char_1_mux0000(1)
    );
  morse_char_1_mux0000_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_12_1104,
      I1 => N11,
      I2 => push_timer(12),
      I3 => N17,
      O => morse_char_1_mux0000(19)
    );
  morse_char_1_mux0000_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_13_1105,
      I1 => N11,
      I2 => push_timer(13),
      I3 => N17,
      O => morse_char_1_mux0000(18)
    );
  morse_char_1_mux0000_17_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_14_1106,
      I1 => N11,
      I2 => push_timer(14),
      I3 => N17,
      O => morse_char_1_mux0000(17)
    );
  morse_char_1_mux0000_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_15_1107,
      I1 => N11,
      I2 => push_timer(15),
      I3 => N17,
      O => morse_char_1_mux0000(16)
    );
  morse_char_1_mux0000_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_16_1108,
      I1 => N11,
      I2 => push_timer(16),
      I3 => N17,
      O => morse_char_1_mux0000(15)
    );
  morse_char_1_mux0000_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_17_1109,
      I1 => N11,
      I2 => push_timer(17),
      I3 => N17,
      O => morse_char_1_mux0000(14)
    );
  morse_char_1_mux0000_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_18_1110,
      I1 => N11,
      I2 => push_timer(18),
      I3 => N17,
      O => morse_char_1_mux0000(13)
    );
  morse_char_1_mux0000_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_19_1111,
      I1 => N11,
      I2 => push_timer(19),
      I3 => N17,
      O => morse_char_1_mux0000(12)
    );
  morse_char_1_mux0000_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_20_1113,
      I1 => N11,
      I2 => push_timer(20),
      I3 => N17,
      O => morse_char_1_mux0000(11)
    );
  morse_char_1_mux0000_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_21_1114,
      I1 => N11,
      I2 => push_timer(21),
      I3 => N17,
      O => morse_char_1_mux0000(10)
    );
  morse_char_1_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_1_31_1125,
      I1 => N11,
      I2 => push_timer(31),
      I3 => N17,
      O => morse_char_1_mux0000(0)
    );
  morse_char_0_mux0000_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_22_1050,
      I1 => N01,
      I2 => push_timer(22),
      I3 => N16,
      O => morse_char_0_mux0000(9)
    );
  morse_char_0_mux0000_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_23_1051,
      I1 => N100,
      I2 => push_timer(23),
      I3 => N16,
      O => morse_char_0_mux0000(8)
    );
  morse_char_0_mux0000_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_24_1052,
      I1 => N01,
      I2 => push_timer(24),
      I3 => N16,
      O => morse_char_0_mux0000(7)
    );
  morse_char_0_mux0000_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_25_1053,
      I1 => N01,
      I2 => push_timer(25),
      I3 => N16,
      O => morse_char_0_mux0000(6)
    );
  morse_char_0_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_26_1054,
      I1 => N01,
      I2 => push_timer(26),
      I3 => N16,
      O => morse_char_0_mux0000(5)
    );
  morse_char_0_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_27_1055,
      I1 => N01,
      I2 => push_timer(27),
      I3 => N16,
      O => morse_char_0_mux0000(4)
    );
  morse_char_0_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_28_1056,
      I1 => N01,
      I2 => push_timer(28),
      I3 => N16,
      O => morse_char_0_mux0000(3)
    );
  morse_char_0_mux0000_31_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_0_1035,
      I1 => N01,
      I2 => push_timer(0),
      I3 => N16,
      O => morse_char_0_mux0000(31)
    );
  morse_char_0_mux0000_30_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_1_1036,
      I1 => N01,
      I2 => push_timer(1),
      I3 => N16,
      O => morse_char_0_mux0000(30)
    );
  morse_char_0_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_29_1057,
      I1 => N01,
      I2 => push_timer(29),
      I3 => N16,
      O => morse_char_0_mux0000(2)
    );
  morse_char_0_mux0000_29_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_2_1047,
      I1 => N01,
      I2 => push_timer(2),
      I3 => N16,
      O => morse_char_0_mux0000(29)
    );
  morse_char_0_mux0000_28_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_3_1058,
      I1 => N01,
      I2 => push_timer(3),
      I3 => N16,
      O => morse_char_0_mux0000(28)
    );
  morse_char_0_mux0000_27_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_4_1061,
      I1 => N01,
      I2 => push_timer(4),
      I3 => N16,
      O => morse_char_0_mux0000(27)
    );
  morse_char_0_mux0000_26_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_5_1062,
      I1 => N01,
      I2 => push_timer(5),
      I3 => N16,
      O => morse_char_0_mux0000(26)
    );
  morse_char_0_mux0000_25_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_6_1063,
      I1 => N01,
      I2 => push_timer(6),
      I3 => N16,
      O => morse_char_0_mux0000(25)
    );
  morse_char_0_mux0000_24_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_7_1064,
      I1 => N01,
      I2 => push_timer(7),
      I3 => N16,
      O => morse_char_0_mux0000(24)
    );
  morse_char_0_mux0000_23_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_8_1065,
      I1 => N01,
      I2 => push_timer(8),
      I3 => N16,
      O => morse_char_0_mux0000(23)
    );
  morse_char_0_mux0000_22_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_9_1066,
      I1 => N01,
      I2 => push_timer(9),
      I3 => N16,
      O => morse_char_0_mux0000(22)
    );
  morse_char_0_mux0000_21_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_10_1037,
      I1 => N01,
      I2 => push_timer(10),
      I3 => N16,
      O => morse_char_0_mux0000(21)
    );
  morse_char_0_mux0000_20_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_11_1038,
      I1 => N01,
      I2 => push_timer(11),
      I3 => N16,
      O => morse_char_0_mux0000(20)
    );
  LED6_mux00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => current_state_cmp_eq0001,
      I1 => LED6_cmp_eq0000,
      I2 => LED6_OBUF_480,
      I3 => N21,
      O => LED6_mux0000
    );
  LED4_mux00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => current_state_cmp_eq0001,
      I1 => LED4_cmp_eq0000,
      I2 => LED4_OBUF_458,
      I3 => N21,
      O => LED4_mux0000
    );
  LED2_mux00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => current_state_cmp_eq0001,
      I1 => LED2_cmp_eq0000,
      I2 => LED2_OBUF_436,
      I3 => N21,
      O => LED2_mux0000
    );
  morse_char_0_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_30_1059,
      I1 => N01,
      I2 => push_timer(30),
      I3 => N16,
      O => morse_char_0_mux0000(1)
    );
  morse_char_0_mux0000_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_12_1039,
      I1 => N01,
      I2 => push_timer(12),
      I3 => N16,
      O => morse_char_0_mux0000(19)
    );
  morse_char_0_mux0000_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_13_1040,
      I1 => N01,
      I2 => push_timer(13),
      I3 => N16,
      O => morse_char_0_mux0000(18)
    );
  morse_char_0_mux0000_17_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_14_1041,
      I1 => N01,
      I2 => push_timer(14),
      I3 => N16,
      O => morse_char_0_mux0000(17)
    );
  morse_char_0_mux0000_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_15_1042,
      I1 => N01,
      I2 => push_timer(15),
      I3 => N16,
      O => morse_char_0_mux0000(16)
    );
  morse_char_0_mux0000_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_16_1043,
      I1 => N01,
      I2 => push_timer(16),
      I3 => N16,
      O => morse_char_0_mux0000(15)
    );
  morse_char_0_mux0000_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_17_1044,
      I1 => N01,
      I2 => push_timer(17),
      I3 => N16,
      O => morse_char_0_mux0000(14)
    );
  morse_char_0_mux0000_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_18_1045,
      I1 => N01,
      I2 => push_timer(18),
      I3 => N16,
      O => morse_char_0_mux0000(13)
    );
  morse_char_0_mux0000_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_19_1046,
      I1 => N01,
      I2 => push_timer(19),
      I3 => N16,
      O => morse_char_0_mux0000(12)
    );
  morse_char_0_mux0000_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_20_1048,
      I1 => N01,
      I2 => push_timer(20),
      I3 => N16,
      O => morse_char_0_mux0000(11)
    );
  morse_char_0_mux0000_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_21_1049,
      I1 => N01,
      I2 => push_timer(21),
      I3 => N16,
      O => morse_char_0_mux0000(10)
    );
  morse_char_0_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => morse_char_0_31_1060,
      I1 => N01,
      I2 => push_timer(31),
      I3 => N16,
      O => morse_char_0_mux0000(0)
    );
  LCD_CONTROLLER_tx_state_FSM_FFd7_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd7_405,
      I1 => LCD_CONTROLLER_tx_init,
      I2 => LCD_CONTROLLER_cur_state_cmp_eq0000,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd1_393,
      O => LCD_CONTROLLER_tx_state_FSM_FFd7_In
    );
  LCD_CONTROLLER_tx_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd1_393,
      I1 => LCD_CONTROLLER_cur_state_cmp_eq0000,
      I2 => LCD_CONTROLLER_tx_state_cmp_eq0001_408,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd2_395,
      O => LCD_CONTROLLER_tx_state_FSM_FFd1_In
    );
  current_state_FSM_FFd3_In14 : LUT4
    generic map(
      INIT => X"B2A2"
    )
    port map (
      I0 => current_state_FSM_FFd1_1020,
      I1 => BTN_RESET_CONTROLLER_BTN_PRESSED_11,
      I2 => current_state_FSM_FFd3_1026,
      I3 => current_state_FSM_FFd2_1022,
      O => current_state_FSM_FFd3_In14_1027
    );
  LCD_CONTROLLER_SF_D0_mux0000_7_65 : LUT4
    generic map(
      INIT => X"2859"
    )
    port map (
      I0 => morse_encoded(7),
      I1 => morse_encoded(1),
      I2 => morse_encoded(3),
      I3 => morse_encoded(5),
      O => LCD_CONTROLLER_SF_D0_mux0000_7_65_175
    );
  LCD_CONTROLLER_SF_D0_mux0000_7_89 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => morse_encoded(5),
      I1 => morse_encoded(6),
      I2 => morse_encoded(1),
      I3 => morse_encoded(7),
      O => LCD_CONTROLLER_SF_D0_mux0000_7_89_176
    );
  LCD_CONTROLLER_SF_D0_mux0000_7_108 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => N20,
      I1 => morse_encoded(6),
      I2 => LCD_CONTROLLER_SF_D0_mux0000_7_65_175,
      I3 => LCD_CONTROLLER_SF_D0_mux0000_7_89_176,
      O => LCD_CONTROLLER_SF_D0_mux0000_7_108_169
    );
  LCD_CONTROLLER_SF_D0_mux0000_7_151 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd1_181,
      I1 => LCD_CONTROLLER_SF_D0_mux0000_7_108_169,
      I2 => LCD_CONTROLLER_SF_D0_mux0000_7_133,
      O => LCD_CONTROLLER_SF_D0_mux0000_7_151_173
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_10 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I3 => LCD_CONTROLLER_N6,
      O => LCD_CONTROLLER_SF_D0_mux0000_4_10_138
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_34 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => morse_encoded(5),
      I1 => morse_encoded(3),
      I2 => morse_encoded(7),
      O => LCD_CONTROLLER_SF_D0_mux0000_4_34_145
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_101 : LUT4
    generic map(
      INIT => X"EB45"
    )
    port map (
      I0 => morse_encoded(5),
      I1 => morse_encoded(3),
      I2 => morse_encoded(1),
      I3 => morse_encoded(4),
      O => LCD_CONTROLLER_SF_D0_mux0000_4_101_139
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_296 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_N6,
      I1 => LCD_CONTROLLER_SF_D0_mux0000_4_146_142,
      I2 => LCD_CONTROLLER_N5,
      I3 => LCD_CONTROLLER_SF_D0_mux0000_4_265_143,
      O => LCD_CONTROLLER_SF_D0_mux0000_4_296_144
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_321 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_4_0_137,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd1_181,
      I2 => LCD_CONTROLLER_SF_D0_mux0000_4_296_144,
      I3 => LCD_CONTROLLER_SF_D0_mux0000_4_10_138,
      O => LCD_CONTROLLER_SF_D0_mux0000(4)
    );
  push_timer_mux0000_30_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(1),
      I2 => push_timer_addsub0000(1),
      I3 => N13,
      O => push_timer_mux0000(30)
    );
  LCD_CONTROLLER_init_state_FSM_FFd9_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd9_379,
      I1 => LCD_CONTROLLER_init_state_cmp_eq0001,
      I2 => LCD_CONTROLLER_init_state_cmp_eq0000,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd10_362,
      O => LCD_CONTROLLER_init_state_FSM_FFd9_In
    );
  LCD_CONTROLLER_init_state_FSM_FFd8_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd8_377,
      I1 => N106,
      I2 => LCD_CONTROLLER_init_state_cmp_eq0001,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd9_379,
      O => LCD_CONTROLLER_init_state_FSM_FFd8_In
    );
  LCD_CONTROLLER_init_state_FSM_FFd7_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd7_375,
      I1 => LCD_CONTROLLER_init_state_cmp_eq0001,
      I2 => LCD_CONTROLLER_init_state_cmp_eq0002_387,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd8_377,
      O => LCD_CONTROLLER_init_state_FSM_FFd7_In
    );
  LCD_CONTROLLER_init_state_FSM_FFd10_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd10_362,
      I1 => LCD_CONTROLLER_init_state_cmp_eq0000,
      I2 => LCD_CONTROLLER_mux,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd11_364,
      O => LCD_CONTROLLER_init_state_FSM_FFd10_In
    );
  LCD_CONTROLLER_SF_D0_mux0000_5_52 : LUT4
    generic map(
      INIT => X"7E59"
    )
    port map (
      I0 => morse_encoded(6),
      I1 => morse_encoded(5),
      I2 => morse_encoded(3),
      I3 => morse_encoded(1),
      O => LCD_CONTROLLER_SF_D0_mux0000_5_52_152
    );
  LCD_CONTROLLER_SF_D0_mux0000_5_114 : LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => N20,
      I1 => LCD_CONTROLLER_SF_D0_mux0000_5_52_152,
      I2 => morse_encoded(7),
      I3 => LCD_CONTROLLER_SF_D0_mux0000_5_92,
      O => LCD_CONTROLLER_SF_D0_mux0000_5_114_147
    );
  push_timer_mux0000_29_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(2),
      I2 => push_timer_addsub0000(2),
      I3 => N13,
      O => push_timer_mux0000(29)
    );
  push_timer_mux0000_28_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(3),
      I2 => push_timer_addsub0000(3),
      I3 => N13,
      O => push_timer_mux0000(28)
    );
  push_timer_mux0000_27_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(4),
      I2 => push_timer_addsub0000(4),
      I3 => N13,
      O => push_timer_mux0000(27)
    );
  push_timer_mux0000_26_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(5),
      I2 => push_timer_addsub0000(5),
      I3 => N13,
      O => push_timer_mux0000(26)
    );
  LCD_CONTROLLER_i3_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(5),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(5),
      I3 => N101,
      O => LCD_CONTROLLER_i3_mux0000(5)
    );
  LCD_CONTROLLER_i3_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(4),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(4),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(4)
    );
  LCD_CONTROLLER_i3_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(3),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(3),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(3)
    );
  LCD_CONTROLLER_i3_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(2),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(2),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(2)
    );
  LCD_CONTROLLER_i3_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(1),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(1),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(1)
    );
  LCD_CONTROLLER_i3_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(0),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(0),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(0)
    );
  push_timer_mux0000_25_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(6),
      I2 => push_timer_addsub0000(6),
      I3 => N13,
      O => push_timer_mux0000(25)
    );
  LCD_CONTROLLER_i3_mux0000_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(6),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(6),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(6)
    );
  lcd_enable_or00001 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => current_state_FSM_FFd3_1026,
      I1 => current_state_FSM_FFd1_1020,
      I2 => lcd_enable_cmp_ge0000,
      I3 => current_state_FSM_FFd2_1022,
      O => lcd_enable_or0000
    );
  push_timer_mux0000_24_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(7),
      I2 => push_timer_addsub0000(7),
      I3 => N13,
      O => push_timer_mux0000(24)
    );
  LCD_CONTROLLER_i3_mux0000_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(7),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(7),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(7)
    );
  push_timer_mux0000_23_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(8),
      I2 => push_timer_addsub0000(8),
      I3 => N13,
      O => push_timer_mux0000(23)
    );
  LCD_CONTROLLER_i3_mux0000_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(8),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(8),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(8)
    );
  push_timer_mux0000_22_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(9),
      I2 => push_timer_addsub0000(9),
      I3 => N13,
      O => push_timer_mux0000(22)
    );
  LCD_CONTROLLER_i3_mux0000_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(9),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(9),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(9)
    );
  LCD_CONTROLLER_i2_or00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd6_403,
      I1 => LCD_CONTROLLER_tx_state_FSM_FFd2_395,
      O => LCD_CONTROLLER_i2_or0001
    );
  LCD_CONTROLLER_cur_state_FSM_Out01 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      O => LCD_CONTROLLER_mux
    );
  LCD_CONTROLLER_i_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd9_379,
      I1 => LCD_CONTROLLER_init_state_FSM_FFd7_375,
      I2 => LCD_CONTROLLER_init_state_FSM_FFd5_371,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd3_367,
      O => LCD_CONTROLLER_i_or0000
    );
  push_timer_mux0000_21_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(10),
      I2 => push_timer_addsub0000(10),
      I3 => N13,
      O => push_timer_mux0000(21)
    );
  LCD_CONTROLLER_i3_mux0000_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(10),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(10),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(10)
    );
  push_timer_mux0000_20_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(11),
      I2 => push_timer_addsub0000(11),
      I3 => N13,
      O => push_timer_mux0000(20)
    );
  LCD_CONTROLLER_i3_mux0000_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(11),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(11),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(11)
    );
  push_timer_mux0000_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(12),
      I2 => push_timer_addsub0000(12),
      I3 => N13,
      O => push_timer_mux0000(19)
    );
  LCD_CONTROLLER_i3_mux0000_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(12),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(12),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(12)
    );
  push_timer_mux0000_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(13),
      I2 => push_timer_addsub0000(13),
      I3 => N13,
      O => push_timer_mux0000(18)
    );
  LCD_CONTROLLER_i3_mux0000_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(13),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(13),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(13)
    );
  push_timer_mux0000_17_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(14),
      I2 => push_timer_addsub0000(14),
      I3 => N13,
      O => push_timer_mux0000(17)
    );
  LCD_CONTROLLER_i3_mux0000_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(14),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(14),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(14)
    );
  push_timer_mux0000_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(15),
      I2 => push_timer_addsub0000(15),
      I3 => N13,
      O => push_timer_mux0000(16)
    );
  LCD_CONTROLLER_i3_mux0000_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(15),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(15),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(15)
    );
  push_timer_mux0000_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(16),
      I2 => push_timer_addsub0000(16),
      I3 => N13,
      O => push_timer_mux0000(15)
    );
  LCD_CONTROLLER_i3_mux0000_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(16),
      I1 => LCD_CONTROLLER_N2,
      I2 => LCD_CONTROLLER_i3_addsub0000(16),
      I3 => LCD_CONTROLLER_N7,
      O => LCD_CONTROLLER_i3_mux0000(16)
    );
  LCD_CONTROLLER_init_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_cmp_eq0004_389,
      I1 => LCD_CONTROLLER_init_state_FSM_FFd2_365,
      I2 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      O => LCD_CONTROLLER_init_state_FSM_FFd1_In
    );
  LCD_CONTROLLER_tx_state_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd6_403,
      I1 => LCD_CONTROLLER_tx_state_cmp_eq0001_408,
      I2 => LCD_CONTROLLER_tx_state_cmp_eq0000,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd5_401,
      O => LCD_CONTROLLER_tx_state_FSM_FFd6_In
    );
  LCD_CONTROLLER_tx_state_FSM_FFd5_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd5_401,
      I1 => N103,
      I2 => LCD_CONTROLLER_tx_init,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd7_405,
      O => LCD_CONTROLLER_tx_state_FSM_FFd5_In
    );
  LCD_CONTROLLER_tx_state_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd4_399,
      I1 => N102,
      I2 => LCD_CONTROLLER_tx_state_cmp_eq0001_408,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd6_403,
      O => LCD_CONTROLLER_tx_state_FSM_FFd4_In
    );
  LCD_CONTROLLER_tx_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd3_397,
      I1 => LCD_CONTROLLER_tx_state_cmp_eq0000,
      I2 => LCD_CONTROLLER_tx_state_cmp_eq0002,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd4_399,
      O => LCD_CONTROLLER_tx_state_FSM_FFd3_In
    );
  LCD_CONTROLLER_tx_state_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd2_395,
      I1 => LCD_CONTROLLER_tx_state_cmp_eq0001_408,
      I2 => LCD_CONTROLLER_tx_state_cmp_eq0000,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd3_397,
      O => LCD_CONTROLLER_tx_state_FSM_FFd2_In
    );
  LCD_CONTROLLER_init_state_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd6_373,
      I1 => LCD_CONTROLLER_init_state_cmp_eq0003_388,
      I2 => LCD_CONTROLLER_init_state_cmp_eq0001,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd7_375,
      O => LCD_CONTROLLER_init_state_FSM_FFd6_In
    );
  LCD_CONTROLLER_init_state_FSM_FFd5_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd5_371,
      I1 => LCD_CONTROLLER_init_state_cmp_eq0001,
      I2 => LCD_CONTROLLER_init_state_cmp_eq0003_388,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd6_373,
      O => LCD_CONTROLLER_init_state_FSM_FFd5_In
    );
  LCD_CONTROLLER_init_state_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd4_369,
      I1 => LCD_CONTROLLER_init_state_cmp_eq0004_389,
      I2 => LCD_CONTROLLER_init_state_cmp_eq0001,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd5_371,
      O => LCD_CONTROLLER_init_state_FSM_FFd4_In
    );
  LCD_CONTROLLER_init_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd3_367,
      I1 => LCD_CONTROLLER_init_state_cmp_eq0001,
      I2 => LCD_CONTROLLER_init_state_cmp_eq0004_389,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd4_369,
      O => LCD_CONTROLLER_init_state_FSM_FFd3_In
    );
  LCD_CONTROLLER_init_state_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd2_365,
      I1 => LCD_CONTROLLER_init_state_cmp_eq0004_389,
      I2 => LCD_CONTROLLER_init_state_cmp_eq0001,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd3_367,
      O => LCD_CONTROLLER_init_state_FSM_FFd2_In
    );
  push_timer_mux0000_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(17),
      I2 => push_timer_addsub0000(17),
      I3 => N13,
      O => push_timer_mux0000(14)
    );
  push_timer_mux0000_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(18),
      I2 => push_timer_addsub0000(18),
      I3 => N13,
      O => push_timer_mux0000(13)
    );
  push_timer_mux0000_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(19),
      I2 => push_timer_addsub0000(19),
      I3 => N13,
      O => push_timer_mux0000(12)
    );
  push_timer_mux0000_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(20),
      I2 => push_timer_addsub0000(20),
      I3 => N13,
      O => push_timer_mux0000(11)
    );
  push_timer_mux0000_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(21),
      I2 => push_timer_addsub0000(21),
      I3 => N13,
      O => push_timer_mux0000(10)
    );
  push_timer_mux0000_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(22),
      I2 => push_timer_addsub0000(22),
      I3 => N13,
      O => push_timer_mux0000(9)
    );
  push_timer_mux0000_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(23),
      I2 => push_timer_addsub0000(23),
      I3 => N13,
      O => push_timer_mux0000(8)
    );
  push_timer_mux0000_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(24),
      I2 => push_timer_addsub0000(24),
      I3 => N13,
      O => push_timer_mux0000(7)
    );
  LCD_CONTROLLER_tx_state_cmp_eq0001_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(5),
      I1 => LCD_CONTROLLER_i2(2),
      I2 => LCD_CONTROLLER_i2(1),
      O => N28
    );
  LCD_CONTROLLER_cur_state_cmp_eq000019 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(10),
      I1 => LCD_CONTROLLER_i2(7),
      I2 => LCD_CONTROLLER_i2(1),
      I3 => LCD_CONTROLLER_i2(6),
      O => LCD_CONTROLLER_cur_state_cmp_eq000019_192
    );
  LCD_CONTROLLER_cur_state_cmp_eq000024 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(8),
      I1 => LCD_CONTROLLER_i2(9),
      I2 => LCD_CONTROLLER_i2(2),
      O => LCD_CONTROLLER_cur_state_cmp_eq000024_193
    );
  LCD_CONTROLLER_cur_state_cmp_eq000034 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N104,
      I1 => LCD_CONTROLLER_cur_state_cmp_eq000019_192,
      I2 => LCD_CONTROLLER_cur_state_cmp_eq000024_193,
      O => LCD_CONTROLLER_cur_state_cmp_eq0000
    );
  push_timer_mux0000_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(25),
      I2 => push_timer_addsub0000(25),
      I3 => N13,
      O => push_timer_mux0000(6)
    );
  push_timer_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(26),
      I2 => push_timer_addsub0000(26),
      I3 => N13,
      O => push_timer_mux0000(5)
    );
  push_timer_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(27),
      I2 => push_timer_addsub0000(27),
      I3 => N13,
      O => push_timer_mux0000(4)
    );
  push_timer_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(28),
      I2 => push_timer_addsub0000(28),
      I3 => N13,
      O => push_timer_mux0000(3)
    );
  push_timer_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(29),
      I2 => push_timer_addsub0000(29),
      I3 => N13,
      O => push_timer_mux0000(2)
    );
  push_timer_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(30),
      I2 => push_timer_addsub0000(30),
      I3 => N13,
      O => push_timer_mux0000(1)
    );
  push_timer_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N4,
      I1 => push_timer(31),
      I2 => push_timer_addsub0000(31),
      I3 => N13,
      O => push_timer_mux0000(0)
    );
  LCD_CONTROLLER_init_state_cmp_eq0000121 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => LCD_CONTROLLER_i(7),
      I1 => LCD_CONTROLLER_i(1),
      I2 => LCD_CONTROLLER_i(0),
      O => LCD_CONTROLLER_N26
    );
  LCD_CONTROLLER_tx_state_cmp_eq00001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(6),
      I1 => LCD_CONTROLLER_i2(10),
      I2 => LCD_CONTROLLER_i2(0),
      O => N30
    );
  LCD_CONTROLLER_init_state_cmp_eq0002_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => LCD_CONTROLLER_i(6),
      I1 => LCD_CONTROLLER_i(14),
      I2 => N105,
      O => N32
    );
  LCD_CONTROLLER_init_state_cmp_eq00012 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(0),
      I1 => LCD_CONTROLLER_i(10),
      O => LCD_CONTROLLER_init_state_cmp_eq00012_386
    );
  LCD_CONTROLLER_init_state_cmp_eq000117 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => LCD_CONTROLLER_i(1),
      I1 => LCD_CONTROLLER_i(7),
      I2 => LCD_CONTROLLER_i(9),
      I3 => LCD_CONTROLLER_i(6),
      O => LCD_CONTROLLER_init_state_cmp_eq000117_385
    );
  LCD_CONTROLLER_init_state_cmp_eq000129 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_cmp_eq00012_386,
      I1 => LCD_CONTROLLER_N18,
      I2 => LCD_CONTROLLER_init_state_cmp_eq000117_385,
      I3 => N109,
      O => LCD_CONTROLLER_init_state_cmp_eq0001
    );
  LCD_CONTROLLER_init_state_cmp_eq00007 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => LCD_CONTROLLER_i(14),
      I1 => LCD_CONTROLLER_i(12),
      I2 => LCD_CONTROLLER_i(3),
      I3 => LCD_CONTROLLER_i(19),
      O => LCD_CONTROLLER_init_state_cmp_eq00007_383
    );
  LCD_CONTROLLER_init_state_cmp_eq000015 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => LCD_CONTROLLER_i(8),
      I1 => LCD_CONTROLLER_i(5),
      I2 => LCD_CONTROLLER_i(6),
      I3 => LCD_CONTROLLER_i(4),
      O => LCD_CONTROLLER_init_state_cmp_eq000015_382
    );
  LCD_CONTROLLER_init_state_cmp_eq000026 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_cmp_eq000015_382,
      I1 => LCD_CONTROLLER_init_state_cmp_eq00007_383,
      I2 => N110,
      O => LCD_CONTROLLER_init_state_cmp_eq0000
    );
  LCD_CONTROLLER_i2_mux0002_0_110 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_or0001,
      I1 => N112,
      I2 => LCD_CONTROLLER_tx_state_FSM_FFd1_393,
      I3 => LCD_CONTROLLER_cur_state_cmp_eq0000,
      O => LCD_CONTROLLER_i2_mux0002_0_110_216
    );
  LCD_CONTROLLER_i2_mux0002_0_112 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(4),
      I1 => LCD_CONTROLLER_i2(5),
      O => LCD_CONTROLLER_i2_mux0002_0_112_217
    );
  LCD_CONTROLLER_i2_mux0002_0_120 : LUT4
    generic map(
      INIT => X"FA32"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd3_397,
      I1 => N113,
      I2 => LCD_CONTROLLER_tx_state_FSM_FFd5_401,
      I3 => LCD_CONTROLLER_i2_mux0002_0_112_217,
      O => LCD_CONTROLLER_i2_mux0002_0_120_218
    );
  LCD_CONTROLLER_init_state_cmp_eq0000112 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => LCD_CONTROLLER_i(18),
      I1 => LCD_CONTROLLER_i(15),
      I2 => LCD_CONTROLLER_i(11),
      I3 => LCD_CONTROLLER_i(2),
      O => LCD_CONTROLLER_N20
    );
  LCD_CONTROLLER_i_mux0001_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(10),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(10),
      I3 => N114,
      O => LCD_CONTROLLER_i_mux0001(9)
    );
  LCD_CONTROLLER_i_mux0001_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(11),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(11),
      I3 => LCD_CONTROLLER_i_mux0001_0_147_318,
      O => LCD_CONTROLLER_i_mux0001(8)
    );
  LCD_CONTROLLER_i_mux0001_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(12),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(12),
      I3 => LCD_CONTROLLER_i_mux0001_0_147_318,
      O => LCD_CONTROLLER_i_mux0001(7)
    );
  LCD_CONTROLLER_i_mux0001_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(13),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(13),
      I3 => LCD_CONTROLLER_i_mux0001_0_147_318,
      O => LCD_CONTROLLER_i_mux0001(6)
    );
  LCD_CONTROLLER_i_mux0001_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(14),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(14),
      I3 => LCD_CONTROLLER_i_mux0001_0_147_318,
      O => LCD_CONTROLLER_i_mux0001(5)
    );
  LCD_CONTROLLER_i_mux0001_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(15),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(15),
      I3 => LCD_CONTROLLER_i_mux0001_0_147_318,
      O => LCD_CONTROLLER_i_mux0001(4)
    );
  LCD_CONTROLLER_i_mux0001_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(16),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(16),
      I3 => LCD_CONTROLLER_i_mux0001_0_147_318,
      O => LCD_CONTROLLER_i_mux0001(3)
    );
  LCD_CONTROLLER_i_mux0001_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(17),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(17),
      I3 => LCD_CONTROLLER_i_mux0001_0_147_318,
      O => LCD_CONTROLLER_i_mux0001(2)
    );
  LCD_CONTROLLER_i_mux0001_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(18),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(18),
      I3 => LCD_CONTROLLER_i_mux0001_0_147_318,
      O => LCD_CONTROLLER_i_mux0001(1)
    );
  LCD_CONTROLLER_i_mux0001_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(0),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(0),
      I3 => LCD_CONTROLLER_i_mux0001_0_147_318,
      O => LCD_CONTROLLER_i_mux0001(19)
    );
  LCD_CONTROLLER_i_mux0001_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(1),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(1),
      I3 => N108,
      O => LCD_CONTROLLER_i_mux0001(18)
    );
  LCD_CONTROLLER_i_mux0001_17_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(2),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(2),
      I3 => LCD_CONTROLLER_N0,
      O => LCD_CONTROLLER_i_mux0001(17)
    );
  LCD_CONTROLLER_i_mux0001_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(3),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(3),
      I3 => LCD_CONTROLLER_N0,
      O => LCD_CONTROLLER_i_mux0001(16)
    );
  LCD_CONTROLLER_i_mux0001_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(4),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(4),
      I3 => LCD_CONTROLLER_N0,
      O => LCD_CONTROLLER_i_mux0001(15)
    );
  LCD_CONTROLLER_i_mux0001_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(5),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(5),
      I3 => LCD_CONTROLLER_N0,
      O => LCD_CONTROLLER_i_mux0001(14)
    );
  LCD_CONTROLLER_i_mux0001_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(6),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(6),
      I3 => LCD_CONTROLLER_N0,
      O => LCD_CONTROLLER_i_mux0001(13)
    );
  LCD_CONTROLLER_i_mux0001_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(7),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(7),
      I3 => LCD_CONTROLLER_N0,
      O => LCD_CONTROLLER_i_mux0001(12)
    );
  LCD_CONTROLLER_i_mux0001_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(8),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(8),
      I3 => LCD_CONTROLLER_N0,
      O => LCD_CONTROLLER_i_mux0001(11)
    );
  LCD_CONTROLLER_i_mux0001_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(9),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(9),
      I3 => LCD_CONTROLLER_N0,
      O => LCD_CONTROLLER_i_mux0001(10)
    );
  LCD_CONTROLLER_i_mux0001_0_2 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => LCD_CONTROLLER_i(19),
      I1 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      I2 => LCD_CONTROLLER_i_share0000(19),
      I3 => LCD_CONTROLLER_N0,
      O => LCD_CONTROLLER_i_mux0001(0)
    );
  LCD_CONTROLLER_i_mux0001_0_110 : LUT4
    generic map(
      INIT => X"0ACE"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd10_362,
      I1 => LCD_CONTROLLER_i_or0000,
      I2 => LCD_CONTROLLER_init_state_cmp_eq0000,
      I3 => LCD_CONTROLLER_init_state_cmp_eq0001,
      O => LCD_CONTROLLER_i_mux0001_0_110_314
    );
  LCD_CONTROLLER_i_mux0001_0_136 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd4_369,
      I1 => LCD_CONTROLLER_init_state_FSM_FFd2_365,
      O => LCD_CONTROLLER_i_mux0001_0_136_316
    );
  LCD_CONTROLLER_i_mux0001_0_145 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd6_373,
      I1 => LCD_CONTROLLER_init_state_cmp_eq0003_388,
      I2 => LCD_CONTROLLER_i_mux0001_0_136_316,
      I3 => N111,
      O => LCD_CONTROLLER_i_mux0001_0_145_317
    );
  BTN_SAVE_IBUF : IBUF
    port map (
      I => BTN_SAVE,
      O => BTN_SAVE_IBUF_19
    );
  BTN_RESET_IBUF : IBUF
    port map (
      I => BTN_RESET,
      O => BTN_RESET_IBUF_14
    );
  BTN_PUSH_IBUF : IBUF
    port map (
      I => BTN_PUSH,
      O => BTN_PUSH_IBUF_9
    );
  BTN_NL_IBUF : IBUF
    port map (
      I => BTN_NL,
      O => BTN_NL_IBUF_4
    );
  LCD_E_OBUF : OBUF
    port map (
      I => LCD_E_OBUF_411,
      O => LCD_E
    );
  LED0_OBUF : OBUF
    port map (
      I => BTN_NL_CONTROLLER_BTN_PRESSED_1,
      O => LED0
    );
  LED1_OBUF : OBUF
    port map (
      I => LED1_OBUF_417,
      O => LED1
    );
  LED2_OBUF : OBUF
    port map (
      I => LED2_OBUF_436,
      O => LED2
    );
  LED3_OBUF : OBUF
    port map (
      I => LED3_OBUF_455,
      O => LED3
    );
  LED4_OBUF : OBUF
    port map (
      I => LED4_OBUF_458,
      O => LED4
    );
  LED5_OBUF : OBUF
    port map (
      I => LED5_OBUF_477,
      O => LED5
    );
  LED6_OBUF : OBUF
    port map (
      I => LED6_OBUF_480,
      O => LED6
    );
  LED7_OBUF : OBUF
    port map (
      I => LED7_OBUF_499,
      O => LED7
    );
  LCD_RS_OBUF : OBUF
    port map (
      I => LCD_RS_OBUF_413,
      O => LCD_RS
    );
  LCD_RW_OBUF : OBUF
    port map (
      I => N0,
      O => LCD_RW
    );
  SF_CE0_OBUF : OBUF
    port map (
      I => N1,
      O => SF_CE0
    );
  SF_D_3_OBUF : OBUF
    port map (
      I => SF_D_3_OBUF_935,
      O => SF_D(3)
    );
  SF_D_2_OBUF : OBUF
    port map (
      I => SF_D_2_OBUF_934,
      O => SF_D(2)
    );
  SF_D_1_OBUF : OBUF
    port map (
      I => SF_D_1_OBUF_933,
      O => SF_D(1)
    );
  SF_D_0_OBUF : OBUF
    port map (
      I => SF_D_0_OBUF_932,
      O => SF_D(0)
    );
  current_state_FSM_FFd3 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => current_state_FSM_FFd3_In57,
      S => current_state_FSM_FFd3_In14_1027,
      Q => current_state_FSM_FFd3_1026
    );
  current_state_FSM_FFd3_In571 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => current_state_FSM_FFd3_In38_1028,
      I1 => current_state_FSM_FFd2_1022,
      O => current_state_FSM_FFd3_In57
    );
  current_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_10ms_flag_936,
      D => current_state_FSM_FFd1_In1,
      R => BTN_RESET_CONTROLLER_BTN_PRESSED_11,
      Q => current_state_FSM_FFd1_1020
    );
  current_state_FSM_FFd1_In11 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => BTN_PUSH_CONTROLLER_BTN_PRESSED_6,
      I1 => current_state_FSM_FFd2_1022,
      I2 => current_state_FSM_FFd3_1026,
      O => current_state_FSM_FFd1_In1
    );
  LCD_CONTROLLER_init_state_FSM_FFd11 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_21,
      CE => LCD_CONTROLLER_mux,
      D => N0,
      PRE => BTN_RESET_IBUF_14,
      Q => LCD_CONTROLLER_init_state_FSM_FFd11_364
    );
  Madd_push_timer_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(1),
      O => Madd_push_timer_addsub0000_cy_1_rt_523
    );
  Madd_push_timer_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(2),
      O => Madd_push_timer_addsub0000_cy_2_rt_545
    );
  Madd_push_timer_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(3),
      O => Madd_push_timer_addsub0000_cy_3_rt_549
    );
  Madd_push_timer_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(4),
      O => Madd_push_timer_addsub0000_cy_4_rt_551
    );
  Madd_push_timer_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(5),
      O => Madd_push_timer_addsub0000_cy_5_rt_553
    );
  Madd_push_timer_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(6),
      O => Madd_push_timer_addsub0000_cy_6_rt_555
    );
  Madd_push_timer_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(7),
      O => Madd_push_timer_addsub0000_cy_7_rt_557
    );
  Madd_push_timer_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(8),
      O => Madd_push_timer_addsub0000_cy_8_rt_559
    );
  Madd_push_timer_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(9),
      O => Madd_push_timer_addsub0000_cy_9_rt_561
    );
  Madd_push_timer_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(10),
      O => Madd_push_timer_addsub0000_cy_10_rt_503
    );
  Madd_push_timer_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(11),
      O => Madd_push_timer_addsub0000_cy_11_rt_505
    );
  Madd_push_timer_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(12),
      O => Madd_push_timer_addsub0000_cy_12_rt_507
    );
  Madd_push_timer_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(13),
      O => Madd_push_timer_addsub0000_cy_13_rt_509
    );
  Madd_push_timer_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(14),
      O => Madd_push_timer_addsub0000_cy_14_rt_511
    );
  Madd_push_timer_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(15),
      O => Madd_push_timer_addsub0000_cy_15_rt_513
    );
  Madd_push_timer_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(16),
      O => Madd_push_timer_addsub0000_cy_16_rt_515
    );
  Madd_push_timer_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(17),
      O => Madd_push_timer_addsub0000_cy_17_rt_517
    );
  Madd_push_timer_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(18),
      O => Madd_push_timer_addsub0000_cy_18_rt_519
    );
  Madd_push_timer_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(19),
      O => Madd_push_timer_addsub0000_cy_19_rt_521
    );
  Madd_push_timer_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(20),
      O => Madd_push_timer_addsub0000_cy_20_rt_525
    );
  Madd_push_timer_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(21),
      O => Madd_push_timer_addsub0000_cy_21_rt_527
    );
  Madd_push_timer_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(22),
      O => Madd_push_timer_addsub0000_cy_22_rt_529
    );
  Madd_push_timer_addsub0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(23),
      O => Madd_push_timer_addsub0000_cy_23_rt_531
    );
  Madd_push_timer_addsub0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(24),
      O => Madd_push_timer_addsub0000_cy_24_rt_533
    );
  Madd_push_timer_addsub0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(25),
      O => Madd_push_timer_addsub0000_cy_25_rt_535
    );
  Madd_push_timer_addsub0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(26),
      O => Madd_push_timer_addsub0000_cy_26_rt_537
    );
  Madd_push_timer_addsub0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(27),
      O => Madd_push_timer_addsub0000_cy_27_rt_539
    );
  Madd_push_timer_addsub0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(28),
      O => Madd_push_timer_addsub0000_cy_28_rt_541
    );
  Madd_push_timer_addsub0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(29),
      O => Madd_push_timer_addsub0000_cy_29_rt_543
    );
  Madd_push_timer_addsub0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(30),
      O => Madd_push_timer_addsub0000_cy_30_rt_547
    );
  Mcompar_LED1_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => morse_char_0_2_1047,
      O => Mcompar_LED1_cmp_lt0000_cy_0_rt_565
    );
  Mcompar_LED3_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => morse_char_1_2_1112,
      O => Mcompar_LED3_cmp_lt0000_cy_0_rt_585
    );
  Mcompar_LED5_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => morse_char_2_2_1176,
      O => Mcompar_LED5_cmp_lt0000_cy_0_rt_605
    );
  Mcompar_LED7_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => morse_char_3_2_1240,
      O => Mcompar_LED7_cmp_lt0000_cy_0_rt_625
    );
  Mcount_clk_10ms_timer_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(1),
      O => Mcount_clk_10ms_timer_cy_1_rt_687
    );
  Mcount_clk_10ms_timer_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(2),
      O => Mcount_clk_10ms_timer_cy_2_rt_709
    );
  Mcount_clk_10ms_timer_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(3),
      O => Mcount_clk_10ms_timer_cy_3_rt_713
    );
  Mcount_clk_10ms_timer_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(4),
      O => Mcount_clk_10ms_timer_cy_4_rt_715
    );
  Mcount_clk_10ms_timer_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(5),
      O => Mcount_clk_10ms_timer_cy_5_rt_717
    );
  Mcount_clk_10ms_timer_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(6),
      O => Mcount_clk_10ms_timer_cy_6_rt_719
    );
  Mcount_clk_10ms_timer_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(7),
      O => Mcount_clk_10ms_timer_cy_7_rt_721
    );
  Mcount_clk_10ms_timer_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(8),
      O => Mcount_clk_10ms_timer_cy_8_rt_723
    );
  Mcount_clk_10ms_timer_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(9),
      O => Mcount_clk_10ms_timer_cy_9_rt_725
    );
  Mcount_clk_10ms_timer_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(10),
      O => Mcount_clk_10ms_timer_cy_10_rt_667
    );
  Mcount_clk_10ms_timer_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(11),
      O => Mcount_clk_10ms_timer_cy_11_rt_669
    );
  Mcount_clk_10ms_timer_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(12),
      O => Mcount_clk_10ms_timer_cy_12_rt_671
    );
  Mcount_clk_10ms_timer_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(13),
      O => Mcount_clk_10ms_timer_cy_13_rt_673
    );
  Mcount_clk_10ms_timer_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(14),
      O => Mcount_clk_10ms_timer_cy_14_rt_675
    );
  Mcount_clk_10ms_timer_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(15),
      O => Mcount_clk_10ms_timer_cy_15_rt_677
    );
  Mcount_clk_10ms_timer_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(16),
      O => Mcount_clk_10ms_timer_cy_16_rt_679
    );
  Mcount_clk_10ms_timer_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(17),
      O => Mcount_clk_10ms_timer_cy_17_rt_681
    );
  Mcount_clk_10ms_timer_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(18),
      O => Mcount_clk_10ms_timer_cy_18_rt_683
    );
  Mcount_clk_10ms_timer_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(19),
      O => Mcount_clk_10ms_timer_cy_19_rt_685
    );
  Mcount_clk_10ms_timer_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(20),
      O => Mcount_clk_10ms_timer_cy_20_rt_689
    );
  Mcount_clk_10ms_timer_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(21),
      O => Mcount_clk_10ms_timer_cy_21_rt_691
    );
  Mcount_clk_10ms_timer_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(22),
      O => Mcount_clk_10ms_timer_cy_22_rt_693
    );
  Mcount_clk_10ms_timer_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(23),
      O => Mcount_clk_10ms_timer_cy_23_rt_695
    );
  Mcount_clk_10ms_timer_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(24),
      O => Mcount_clk_10ms_timer_cy_24_rt_697
    );
  Mcount_clk_10ms_timer_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(25),
      O => Mcount_clk_10ms_timer_cy_25_rt_699
    );
  Mcount_clk_10ms_timer_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(26),
      O => Mcount_clk_10ms_timer_cy_26_rt_701
    );
  Mcount_clk_10ms_timer_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(27),
      O => Mcount_clk_10ms_timer_cy_27_rt_703
    );
  Mcount_clk_10ms_timer_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(28),
      O => Mcount_clk_10ms_timer_cy_28_rt_705
    );
  Mcount_clk_10ms_timer_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(29),
      O => Mcount_clk_10ms_timer_cy_29_rt_707
    );
  Mcount_clk_10ms_timer_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(30),
      O => Mcount_clk_10ms_timer_cy_30_rt_711
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(0),
      O => Mcompar_lcd_enable_cmp_ge0000_cy_0_rt_645
    );
  Mcompar_lcd_enable_cmp_ge0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(2),
      O => Mcompar_lcd_enable_cmp_ge0000_cy_2_rt_648
    );
  Mcount_clk_5cycle_timer_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(1),
      O => Mcount_clk_5cycle_timer_cy_1_rt_750
    );
  Mcount_clk_5cycle_timer_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(2),
      O => Mcount_clk_5cycle_timer_cy_2_rt_772
    );
  Mcount_clk_5cycle_timer_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(3),
      O => Mcount_clk_5cycle_timer_cy_3_rt_776
    );
  Mcount_clk_5cycle_timer_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(4),
      O => Mcount_clk_5cycle_timer_cy_4_rt_778
    );
  Mcount_clk_5cycle_timer_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(5),
      O => Mcount_clk_5cycle_timer_cy_5_rt_780
    );
  Mcount_clk_5cycle_timer_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(6),
      O => Mcount_clk_5cycle_timer_cy_6_rt_782
    );
  Mcount_clk_5cycle_timer_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(7),
      O => Mcount_clk_5cycle_timer_cy_7_rt_784
    );
  Mcount_clk_5cycle_timer_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(8),
      O => Mcount_clk_5cycle_timer_cy_8_rt_786
    );
  Mcount_clk_5cycle_timer_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(9),
      O => Mcount_clk_5cycle_timer_cy_9_rt_788
    );
  Mcount_clk_5cycle_timer_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(10),
      O => Mcount_clk_5cycle_timer_cy_10_rt_730
    );
  Mcount_clk_5cycle_timer_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(11),
      O => Mcount_clk_5cycle_timer_cy_11_rt_732
    );
  Mcount_clk_5cycle_timer_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(12),
      O => Mcount_clk_5cycle_timer_cy_12_rt_734
    );
  Mcount_clk_5cycle_timer_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(13),
      O => Mcount_clk_5cycle_timer_cy_13_rt_736
    );
  Mcount_clk_5cycle_timer_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(14),
      O => Mcount_clk_5cycle_timer_cy_14_rt_738
    );
  Mcount_clk_5cycle_timer_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(15),
      O => Mcount_clk_5cycle_timer_cy_15_rt_740
    );
  Mcount_clk_5cycle_timer_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(16),
      O => Mcount_clk_5cycle_timer_cy_16_rt_742
    );
  Mcount_clk_5cycle_timer_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(17),
      O => Mcount_clk_5cycle_timer_cy_17_rt_744
    );
  Mcount_clk_5cycle_timer_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(18),
      O => Mcount_clk_5cycle_timer_cy_18_rt_746
    );
  Mcount_clk_5cycle_timer_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(19),
      O => Mcount_clk_5cycle_timer_cy_19_rt_748
    );
  Mcount_clk_5cycle_timer_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(20),
      O => Mcount_clk_5cycle_timer_cy_20_rt_752
    );
  Mcount_clk_5cycle_timer_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(21),
      O => Mcount_clk_5cycle_timer_cy_21_rt_754
    );
  Mcount_clk_5cycle_timer_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(22),
      O => Mcount_clk_5cycle_timer_cy_22_rt_756
    );
  Mcount_clk_5cycle_timer_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(23),
      O => Mcount_clk_5cycle_timer_cy_23_rt_758
    );
  Mcount_clk_5cycle_timer_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(24),
      O => Mcount_clk_5cycle_timer_cy_24_rt_760
    );
  Mcount_clk_5cycle_timer_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(25),
      O => Mcount_clk_5cycle_timer_cy_25_rt_762
    );
  Mcount_clk_5cycle_timer_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(26),
      O => Mcount_clk_5cycle_timer_cy_26_rt_764
    );
  Mcount_clk_5cycle_timer_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(27),
      O => Mcount_clk_5cycle_timer_cy_27_rt_766
    );
  Mcount_clk_5cycle_timer_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(28),
      O => Mcount_clk_5cycle_timer_cy_28_rt_768
    );
  Mcount_clk_5cycle_timer_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(29),
      O => Mcount_clk_5cycle_timer_cy_29_rt_770
    );
  Mcount_clk_5cycle_timer_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(30),
      O => Mcount_clk_5cycle_timer_cy_30_rt_774
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(9),
      O => LCD_CONTROLLER_Madd_i2_share0000_cy_9_rt_44
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(8),
      O => LCD_CONTROLLER_Madd_i2_share0000_cy_8_rt_42
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(7),
      O => LCD_CONTROLLER_Madd_i2_share0000_cy_7_rt_40
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(6),
      O => LCD_CONTROLLER_Madd_i2_share0000_cy_6_rt_38
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(5),
      O => LCD_CONTROLLER_Madd_i2_share0000_cy_5_rt_36
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(4),
      O => LCD_CONTROLLER_Madd_i2_share0000_cy_4_rt_34
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(3),
      O => LCD_CONTROLLER_Madd_i2_share0000_cy_3_rt_32
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(2),
      O => LCD_CONTROLLER_Madd_i2_share0000_cy_2_rt_30
    );
  LCD_CONTROLLER_Madd_i2_share0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(1),
      O => LCD_CONTROLLER_Madd_i2_share0000_cy_1_rt_28
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(18),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_18_rt_98
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(17),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_17_rt_96
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(16),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_16_rt_94
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(15),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_15_rt_92
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(14),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_14_rt_90
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(13),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_13_rt_88
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(12),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_12_rt_86
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(11),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_11_rt_84
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(10),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_10_rt_82
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(9),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_9_rt_116
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(8),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_8_rt_114
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(7),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_7_rt_112
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(6),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_6_rt_110
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(5),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_5_rt_108
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(4),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_4_rt_106
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(3),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_3_rt_104
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(2),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_2_rt_102
    );
  LCD_CONTROLLER_Madd_i_share0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(1),
      O => LCD_CONTROLLER_Madd_i_share0000_cy_1_rt_100
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(15),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_15_rt_59
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(14),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_14_rt_57
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(13),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_13_rt_55
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(12),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_12_rt_53
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(11),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_11_rt_51
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(10),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_10_rt_49
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(9),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_9_rt_77
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(8),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_8_rt_75
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(7),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_7_rt_73
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(6),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_6_rt_71
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(5),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_5_rt_69
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(4),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_4_rt_67
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(3),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_3_rt_65
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(2),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_2_rt_63
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(1),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_cy_1_rt_61
    );
  LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(4),
      O => LCD_CONTROLLER_cur_state_cmp_eq0001_wg_cy_0_rt_196
    );
  Madd_push_timer_addsub0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => push_timer(31),
      O => Madd_push_timer_addsub0000_xor_31_rt_563
    );
  Mcount_clk_10ms_timer_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_10ms_timer(31),
      O => Mcount_clk_10ms_timer_xor_31_rt_727
    );
  Mcount_clk_5cycle_timer_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_5cycle_timer(31),
      O => Mcount_clk_5cycle_timer_xor_31_rt_790
    );
  LCD_CONTROLLER_Madd_i2_share0000_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(10),
      O => LCD_CONTROLLER_Madd_i2_share0000_xor_10_rt_46
    );
  LCD_CONTROLLER_Madd_i_share0000_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i(19),
      O => LCD_CONTROLLER_Madd_i_share0000_xor_19_rt_118
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_xor_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => LCD_CONTROLLER_i3(16),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_xor_16_rt_79
    );
  LCD_CONTROLLER_init_state_cmp_eq0004_SW0_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => LCD_CONTROLLER_i(10),
      I1 => LCD_CONTROLLER_i(12),
      I2 => LCD_CONTROLLER_i(6),
      O => N42
    );
  LCD_CONTROLLER_init_state_cmp_eq0003_SW0_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => LCD_CONTROLLER_i(10),
      I1 => LCD_CONTROLLER_i(12),
      I2 => LCD_CONTROLLER_i(6),
      O => N44
    );
  LCD_CONTROLLER_init_state_cmp_eq00011_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => LCD_CONTROLLER_i(13),
      I1 => LCD_CONTROLLER_i(5),
      I2 => LCD_CONTROLLER_i(19),
      I3 => LCD_CONTROLLER_i(17),
      O => N46
    );
  LCD_CONTROLLER_init_state_cmp_eq00001_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => LCD_CONTROLLER_i(13),
      I1 => LCD_CONTROLLER_i(17),
      I2 => LCD_CONTROLLER_i(9),
      I3 => LCD_CONTROLLER_i(10),
      O => N48
    );
  LCD_CONTROLLER_init_state_cmp_eq000311_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => LCD_CONTROLLER_i(9),
      I1 => LCD_CONTROLLER_i(8),
      I2 => LCD_CONTROLLER_i(3),
      I3 => LCD_CONTROLLER_i(4),
      O => N50
    );
  LCD_CONTROLLER_init_state_cmp_eq0003 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => N52,
      I1 => N44,
      I2 => LCD_CONTROLLER_N26,
      I3 => LCD_CONTROLLER_N8,
      O => LCD_CONTROLLER_init_state_cmp_eq0003_388
    );
  LCD_CONTROLLER_i2_mux0002_9_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(1),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => N107,
      O => LCD_CONTROLLER_i2_mux0002(9)
    );
  LCD_CONTROLLER_i2_mux0002_8_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(2),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => LCD_CONTROLLER_i2_mux0002_0_146_219,
      O => LCD_CONTROLLER_i2_mux0002(8)
    );
  LCD_CONTROLLER_i2_mux0002_7_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(3),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => LCD_CONTROLLER_i2_mux0002_0_146_219,
      O => LCD_CONTROLLER_i2_mux0002(7)
    );
  LCD_CONTROLLER_i2_mux0002_6_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(4),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => LCD_CONTROLLER_i2_mux0002_0_146_219,
      O => LCD_CONTROLLER_i2_mux0002(6)
    );
  LCD_CONTROLLER_i2_mux0002_5_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(5),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => LCD_CONTROLLER_i2_mux0002_0_146_219,
      O => LCD_CONTROLLER_i2_mux0002(5)
    );
  LCD_CONTROLLER_i2_mux0002_4_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(6),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => LCD_CONTROLLER_i2_mux0002_0_146_219,
      O => LCD_CONTROLLER_i2_mux0002(4)
    );
  LCD_CONTROLLER_i2_mux0002_3_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(7),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => LCD_CONTROLLER_i2_mux0002_0_146_219,
      O => LCD_CONTROLLER_i2_mux0002(3)
    );
  LCD_CONTROLLER_i2_mux0002_2_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(8),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => LCD_CONTROLLER_i2_mux0002_0_146_219,
      O => LCD_CONTROLLER_i2_mux0002(2)
    );
  LCD_CONTROLLER_i2_mux0002_1_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(9),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => LCD_CONTROLLER_i2_mux0002_0_146_219,
      O => LCD_CONTROLLER_i2_mux0002(1)
    );
  LCD_CONTROLLER_i2_mux0002_10_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(0),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => LCD_CONTROLLER_i2_mux0002_0_146_219,
      O => LCD_CONTROLLER_i2_mux0002(10)
    );
  LCD_CONTROLLER_i2_mux0002_0_2 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_i2_share0000(10),
      I1 => LCD_CONTROLLER_i2_mux0002_0_110_216,
      I2 => LCD_CONTROLLER_i2_mux0002_0_120_218,
      I3 => LCD_CONTROLLER_i2_mux0002_0_146_219,
      O => LCD_CONTROLLER_i2_mux0002(0)
    );
  LCD_CONTROLLER_tx_state_cmp_eq00001_SW1 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(4),
      I1 => LCD_CONTROLLER_i2(7),
      I2 => LCD_CONTROLLER_i2(3),
      I3 => LCD_CONTROLLER_i2(8),
      O => N54
    );
  LCD_CONTROLLER_tx_state_cmp_eq00001_SW2 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(2),
      I1 => LCD_CONTROLLER_i2(3),
      I2 => LCD_CONTROLLER_i2(1),
      I3 => LCD_CONTROLLER_i2(7),
      O => N56
    );
  LCD_CONTROLLER_init_state_cmp_eq0002_SW1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd8_377,
      I1 => LCD_CONTROLLER_init_state_FSM_FFd11_364,
      I2 => LCD_CONTROLLER_mux,
      O => N58
    );
  LCD_CONTROLLER_i_mux0001_0_121 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => N32,
      I1 => LCD_CONTROLLER_N9,
      I2 => N59,
      I3 => N58,
      O => LCD_CONTROLLER_i_mux0001_0_121_315
    );
  morse_encoded_6_mux00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Mcompar_LED7_cmp_lt0000_cy(9),
      I1 => LED6_cmp_eq0000,
      O => morse_encoded_6_mux0000
    );
  morse_encoded_4_mux00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Mcompar_LED5_cmp_lt0000_cy(9),
      I1 => LED4_cmp_eq0000,
      O => morse_encoded_4_mux0000
    );
  morse_encoded_3_mux00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Mcompar_LED3_cmp_lt0000_cy(9),
      I1 => LED2_cmp_eq0000,
      O => morse_encoded_3_mux0000
    );
  morse_encoded_1_mux00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Mcompar_LED1_cmp_lt0000_cy(9),
      I1 => LED1_cmp_eq0000,
      O => morse_encoded_1_mux0000
    );
  LED7_mux0001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N201,
      I1 => Mcompar_LED7_cmp_lt0000_cy(9),
      I2 => LED7_OBUF_499,
      I3 => N21,
      O => LED7_mux0001_500
    );
  LED5_mux0001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N221,
      I1 => Mcompar_LED5_cmp_lt0000_cy(9),
      I2 => LED5_OBUF_477,
      I3 => N21,
      O => LED5_mux0001_478
    );
  LED3_mux0001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N24,
      I1 => Mcompar_LED3_cmp_lt0000_cy(9),
      I2 => LED3_OBUF_455,
      I3 => N21,
      O => LED3_mux0001_456
    );
  LED1_mux0001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N26,
      I1 => Mcompar_LED1_cmp_lt0000_cy(9),
      I2 => LED1_OBUF_417,
      I3 => N21,
      O => LED1_mux0001_434
    );
  LCD_CONTROLLER_SF_D0_mux0000_7_184 : LUT4
    generic map(
      INIT => X"FF14"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I3 => LCD_CONTROLLER_SF_D0_mux0000_7_151_173,
      O => LCD_CONTROLLER_SF_D0_mux0000_7_184_174
    );
  LCD_CONTROLLER_SF_D0_mux0000_5_204 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_5_161_148,
      I1 => LCD_CONTROLLER_N4,
      I2 => LCD_CONTROLLER_SF_D0(1),
      I3 => LCD_CONTROLLER_SF_D0_mux0000_5_200,
      O => LCD_CONTROLLER_SF_D0_mux0000(5)
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_259_SW0 : LUT4
    generic map(
      INIT => X"8680"
    )
    port map (
      I0 => morse_encoded(3),
      I1 => morse_encoded(5),
      I2 => morse_encoded(1),
      I3 => morse_encoded(7),
      O => N63
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_259 : LUT4
    generic map(
      INIT => X"10B0"
    )
    port map (
      I0 => morse_encoded(6),
      I1 => morse_encoded(7),
      I2 => N20,
      I3 => N63,
      O => LCD_CONTROLLER_SF_D0_mux0000_6_259_160
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_300_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_6_259_160,
      I1 => N23,
      I2 => morse_encoded(2),
      I3 => N14,
      O => N69
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_300 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd5_401,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd1_181,
      I2 => N69,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd6_403,
      O => LCD_CONTROLLER_SF_D0_mux0000_6_300_161
    );
  LCD_CONTROLLER_SF_D0_mux0000_5_161_SW0 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_5_114_147,
      I1 => N14,
      I2 => morse_encoded(1),
      I3 => morse_encoded(2),
      O => N71
    );
  LCD_CONTROLLER_SF_D0_mux0000_5_161 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd2_395,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd1_181,
      I2 => N71,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd3_397,
      O => LCD_CONTROLLER_SF_D0_mux0000_5_161_148
    );
  morse_char_3_mux0000_0_21 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => current_state_FSM_FFd1_1020,
      I1 => morse_idx(0),
      I2 => current_state_FSM_FFd3_1026,
      I3 => morse_idx(1),
      O => N19
    );
  morse_char_2_mux0000_0_21 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => current_state_FSM_FFd1_1020,
      I1 => current_state_FSM_FFd3_1026,
      I2 => morse_idx(1),
      I3 => morse_idx(0),
      O => N18
    );
  morse_char_1_mux0000_0_21 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => current_state_FSM_FFd1_1020,
      I1 => current_state_FSM_FFd3_1026,
      I2 => morse_idx(0),
      I3 => morse_idx(1),
      O => N17
    );
  morse_char_0_mux0000_0_21 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => current_state_FSM_FFd3_1026,
      I1 => morse_idx(1),
      I2 => current_state_FSM_FFd1_1020,
      I3 => morse_idx(0),
      O => N16
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_0 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_SF_D0(0),
      I1 => LCD_CONTROLLER_tx_state_FSM_FFd7_405,
      I2 => LCD_CONTROLLER_tx_state_FSM_FFd1_393,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd4_399,
      O => LCD_CONTROLLER_SF_D0_mux0000_4_0_137
    );
  LCD_CONTROLLER_SF_D0_mux0000_7_12_SW0 : LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I1 => LCD_CONTROLLER_tx_state_FSM_FFd5_401,
      I2 => LCD_CONTROLLER_tx_state_FSM_FFd6_403,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      O => N73
    );
  LCD_CONTROLLER_SF_D0_mux0000_7_12 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I1 => N73,
      I2 => LCD_CONTROLLER_SF_D0(3),
      I3 => LCD_CONTROLLER_N4,
      O => LCD_CONTROLLER_SF_D0_mux0000_7_12_170
    );
  LCD_CONTROLLER_cur_state_FSM_FFd2_In_SW1 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_cmp_eq000011_191,
      I1 => LCD_CONTROLLER_cur_state_cmp_eq000019_192,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I3 => LCD_CONTROLLER_cur_state_cmp_eq000024_193,
      O => N75
    );
  LCD_CONTROLLER_cur_state_FSM_FFd2_In : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd1_181,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I2 => N75,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      O => LCD_CONTROLLER_cur_state_FSM_FFd2_In_184
    );
  LCD_CONTROLLER_SF_D0_mux0000_7_211 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_7_184_174,
      I1 => LCD_CONTROLLER_tx_state_FSM_FFd3_397,
      I2 => LCD_CONTROLLER_SF_D0_mux0000_7_12_170,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd2_395,
      O => LCD_CONTROLLER_SF_D0_mux0000(7)
    );
  LCD_CONTROLLER_SF_D_3_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_SF_D0(3),
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      O => SF_D_3_OBUF_935
    );
  LCD_CONTROLLER_SF_D_2_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_SF_D0(2),
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      O => SF_D_2_OBUF_934
    );
  LCD_CONTROLLER_init_state_cmp_eq0002_SW2_SW0 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd11_364,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      O => N79
    );
  current_state_FSM_FFd3_In38 : MUXF5
    port map (
      I0 => N85,
      I1 => N86,
      S => current_state_FSM_FFd1_1020,
      O => current_state_FSM_FFd3_In38_1028
    );
  current_state_FSM_FFd3_In38_F : LUT4
    generic map(
      INIT => X"7577"
    )
    port map (
      I0 => current_state_FSM_FFd3_1026,
      I1 => BTN_PUSH_CONTROLLER_BTN_PRESSED_6,
      I2 => BTN_SAVE_CONTROLLER_BTN_PRESSED_16,
      I3 => BTN_RESET_CONTROLLER_BTN_PRESSED_11,
      O => N85
    );
  current_state_FSM_FFd3_In38_G : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => BTN_RESET_CONTROLLER_BTN_PRESSED_11,
      I1 => BTN_PUSH_CONTROLLER_BTN_PRESSED_6,
      O => N86
    );
  LCD_CONTROLLER_cur_state_FSM_FFd4_In : MUXF5
    port map (
      I0 => N87,
      I1 => N88,
      S => LCD_CONTROLLER_cur_state_cmp_eq0000,
      O => LCD_CONTROLLER_cur_state_FSM_FFd4_In_189
    );
  LCD_CONTROLLER_cur_state_FSM_FFd4_In_F : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I2 => LCD_CONTROLLER_init_done_359,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      O => N87
    );
  LCD_CONTROLLER_cur_state_FSM_FFd4_In_G : LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I2 => LCD_CONTROLLER_init_done_359,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      O => N88
    );
  LCD_CONTROLLER_cur_state_FSM_FFd1_In : MUXF5
    port map (
      I0 => N89,
      I1 => N90,
      S => LCD_CONTROLLER_cur_state_FSM_FFd1_181,
      O => LCD_CONTROLLER_cur_state_FSM_FFd1_In_182
    );
  LCD_CONTROLLER_cur_state_FSM_FFd1_In_F : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => lcd_enable_1032,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      O => N89
    );
  LCD_CONTROLLER_cur_state_FSM_FFd1_In_G : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_cmp_eq000011_191,
      I1 => LCD_CONTROLLER_cur_state_cmp_eq000019_192,
      I2 => LCD_CONTROLLER_cur_state_cmp_eq000024_193,
      O => N90
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_146 : MUXF5
    port map (
      I0 => N91,
      I1 => N92,
      S => morse_encoded(1),
      O => LCD_CONTROLLER_SF_D0_mux0000_4_146_142
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_146_F : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => morse_encoded(4),
      I1 => morse_encoded(3),
      I2 => N23,
      I3 => LCD_CONTROLLER_SF_D0_mux0000_4_129,
      O => N91
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_146_G : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_4_129,
      I1 => morse_encoded(6),
      I2 => N20,
      I3 => LCD_CONTROLLER_SF_D0_mux0000_4_34_145,
      O => N92
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_265_SW0_SW0 : MUXF5
    port map (
      I0 => N93,
      I1 => N94,
      S => morse_encoded(3),
      O => N83
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_265_SW0_SW0_F : LUT4
    generic map(
      INIT => X"8189"
    )
    port map (
      I0 => morse_encoded(6),
      I1 => morse_encoded(7),
      I2 => morse_encoded(1),
      I3 => morse_encoded(5),
      O => N93
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_265_SW0_SW0_G : LUT4
    generic map(
      INIT => X"3405"
    )
    port map (
      I0 => morse_encoded(7),
      I1 => morse_encoded(5),
      I2 => morse_encoded(1),
      I3 => morse_encoded(6),
      O => N94
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_265 : MUXF5
    port map (
      I0 => N95,
      I1 => N96,
      S => morse_encoded(2),
      O => LCD_CONTROLLER_SF_D0_mux0000_4_265_143
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_265_F : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => N23,
      I1 => morse_encoded(4),
      I2 => morse_encoded(1),
      I3 => morse_encoded(3),
      O => N95
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_265_G : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => morse_encoded(0),
      I1 => morse_encoded(4),
      I2 => N83,
      O => N96
    );
  clk_10ms_flag_BUFG : BUFG
    port map (
      I => clk_10ms_flag1,
      O => clk_10ms_flag_936
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_21
    );
  Madd_push_timer_addsub0000_lut_0_INV_0 : INV
    port map (
      I => push_timer(0),
      O => Madd_push_timer_addsub0000_lut(0)
    );
  Mcount_clk_10ms_timer_lut_0_INV_0 : INV
    port map (
      I => clk_10ms_timer(0),
      O => Mcount_clk_10ms_timer_lut(0)
    );
  Mcompar_lcd_enable_cmp_ge0000_lut_1_INV_0 : INV
    port map (
      I => clk_5cycle_timer(1),
      O => Mcompar_lcd_enable_cmp_ge0000_lut_1_Q
    );
  Mcount_clk_5cycle_timer_lut_0_INV_0 : INV
    port map (
      I => clk_5cycle_timer(0),
      O => Mcount_clk_5cycle_timer_lut(0)
    );
  LCD_CONTROLLER_Madd_i2_share0000_lut_0_INV_0 : INV
    port map (
      I => LCD_CONTROLLER_i2(0),
      O => LCD_CONTROLLER_Madd_i2_share0000_lut(0)
    );
  LCD_CONTROLLER_Madd_i_share0000_lut_0_INV_0 : INV
    port map (
      I => LCD_CONTROLLER_i(0),
      O => LCD_CONTROLLER_Madd_i_share0000_lut(0)
    );
  LCD_CONTROLLER_Madd_i3_addsub0000_lut_0_INV_0 : INV
    port map (
      I => LCD_CONTROLLER_i3(0),
      O => LCD_CONTROLLER_Madd_i3_addsub0000_lut(0)
    );
  LCD_CONTROLLER_reset_inv1_INV_0 : INV
    port map (
      I => BTN_RESET_IBUF_14,
      O => LCD_CONTROLLER_reset_inv
    );
  clk_10ms_flag_not00011_INV_0 : INV
    port map (
      I => clk_10ms_flag1,
      O => clk_10ms_flag_not0001
    );
  morse_encoded_7_mux00001_INV_0 : INV
    port map (
      I => LED6_cmp_eq0000,
      O => morse_encoded_7_mux0000
    );
  morse_encoded_5_mux00001_INV_0 : INV
    port map (
      I => LED4_cmp_eq0000,
      O => morse_encoded_5_mux0000
    );
  morse_encoded_2_mux00001_INV_0 : INV
    port map (
      I => LED2_cmp_eq0000,
      O => morse_encoded_2_mux0000
    );
  morse_encoded_0_mux00001_INV_0 : INV
    port map (
      I => LED1_cmp_eq0000,
      O => morse_encoded_0_mux0000
    );
  Mcompar_lcd_enable_cmp_ge0000_lut_10_1_INV_0 : INV
    port map (
      I => clk_5cycle_timer(31),
      O => Mcompar_lcd_enable_cmp_ge0000_lut_10_Q
    );
  Mcompar_LED1_cmp_lt0000_lut_9_1_INV_0 : INV
    port map (
      I => morse_char_0_31_1060,
      O => Mcompar_LED1_cmp_lt0000_lut(9)
    );
  Mcompar_LED3_cmp_lt0000_lut_9_1_INV_0 : INV
    port map (
      I => morse_char_1_31_1125,
      O => Mcompar_LED3_cmp_lt0000_lut(9)
    );
  Mcompar_LED5_cmp_lt0000_lut_9_1_INV_0 : INV
    port map (
      I => morse_char_2_31_1189,
      O => Mcompar_LED5_cmp_lt0000_lut(9)
    );
  Mcompar_LED7_cmp_lt0000_lut_9_1_INV_0 : INV
    port map (
      I => morse_char_3_31_1253,
      O => Mcompar_LED7_cmp_lt0000_lut(9)
    );
  LCD_CONTROLLER_LCD_E1_mux00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd10_362,
      I1 => LCD_CONTROLLER_i_or0000,
      I2 => LCD_CONTROLLER_init_state_FSM_FFd11_364,
      I3 => LCD_CONTROLLER_init_state_FSM_FFd1_360,
      O => LCD_CONTROLLER_LCD_E1_mux00001_25
    );
  LCD_CONTROLLER_LCD_E1_mux0000_f5 : MUXF5
    port map (
      I0 => LCD_CONTROLLER_i_or0000,
      I1 => LCD_CONTROLLER_LCD_E1_mux00001_25,
      S => LCD_CONTROLLER_LCD_E1_23,
      O => LCD_CONTROLLER_LCD_E1_mux0000
    );
  current_state_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => BTN_PUSH_CONTROLLER_BTN_PRESSED_6,
      I1 => current_state_FSM_FFd2_1022,
      I2 => current_state_FSM_FFd1_1020,
      I3 => BTN_SAVE_CONTROLLER_BTN_PRESSED_16,
      O => current_state_FSM_FFd2_In1_1024
    );
  current_state_FSM_FFd2_In2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => current_state_FSM_FFd2_1022,
      I1 => BTN_PUSH_CONTROLLER_BTN_PRESSED_6,
      O => current_state_FSM_FFd2_In2_1025
    );
  current_state_FSM_FFd2_In_f5 : MUXF5
    port map (
      I0 => current_state_FSM_FFd2_In2_1025,
      I1 => current_state_FSM_FFd2_In1_1024,
      S => current_state_FSM_FFd3_1026,
      O => current_state_FSM_FFd2_In
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_441 : LUT4
    generic map(
      INIT => X"10B0"
    )
    port map (
      I0 => morse_encoded(3),
      I1 => morse_encoded(1),
      I2 => morse_encoded(5),
      I3 => morse_encoded(6),
      O => LCD_CONTROLLER_SF_D0_mux0000_6_441_163
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_44_f5 : MUXF5
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_6_441_163,
      I1 => N0,
      S => morse_encoded(7),
      O => LCD_CONTROLLER_SF_D0_mux0000_6_44
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_741 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => morse_encoded(3),
      I1 => morse_encoded(5),
      I2 => morse_encoded(6),
      I3 => morse_encoded(1),
      O => LCD_CONTROLLER_SF_D0_mux0000_6_741_165
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_742 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => morse_encoded(6),
      I1 => morse_encoded(5),
      I2 => morse_encoded(3),
      I3 => morse_encoded(1),
      O => LCD_CONTROLLER_SF_D0_mux0000_6_742_166
    );
  LCD_CONTROLLER_SF_D0_mux0000_6_74_f5 : MUXF5
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_6_742_166,
      I1 => LCD_CONTROLLER_SF_D0_mux0000_6_741_165,
      S => morse_encoded(7),
      O => LCD_CONTROLLER_SF_D0_mux0000_6_74
    );
  LCD_CONTROLLER_SF_D0_mux0000_7_1331 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => morse_encoded(3),
      I1 => morse_encoded(2),
      I2 => morse_encoded(4),
      I3 => morse_encoded(1),
      O => LCD_CONTROLLER_SF_D0_mux0000_7_1331_172
    );
  LCD_CONTROLLER_SF_D0_mux0000_7_133_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => LCD_CONTROLLER_SF_D0_mux0000_7_1331_172,
      S => N23,
      O => LCD_CONTROLLER_SF_D0_mux0000_7_133
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_1291 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => morse_encoded(2),
      I1 => LCD_CONTROLLER_SF_D0_mux0000_4_101_139,
      I2 => morse_encoded(6),
      I3 => morse_encoded(0),
      O => LCD_CONTROLLER_SF_D0_mux0000_4_1291_141
    );
  LCD_CONTROLLER_SF_D0_mux0000_4_129_f5 : MUXF5
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_4_1291_141,
      I1 => N0,
      S => morse_encoded(7),
      O => LCD_CONTROLLER_SF_D0_mux0000_4_129
    );
  LCD_CONTROLLER_SF_D0_mux0000_5_921 : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => morse_encoded(3),
      I1 => morse_encoded(5),
      I2 => morse_encoded(6),
      I3 => morse_encoded(1),
      O => LCD_CONTROLLER_SF_D0_mux0000_5_921_154
    );
  LCD_CONTROLLER_SF_D0_mux0000_5_92_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => LCD_CONTROLLER_SF_D0_mux0000_5_921_154,
      S => morse_encoded(7),
      O => LCD_CONTROLLER_SF_D0_mux0000_5_92
    );
  LCD_CONTROLLER_cur_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"2F2A"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I1 => LCD_CONTROLLER_cur_state_cmp_eq0001,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I3 => LCD_CONTROLLER_cur_state_cmp_eq0000,
      O => LCD_CONTROLLER_cur_state_FSM_FFd3_In1_187
    );
  LCD_CONTROLLER_cur_state_FSM_FFd3_In_f5 : MUXF5
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd3_In1_187,
      S => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      O => LCD_CONTROLLER_cur_state_FSM_FFd3_In
    );
  morse_idx_mux0000_0_1 : LUT4
    generic map(
      INIT => X"FF72"
    )
    port map (
      I0 => current_state_FSM_FFd1_1020,
      I1 => morse_idx(0),
      I2 => current_state_FSM_FFd2_1022,
      I3 => current_state_FSM_FFd3_1026,
      O => morse_idx_mux0000_0_1_1311
    );
  morse_idx_mux0000_0_2 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => current_state_FSM_FFd1_1020,
      I1 => morse_idx(0),
      I2 => current_state_FSM_FFd3_1026,
      O => morse_idx_mux0000_0_2_1312
    );
  morse_idx_mux0000_0_f5 : MUXF5
    port map (
      I0 => morse_idx_mux0000_0_2_1312,
      I1 => morse_idx_mux0000_0_1_1311,
      S => morse_idx(1),
      O => morse_idx_mux0000(0)
    );
  LCD_CONTROLLER_SF_D0_mux0000_5_2001 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd3_397,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I3 => LCD_CONTROLLER_tx_state_FSM_FFd2_395,
      O => LCD_CONTROLLER_SF_D0_mux0000_5_2001_150
    );
  LCD_CONTROLLER_SF_D0_mux0000_5_2002 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => LCD_CONTROLLER_N5,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      I2 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      O => LCD_CONTROLLER_SF_D0_mux0000_5_2002_151
    );
  LCD_CONTROLLER_SF_D0_mux0000_5_200_f5 : MUXF5
    port map (
      I0 => LCD_CONTROLLER_SF_D0_mux0000_5_2002_151,
      I1 => LCD_CONTROLLER_SF_D0_mux0000_5_2001_150,
      S => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      O => LCD_CONTROLLER_SF_D0_mux0000_5_200
    );
  morse_char_3_mux0000_0_11 : LUT4_D
    generic map(
      INIT => X"2AFF"
    )
    port map (
      I0 => current_state_cmp_eq0004,
      I1 => morse_idx(1),
      I2 => morse_idx(0),
      I3 => morse_char_0_or0000,
      LO => N97,
      O => N3
    );
  morse_char_2_mux0000_0_11 : LUT4_D
    generic map(
      INIT => X"8AFF"
    )
    port map (
      I0 => current_state_cmp_eq0004,
      I1 => morse_idx(0),
      I2 => morse_idx(1),
      I3 => morse_char_0_or0000,
      LO => N98,
      O => N2
    );
  morse_char_1_mux0000_0_11 : LUT4_D
    generic map(
      INIT => X"8AFF"
    )
    port map (
      I0 => current_state_cmp_eq0004,
      I1 => morse_idx(1),
      I2 => morse_idx(0),
      I3 => morse_char_0_or0000,
      LO => N99,
      O => N11
    );
  morse_char_0_mux0000_0_11 : LUT4_D
    generic map(
      INIT => X"A8FF"
    )
    port map (
      I0 => current_state_cmp_eq0004,
      I1 => morse_idx(1),
      I2 => morse_idx(0),
      I3 => morse_char_0_or0000,
      LO => N100,
      O => N01
    );
  LCD_CONTROLLER_i3_mux0000_0_21 : LUT4_D
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => LCD_CONTROLLER_cur_state_FSM_FFd2_183,
      I1 => LCD_CONTROLLER_cur_state_FSM_FFd3_185,
      I2 => LCD_CONTROLLER_cur_state_cmp_eq0001,
      I3 => LCD_CONTROLLER_cur_state_FSM_FFd4_188,
      LO => N101,
      O => LCD_CONTROLLER_N7
    );
  LCD_CONTROLLER_tx_state_cmp_eq00021 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(4),
      I1 => LCD_CONTROLLER_i2(5),
      I2 => LCD_CONTROLLER_N19,
      LO => N102,
      O => LCD_CONTROLLER_tx_state_cmp_eq0002
    );
  LCD_CONTROLLER_tx_state_cmp_eq00003 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => LCD_CONTROLLER_N19,
      I1 => LCD_CONTROLLER_i2(4),
      I2 => LCD_CONTROLLER_i2(5),
      LO => N103,
      O => LCD_CONTROLLER_tx_state_cmp_eq0000
    );
  LED7_mux0001_SW0 : LUT3_L
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => current_state_FSM_FFd2_1022,
      I1 => current_state_FSM_FFd3_1026,
      I2 => LED6_cmp_eq0000,
      LO => N201
    );
  LED5_mux0001_SW0 : LUT3_L
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => current_state_FSM_FFd2_1022,
      I1 => current_state_FSM_FFd3_1026,
      I2 => LED4_cmp_eq0000,
      LO => N221
    );
  LED3_mux0001_SW0 : LUT3_L
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => current_state_FSM_FFd2_1022,
      I1 => current_state_FSM_FFd3_1026,
      I2 => LED2_cmp_eq0000,
      LO => N24
    );
  LED1_mux0001_SW0 : LUT3_L
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => current_state_FSM_FFd2_1022,
      I1 => current_state_FSM_FFd3_1026,
      I2 => LED1_cmp_eq0000,
      LO => N26
    );
  LCD_CONTROLLER_cur_state_cmp_eq000011 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => LCD_CONTROLLER_i2(0),
      I1 => LCD_CONTROLLER_i2(3),
      I2 => LCD_CONTROLLER_i2(4),
      I3 => LCD_CONTROLLER_i2(5),
      LO => N104,
      O => LCD_CONTROLLER_cur_state_cmp_eq000011_191
    );
  LCD_CONTROLLER_init_state_cmp_eq000121 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => LCD_CONTROLLER_i(12),
      I1 => LCD_CONTROLLER_i(8),
      I2 => LCD_CONTROLLER_i(3),
      I3 => LCD_CONTROLLER_i(4),
      LO => N105,
      O => LCD_CONTROLLER_N18
    );
  LCD_CONTROLLER_init_state_cmp_eq0002 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => LCD_CONTROLLER_i(5),
      I1 => LCD_CONTROLLER_i(19),
      I2 => LCD_CONTROLLER_N9,
      I3 => N32,
      LO => N106,
      O => LCD_CONTROLLER_init_state_cmp_eq0002_387
    );
  LCD_CONTROLLER_i2_mux0002_0_146 : LUT4_D
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => LCD_CONTROLLER_tx_state_FSM_FFd4_399,
      I1 => LCD_CONTROLLER_i2(4),
      I2 => LCD_CONTROLLER_i2(5),
      I3 => LCD_CONTROLLER_N19,
      LO => N107,
      O => LCD_CONTROLLER_i2_mux0002_0_146_219
    );
  LCD_CONTROLLER_i_mux0001_0_147 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => LCD_CONTROLLER_i_mux0001_0_121_315,
      I1 => LCD_CONTROLLER_i_mux0001_0_145_317,
      I2 => LCD_CONTROLLER_i_mux0001_0_110_314,
      LO => N108,
      O => LCD_CONTROLLER_N0
    );
  LCD_CONTROLLER_init_state_cmp_eq00011 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => LCD_CONTROLLER_i(16),
      I1 => LCD_CONTROLLER_i(14),
      I2 => LCD_CONTROLLER_N20,
      I3 => N46,
      LO => N109,
      O => LCD_CONTROLLER_N8
    );
  LCD_CONTROLLER_init_state_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => LCD_CONTROLLER_i(16),
      I1 => LCD_CONTROLLER_N20,
      I2 => N48,
      I3 => LCD_CONTROLLER_N26,
      LO => N110,
      O => LCD_CONTROLLER_N9
    );
  LCD_CONTROLLER_init_state_cmp_eq0004 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => N50,
      I1 => N42,
      I2 => LCD_CONTROLLER_N26,
      I3 => LCD_CONTROLLER_N8,
      LO => N111,
      O => LCD_CONTROLLER_init_state_cmp_eq0004_389
    );
  LCD_CONTROLLER_init_state_cmp_eq000311_SW1 : LUT4_L
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => LCD_CONTROLLER_i(9),
      I1 => LCD_CONTROLLER_i(8),
      I2 => LCD_CONTROLLER_i(4),
      I3 => LCD_CONTROLLER_i(3),
      LO => N52
    );
  LCD_CONTROLLER_tx_state_cmp_eq0001 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => N30,
      I1 => N28,
      I2 => LCD_CONTROLLER_i2(9),
      I3 => N54,
      LO => N112,
      O => LCD_CONTROLLER_tx_state_cmp_eq0001_408
    );
  LCD_CONTROLLER_tx_state_cmp_eq000021 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => N30,
      I1 => LCD_CONTROLLER_i2(9),
      I2 => LCD_CONTROLLER_i2(8),
      I3 => N56,
      LO => N113,
      O => LCD_CONTROLLER_N19
    );
  LCD_CONTROLLER_init_state_cmp_eq0002_SW2 : LUT4_L
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => LCD_CONTROLLER_init_state_FSM_FFd8_377,
      I1 => LCD_CONTROLLER_i(5),
      I2 => LCD_CONTROLLER_i(19),
      I3 => N79,
      LO => N59
    );
  LCD_CONTROLLER_i_mux0001_0_147_1 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => LCD_CONTROLLER_i_mux0001_0_121_315,
      I1 => LCD_CONTROLLER_i_mux0001_0_145_317,
      I2 => LCD_CONTROLLER_i_mux0001_0_110_314,
      LO => N114,
      O => LCD_CONTROLLER_i_mux0001_0_147_318
    );

end Structure;

