-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fw_fw_Pipeline_VITIS_LOOP_38_3_VITIS_LOOP_39_4_VITIS_LOOP_40_5 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    path_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    path_ce0 : OUT STD_LOGIC;
    path_we0 : OUT STD_LOGIC;
    path_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    path_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    path_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    path_ce1 : OUT STD_LOGIC;
    path_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of fw_fw_Pipeline_VITIS_LOOP_38_3_VITIS_LOOP_39_4_VITIS_LOOP_40_5 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_pp0_stage4 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv13_1000 : STD_LOGIC_VECTOR (12 downto 0) := "1000000000000";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv10_100 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal icmp_ln38_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage4 : signal is "none";
    signal ap_block_state5_pp0_stage4_iter0 : BOOLEAN;
    signal ap_block_pp0_stage4_subdone : BOOLEAN;
    signal indvar_flatten13_load_reg_527 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal add_ln38_fu_188_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln38_reg_535 : STD_LOGIC_VECTOR (12 downto 0);
    signal icmp_ln39_fu_197_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln39_reg_540 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln38_1_fu_217_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln38_1_reg_545 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln39_fu_291_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln39_reg_550 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln39_3_fu_338_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln39_3_reg_555 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln43_fu_361_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln43_reg_570 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmpa_reg_575 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal tmpb_reg_580 : STD_LOGIC_VECTOR (31 downto 0);
    signal path_addr_2_reg_585 : STD_LOGIC_VECTOR (7 downto 0);
    signal path_load_reg_590 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal grp_fu_115_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_reg_596 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage4_11001 : BOOLEAN;
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal select_ln39_2_cast_fu_333_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln42_fu_356_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln43_fu_367_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal j_fu_62 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln40_fu_453_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal i_fu_66 : STD_LOGIC_VECTOR (4 downto 0);
    signal indvar_flatten13_fu_70 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln39_4_fu_463_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal k_fu_74 : STD_LOGIC_VECTOR (4 downto 0);
    signal indvar_flatten36_fu_78 : STD_LOGIC_VECTOR (12 downto 0);
    signal and_ln43_1_fu_447_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal empty_fu_164_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_5_fu_168_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln38_fu_160_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln38_1_fu_211_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln38_fu_229_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln38_2_fu_249_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_7_fu_176_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln40_fu_267_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln38_fu_261_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln38_fu_203_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal and_ln38_fu_273_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln39_fu_285_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln39_fu_279_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal empty_9_fu_299_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_mid1_fu_303_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln38_2_fu_241_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln38_1_fu_225_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_mid111_fu_319_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln38_3_fu_253_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln39_2_fu_325_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_1_cast_fu_346_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_mid_fu_233_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln42_fu_350_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln39_1_fu_311_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal bitcast_ln43_fu_371_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln43_1_fu_388_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_374_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln43_fu_384_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln43_1_fu_411_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln43_fu_405_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_391_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln43_1_fu_401_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln43_3_fu_429_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln43_2_fu_423_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln43_1_fu_435_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln43_fu_417_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln43_fu_441_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_119_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln39_1_fu_458_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_pp0_stage0_00001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fw_fadd_32ns_32ns_32_2_full_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component fw_fcmp_32ns_32ns_1_1_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component fw_flow_control_loop_pipe_sequential_init IS
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
    fadd_32ns_32ns_32_2_full_dsp_1_U13 : component fw_fadd_32ns_32ns_32_2_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmpa_reg_575,
        din1 => tmpb_reg_580,
        ce => ap_const_logic_1,
        dout => grp_fu_115_p2);

    fcmp_32ns_32ns_1_1_no_dsp_1_U14 : component fw_fcmp_32ns_32ns_1_1_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        din0 => path_load_reg_590,
        din1 => add_reg_596,
        opcode => ap_const_lv5_4,
        dout => tmp_2_fu_119_p2);

    flow_control_loop_pipe_sequential_init_U : component fw_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage4_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_66 <= ap_const_lv5_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    i_fu_66 <= select_ln39_3_reg_555;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten13_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten13_fu_70 <= ap_const_lv10_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    indvar_flatten13_fu_70 <= select_ln39_4_fu_463_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten36_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten36_fu_78 <= ap_const_lv13_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    indvar_flatten36_fu_78 <= add_ln38_reg_535;
                end if;
            end if; 
        end if;
    end process;

    j_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_62 <= ap_const_lv5_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    j_fu_62 <= add_ln40_fu_453_p2;
                end if;
            end if; 
        end if;
    end process;

    k_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    k_fu_74 <= ap_const_lv5_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    k_fu_74 <= select_ln38_1_reg_545;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                add_ln38_reg_535 <= add_ln38_fu_188_p2;
                indvar_flatten13_load_reg_527 <= indvar_flatten13_fu_70;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln38_fu_182_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                add_ln43_reg_570 <= add_ln43_fu_361_p2;
                icmp_ln39_reg_540 <= icmp_ln39_fu_197_p2;
                select_ln38_1_reg_545 <= select_ln38_1_fu_217_p3;
                select_ln39_3_reg_555 <= select_ln39_3_fu_338_p3;
                select_ln39_reg_550 <= select_ln39_fu_291_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage4_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4))) then
                add_reg_596 <= grp_fu_115_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                path_addr_2_reg_585 <= zext_ln43_fu_367_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then
                path_load_reg_590 <= path_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                tmpa_reg_575 <= path_q1;
                tmpb_reg_580 <= path_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_condition_exit_pp0_iter0_stage1, ap_block_pp0_stage4_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to1, ap_block_pp0_stage2_subdone, ap_block_pp0_stage3_subdone, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when ap_ST_fsm_pp0_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                end if;
            when ap_ST_fsm_pp0_stage4 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage4_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    add_ln38_1_fu_211_p2 <= std_logic_vector(unsigned(k_fu_74) + unsigned(ap_const_lv5_1));
    add_ln38_fu_188_p2 <= std_logic_vector(unsigned(indvar_flatten36_fu_78) + unsigned(ap_const_lv13_1));
    add_ln39_1_fu_458_p2 <= std_logic_vector(unsigned(indvar_flatten13_load_reg_527) + unsigned(ap_const_lv10_1));
    add_ln39_fu_279_p2 <= std_logic_vector(unsigned(select_ln38_fu_203_p3) + unsigned(ap_const_lv5_1));
    add_ln40_fu_453_p2 <= std_logic_vector(unsigned(select_ln39_reg_550) + unsigned(ap_const_lv5_1));
    add_ln42_fu_350_p2 <= std_logic_vector(unsigned(j_1_cast_fu_346_p1) + unsigned(p_mid_fu_233_p3));
    add_ln43_fu_361_p2 <= std_logic_vector(unsigned(j_1_cast_fu_346_p1) + unsigned(select_ln39_1_fu_311_p3));
    and_ln38_fu_273_p2 <= (xor_ln38_fu_261_p2 and icmp_ln40_fu_267_p2);
    and_ln43_1_fu_447_p2 <= (tmp_2_fu_119_p2 and and_ln43_fu_441_p2);
    and_ln43_fu_441_p2 <= (or_ln43_fu_417_p2 and or_ln43_1_fu_435_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(3);
    ap_CS_fsm_pp0_stage4 <= ap_CS_fsm(4);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage4_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage4_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage4_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, icmp_ln38_fu_182_p2)
    begin
        if (((icmp_ln38_fu_182_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_block_pp0_stage4_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage4_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    bitcast_ln43_1_fu_388_p1 <= add_reg_596;
    bitcast_ln43_fu_371_p1 <= path_load_reg_590;
    empty_7_fu_176_p2 <= std_logic_vector(unsigned(tmp_5_fu_168_p3) + unsigned(zext_ln38_fu_160_p1));
    empty_9_fu_299_p1 <= add_ln39_fu_279_p2(4 - 1 downto 0);
    empty_fu_164_p1 <= i_fu_66(4 - 1 downto 0);
    icmp_ln38_fu_182_p2 <= "1" when (indvar_flatten36_fu_78 = ap_const_lv13_1000) else "0";
    icmp_ln39_fu_197_p2 <= "1" when (indvar_flatten13_fu_70 = ap_const_lv10_100) else "0";
    icmp_ln40_fu_267_p2 <= "1" when (j_fu_62 = ap_const_lv5_10) else "0";
    icmp_ln43_1_fu_411_p2 <= "1" when (trunc_ln43_fu_384_p1 = ap_const_lv23_0) else "0";
    icmp_ln43_2_fu_423_p2 <= "0" when (tmp_1_fu_391_p4 = ap_const_lv8_FF) else "1";
    icmp_ln43_3_fu_429_p2 <= "1" when (trunc_ln43_1_fu_401_p1 = ap_const_lv23_0) else "0";
    icmp_ln43_fu_405_p2 <= "0" when (tmp_fu_374_p4 = ap_const_lv8_FF) else "1";
    j_1_cast_fu_346_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln39_fu_291_p3),8));
    or_ln39_fu_285_p2 <= (icmp_ln39_fu_197_p2 or and_ln38_fu_273_p2);
    or_ln43_1_fu_435_p2 <= (icmp_ln43_3_fu_429_p2 or icmp_ln43_2_fu_423_p2);
    or_ln43_fu_417_p2 <= (icmp_ln43_fu_405_p2 or icmp_ln43_1_fu_411_p2);
    p_mid111_fu_319_p2 <= std_logic_vector(unsigned(p_mid1_fu_303_p3) + unsigned(zext_ln38_1_fu_225_p1));
    p_mid1_fu_303_p3 <= (empty_9_fu_299_p1 & ap_const_lv4_0);
    p_mid_fu_233_p3 <= (trunc_ln38_fu_229_p1 & ap_const_lv4_0);

    path_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage2, path_addr_2_reg_585, ap_block_pp0_stage1, zext_ln42_fu_356_p1, zext_ln43_fu_367_p1, ap_block_pp0_stage2, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            path_address0 <= path_addr_2_reg_585;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            path_address0 <= zext_ln43_fu_367_p1(8 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            path_address0 <= zext_ln42_fu_356_p1(8 - 1 downto 0);
        else 
            path_address0 <= "XXXXXXXX";
        end if; 
    end process;

    path_address1 <= select_ln39_2_cast_fu_333_p1(8 - 1 downto 0);

    path_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            path_ce0 <= ap_const_logic_1;
        else 
            path_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    path_ce1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            path_ce1 <= ap_const_logic_1;
        else 
            path_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    path_d0 <= add_reg_596;

    path_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, and_ln43_1_fu_447_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_lv1_0 = and_ln43_1_fu_447_p2))) then 
            path_we0 <= ap_const_logic_1;
        else 
            path_we0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln38_1_fu_217_p3 <= 
        add_ln38_1_fu_211_p2 when (icmp_ln39_fu_197_p2(0) = '1') else 
        k_fu_74;
    select_ln38_2_fu_241_p3 <= 
        ap_const_lv8_0 when (icmp_ln39_fu_197_p2(0) = '1') else 
        tmp_5_fu_168_p3;
    select_ln38_3_fu_253_p3 <= 
        zext_ln38_2_fu_249_p1 when (icmp_ln39_fu_197_p2(0) = '1') else 
        empty_7_fu_176_p2;
    select_ln38_fu_203_p3 <= 
        ap_const_lv5_0 when (icmp_ln39_fu_197_p2(0) = '1') else 
        i_fu_66;
    select_ln39_1_fu_311_p3 <= 
        p_mid1_fu_303_p3 when (and_ln38_fu_273_p2(0) = '1') else 
        select_ln38_2_fu_241_p3;
    select_ln39_2_cast_fu_333_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln39_2_fu_325_p3),64));
    select_ln39_2_fu_325_p3 <= 
        p_mid111_fu_319_p2 when (and_ln38_fu_273_p2(0) = '1') else 
        select_ln38_3_fu_253_p3;
    select_ln39_3_fu_338_p3 <= 
        add_ln39_fu_279_p2 when (and_ln38_fu_273_p2(0) = '1') else 
        select_ln38_fu_203_p3;
    select_ln39_4_fu_463_p3 <= 
        ap_const_lv10_1 when (icmp_ln39_reg_540(0) = '1') else 
        add_ln39_1_fu_458_p2;
    select_ln39_fu_291_p3 <= 
        ap_const_lv5_0 when (or_ln39_fu_285_p2(0) = '1') else 
        j_fu_62;
    tmp_1_fu_391_p4 <= bitcast_ln43_1_fu_388_p1(30 downto 23);
    tmp_5_fu_168_p3 <= (empty_fu_164_p1 & ap_const_lv4_0);
    tmp_fu_374_p4 <= bitcast_ln43_fu_371_p1(30 downto 23);
    trunc_ln38_fu_229_p1 <= select_ln38_1_fu_217_p3(4 - 1 downto 0);
    trunc_ln43_1_fu_401_p1 <= bitcast_ln43_1_fu_388_p1(23 - 1 downto 0);
    trunc_ln43_fu_384_p1 <= bitcast_ln43_fu_371_p1(23 - 1 downto 0);
    xor_ln38_fu_261_p2 <= (icmp_ln39_fu_197_p2 xor ap_const_lv1_1);
    zext_ln38_1_fu_225_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln38_1_fu_217_p3),8));
    zext_ln38_2_fu_249_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln38_1_fu_211_p2),8));
    zext_ln38_fu_160_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_fu_74),8));
    zext_ln42_fu_356_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln42_fu_350_p2),64));
    zext_ln43_fu_367_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln43_reg_570),64));
end behav;