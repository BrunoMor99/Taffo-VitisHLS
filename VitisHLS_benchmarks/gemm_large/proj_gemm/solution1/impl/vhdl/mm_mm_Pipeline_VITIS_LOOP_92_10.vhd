-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mm_mm_Pipeline_VITIS_LOOP_92_10 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    D_s9_23fixp_0_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_0_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_0_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_1_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_1_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_1_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_2_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_2_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_2_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_3_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_3_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_3_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_4_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_4_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_4_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_5_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_5_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_5_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_6_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_6_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_6_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_7_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_7_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_7_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_8_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_8_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_8_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_9_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_9_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_9_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_10_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_10_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_10_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_11_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_11_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_11_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_12_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_12_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_12_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_13_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_13_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_13_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_14_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_14_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_14_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    D_s9_23fixp_15_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    D_s9_23fixp_15_ce0 : OUT STD_LOGIC;
    D_s9_23fixp_15_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    sum_s8_24fixp_06_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    sum_s8_24fixp_06_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of mm_mm_Pipeline_VITIS_LOOP_92_10 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal exitcond546_fu_310_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal exitcond546_reg_870 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvars_iv51_cast_fu_322_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal indvars_iv51_cast_reg_874 : STD_LOGIC_VECTOR (63 downto 0);
    signal D_s9_23fixp_0_load_reg_973 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal sum_s8_24fixp_06_fu_74 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_47_fu_838_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal indvars_iv51_fu_78 : STD_LOGIC_VECTOR (4 downto 0);
    signal indvars_iv_next52_fu_316_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_sig_allocacmp_indvars_iv51_load : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_s_fu_335_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold85_fu_342_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_fu_348_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_3_fu_366_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_358_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold_fu_374_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_fu_380_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_6_fu_398_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_390_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold71_fu_406_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_fu_412_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_9_fu_430_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_fu_422_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold72_fu_438_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_10_fu_444_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_12_fu_462_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_11_fu_454_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold73_fu_470_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_13_fu_476_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_15_fu_494_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_14_fu_486_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold74_fu_502_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_16_fu_508_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_18_fu_526_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_17_fu_518_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold75_fu_534_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_19_fu_540_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_21_fu_558_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_20_fu_550_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold76_fu_566_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_22_fu_572_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_24_fu_590_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_fu_582_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold77_fu_598_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_25_fu_604_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_27_fu_622_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_26_fu_614_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold78_fu_630_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_28_fu_636_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_30_fu_654_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_29_fu_646_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold79_fu_662_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_31_fu_668_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_33_fu_686_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_32_fu_678_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold80_fu_694_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_34_fu_700_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_36_fu_718_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_35_fu_710_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold81_fu_726_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_37_fu_732_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_39_fu_750_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_38_fu_742_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold82_fu_758_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_40_fu_764_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_42_fu_782_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_41_fu_774_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold83_fu_790_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_43_fu_796_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_45_fu_814_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_44_fu_806_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal fold84_fu_822_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_46_fu_828_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component mm_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component mm_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    indvars_iv51_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((exitcond546_fu_310_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvars_iv51_fu_78 <= indvars_iv_next52_fu_316_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvars_iv51_fu_78 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;

    sum_s8_24fixp_06_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    sum_s8_24fixp_06_fu_74(2) <= '0';
                    sum_s8_24fixp_06_fu_74(3) <= '0';
                    sum_s8_24fixp_06_fu_74(4) <= '0';
                    sum_s8_24fixp_06_fu_74(5) <= '0';
                    sum_s8_24fixp_06_fu_74(6) <= '0';
                    sum_s8_24fixp_06_fu_74(7) <= '0';
                    sum_s8_24fixp_06_fu_74(8) <= '0';
                    sum_s8_24fixp_06_fu_74(9) <= '0';
                    sum_s8_24fixp_06_fu_74(10) <= '0';
                    sum_s8_24fixp_06_fu_74(11) <= '0';
                    sum_s8_24fixp_06_fu_74(12) <= '0';
                    sum_s8_24fixp_06_fu_74(13) <= '0';
                    sum_s8_24fixp_06_fu_74(14) <= '0';
                    sum_s8_24fixp_06_fu_74(15) <= '0';
                    sum_s8_24fixp_06_fu_74(16) <= '0';
                    sum_s8_24fixp_06_fu_74(17) <= '0';
                    sum_s8_24fixp_06_fu_74(18) <= '0';
                    sum_s8_24fixp_06_fu_74(19) <= '0';
                    sum_s8_24fixp_06_fu_74(20) <= '0';
                    sum_s8_24fixp_06_fu_74(21) <= '0';
                    sum_s8_24fixp_06_fu_74(22) <= '0';
                    sum_s8_24fixp_06_fu_74(23) <= '0';
                    sum_s8_24fixp_06_fu_74(24) <= '0';
                    sum_s8_24fixp_06_fu_74(25) <= '0';
                    sum_s8_24fixp_06_fu_74(26) <= '0';
                    sum_s8_24fixp_06_fu_74(27) <= '0';
                    sum_s8_24fixp_06_fu_74(28) <= '0';
                    sum_s8_24fixp_06_fu_74(29) <= '0';
                    sum_s8_24fixp_06_fu_74(30) <= '0';
                    sum_s8_24fixp_06_fu_74(31) <= '0';
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                                        sum_s8_24fixp_06_fu_74(31 downto 2) <= tmp_47_fu_838_p3(31 downto 2);
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                D_s9_23fixp_0_load_reg_973 <= D_s9_23fixp_0_q0;
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                exitcond546_reg_870 <= exitcond546_fu_310_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond546_fu_310_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    indvars_iv51_cast_reg_874(4 downto 0) <= indvars_iv51_cast_fu_322_p1(4 downto 0);
            end if;
        end if;
    end process;
    indvars_iv51_cast_reg_874(63 downto 5) <= "00000000000000000000000000000000000000000000000000000000000";
    sum_s8_24fixp_06_fu_74(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    D_s9_23fixp_0_address0 <= indvars_iv51_cast_fu_322_p1(4 - 1 downto 0);

    D_s9_23fixp_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_0_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_10_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_10_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_10_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_10_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_11_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_11_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_11_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_11_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_12_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_12_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_12_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_12_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_13_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_13_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_13_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_13_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_14_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_14_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_14_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_14_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_15_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_15_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_15_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_15_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_1_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_1_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_2_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_2_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_3_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_3_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_4_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_4_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_4_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_5_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_5_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_5_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_6_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_6_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_6_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_7_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_7_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_7_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_8_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_8_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_8_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_8_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    D_s9_23fixp_9_address0 <= indvars_iv51_cast_reg_874(4 - 1 downto 0);

    D_s9_23fixp_9_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            D_s9_23fixp_9_ce0 <= ap_const_logic_1;
        else 
            D_s9_23fixp_9_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, exitcond546_fu_310_p2)
    begin
        if (((exitcond546_fu_310_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_indvars_iv51_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvars_iv51_fu_78)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_indvars_iv51_load <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_indvars_iv51_load <= indvars_iv51_fu_78;
        end if; 
    end process;

    exitcond546_fu_310_p2 <= "1" when (ap_sig_allocacmp_indvars_iv51_load = ap_const_lv5_10) else "0";
    fold71_fu_406_p2 <= std_logic_vector(unsigned(tmp_6_fu_398_p3) + unsigned(tmp_5_fu_390_p3));
    fold72_fu_438_p2 <= std_logic_vector(unsigned(tmp_9_fu_430_p3) + unsigned(tmp_8_fu_422_p3));
    fold73_fu_470_p2 <= std_logic_vector(unsigned(tmp_12_fu_462_p3) + unsigned(tmp_11_fu_454_p3));
    fold74_fu_502_p2 <= std_logic_vector(unsigned(tmp_15_fu_494_p3) + unsigned(tmp_14_fu_486_p3));
    fold75_fu_534_p2 <= std_logic_vector(unsigned(tmp_18_fu_526_p3) + unsigned(tmp_17_fu_518_p3));
    fold76_fu_566_p2 <= std_logic_vector(unsigned(tmp_21_fu_558_p3) + unsigned(tmp_20_fu_550_p3));
    fold77_fu_598_p2 <= std_logic_vector(unsigned(tmp_24_fu_590_p3) + unsigned(tmp_23_fu_582_p3));
    fold78_fu_630_p2 <= std_logic_vector(unsigned(tmp_27_fu_622_p3) + unsigned(tmp_26_fu_614_p3));
    fold79_fu_662_p2 <= std_logic_vector(unsigned(tmp_30_fu_654_p3) + unsigned(tmp_29_fu_646_p3));
    fold80_fu_694_p2 <= std_logic_vector(unsigned(tmp_33_fu_686_p3) + unsigned(tmp_32_fu_678_p3));
    fold81_fu_726_p2 <= std_logic_vector(unsigned(tmp_36_fu_718_p3) + unsigned(tmp_35_fu_710_p3));
    fold82_fu_758_p2 <= std_logic_vector(unsigned(tmp_39_fu_750_p3) + unsigned(tmp_38_fu_742_p3));
    fold83_fu_790_p2 <= std_logic_vector(unsigned(tmp_42_fu_782_p3) + unsigned(tmp_41_fu_774_p3));
    fold84_fu_822_p2 <= std_logic_vector(unsigned(tmp_45_fu_814_p3) + unsigned(tmp_44_fu_806_p3));
    fold85_fu_342_p2 <= std_logic_vector(unsigned(tmp_s_fu_335_p3) + unsigned(sum_s8_24fixp_06_fu_74));
    fold_fu_374_p2 <= std_logic_vector(unsigned(tmp_3_fu_366_p3) + unsigned(tmp_2_fu_358_p3));
    indvars_iv51_cast_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_indvars_iv51_load),64));
    indvars_iv_next52_fu_316_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvars_iv51_load) + unsigned(ap_const_lv5_1));
    sum_s8_24fixp_06_out <= sum_s8_24fixp_06_fu_74;

    sum_s8_24fixp_06_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, exitcond546_reg_870)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond546_reg_870 = ap_const_lv1_1))) then 
            sum_s8_24fixp_06_out_ap_vld <= ap_const_logic_1;
        else 
            sum_s8_24fixp_06_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp_10_fu_444_p4 <= fold72_fu_438_p2(31 downto 2);
    tmp_11_fu_454_p3 <= (tmp_10_fu_444_p4 & ap_const_lv2_0);
    tmp_12_fu_462_p3 <= (D_s9_23fixp_4_q0 & ap_const_lv1_0);
    tmp_13_fu_476_p4 <= fold73_fu_470_p2(31 downto 2);
    tmp_14_fu_486_p3 <= (tmp_13_fu_476_p4 & ap_const_lv2_0);
    tmp_15_fu_494_p3 <= (D_s9_23fixp_5_q0 & ap_const_lv1_0);
    tmp_16_fu_508_p4 <= fold74_fu_502_p2(31 downto 2);
    tmp_17_fu_518_p3 <= (tmp_16_fu_508_p4 & ap_const_lv2_0);
    tmp_18_fu_526_p3 <= (D_s9_23fixp_6_q0 & ap_const_lv1_0);
    tmp_19_fu_540_p4 <= fold75_fu_534_p2(31 downto 2);
    tmp_1_fu_348_p4 <= fold85_fu_342_p2(31 downto 2);
    tmp_20_fu_550_p3 <= (tmp_19_fu_540_p4 & ap_const_lv2_0);
    tmp_21_fu_558_p3 <= (D_s9_23fixp_7_q0 & ap_const_lv1_0);
    tmp_22_fu_572_p4 <= fold76_fu_566_p2(31 downto 2);
    tmp_23_fu_582_p3 <= (tmp_22_fu_572_p4 & ap_const_lv2_0);
    tmp_24_fu_590_p3 <= (D_s9_23fixp_8_q0 & ap_const_lv1_0);
    tmp_25_fu_604_p4 <= fold77_fu_598_p2(31 downto 2);
    tmp_26_fu_614_p3 <= (tmp_25_fu_604_p4 & ap_const_lv2_0);
    tmp_27_fu_622_p3 <= (D_s9_23fixp_9_q0 & ap_const_lv1_0);
    tmp_28_fu_636_p4 <= fold78_fu_630_p2(31 downto 2);
    tmp_29_fu_646_p3 <= (tmp_28_fu_636_p4 & ap_const_lv2_0);
    tmp_2_fu_358_p3 <= (tmp_1_fu_348_p4 & ap_const_lv2_0);
    tmp_30_fu_654_p3 <= (D_s9_23fixp_10_q0 & ap_const_lv1_0);
    tmp_31_fu_668_p4 <= fold79_fu_662_p2(31 downto 2);
    tmp_32_fu_678_p3 <= (tmp_31_fu_668_p4 & ap_const_lv2_0);
    tmp_33_fu_686_p3 <= (D_s9_23fixp_11_q0 & ap_const_lv1_0);
    tmp_34_fu_700_p4 <= fold80_fu_694_p2(31 downto 2);
    tmp_35_fu_710_p3 <= (tmp_34_fu_700_p4 & ap_const_lv2_0);
    tmp_36_fu_718_p3 <= (D_s9_23fixp_12_q0 & ap_const_lv1_0);
    tmp_37_fu_732_p4 <= fold81_fu_726_p2(31 downto 2);
    tmp_38_fu_742_p3 <= (tmp_37_fu_732_p4 & ap_const_lv2_0);
    tmp_39_fu_750_p3 <= (D_s9_23fixp_13_q0 & ap_const_lv1_0);
    tmp_3_fu_366_p3 <= (D_s9_23fixp_1_q0 & ap_const_lv1_0);
    tmp_40_fu_764_p4 <= fold82_fu_758_p2(31 downto 2);
    tmp_41_fu_774_p3 <= (tmp_40_fu_764_p4 & ap_const_lv2_0);
    tmp_42_fu_782_p3 <= (D_s9_23fixp_14_q0 & ap_const_lv1_0);
    tmp_43_fu_796_p4 <= fold83_fu_790_p2(31 downto 2);
    tmp_44_fu_806_p3 <= (tmp_43_fu_796_p4 & ap_const_lv2_0);
    tmp_45_fu_814_p3 <= (D_s9_23fixp_15_q0 & ap_const_lv1_0);
    tmp_46_fu_828_p4 <= fold84_fu_822_p2(31 downto 2);
    tmp_47_fu_838_p3 <= (tmp_46_fu_828_p4 & ap_const_lv2_0);
    tmp_4_fu_380_p4 <= fold_fu_374_p2(31 downto 2);
    tmp_5_fu_390_p3 <= (tmp_4_fu_380_p4 & ap_const_lv2_0);
    tmp_6_fu_398_p3 <= (D_s9_23fixp_2_q0 & ap_const_lv1_0);
    tmp_7_fu_412_p4 <= fold71_fu_406_p2(31 downto 2);
    tmp_8_fu_422_p3 <= (tmp_7_fu_412_p4 & ap_const_lv2_0);
    tmp_9_fu_430_p3 <= (D_s9_23fixp_3_q0 & ap_const_lv1_0);
    tmp_s_fu_335_p3 <= (D_s9_23fixp_0_load_reg_973 & ap_const_lv1_0);
end behav;