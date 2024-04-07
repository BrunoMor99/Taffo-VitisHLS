set moduleName mm
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {mm}
set C_modelType { float 32 }
set C_modelArgList {
	{ gamma float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gamma", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gamma sc_in sc_lv 32 signal 0 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gamma", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gamma", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "37", "132", "133"],
		"CDFG" : "mm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2097", "EstimateLatencyMax" : "2097",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gamma", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_13", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_14", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Port" : "A_15", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_65_5_VITIS_LOOP_66_6_fu_198", "Parent" : "0", "Child" : ["34", "35", "36"],
		"CDFG" : "mm_Pipeline_VITIS_LOOP_65_5_VITIS_LOOP_66_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1030", "EstimateLatencyMax" : "1030",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "D", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_31", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_65_5_VITIS_LOOP_66_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_65_5_VITIS_LOOP_66_6_fu_198.sitofp_32ns_32_2_no_dsp_1_U3", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_65_5_VITIS_LOOP_66_6_fu_198.mul_5s_5s_5_1_1_U4", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_65_5_VITIS_LOOP_66_6_fu_198.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266", "Parent" : "0", "Child" : ["38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131"],
		"CDFG" : "mm_Pipeline_VITIS_LOOP_84_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1062", "EstimateLatencyMax" : "1062",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "D_31", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_27", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_26", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_25", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_24", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_23", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_22", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_0_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_1_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_2_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_3_U", "Parent" : "37"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_4_U", "Parent" : "37"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_5_U", "Parent" : "37"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_6_U", "Parent" : "37"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_7_U", "Parent" : "37"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_8_U", "Parent" : "37"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_9_U", "Parent" : "37"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_10_U", "Parent" : "37"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_11_U", "Parent" : "37"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_12_U", "Parent" : "37"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_13_U", "Parent" : "37"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_14_U", "Parent" : "37"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.A_15_U", "Parent" : "37"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U39", "Parent" : "37"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U40", "Parent" : "37"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U41", "Parent" : "37"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U42", "Parent" : "37"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U43", "Parent" : "37"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U44", "Parent" : "37"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U45", "Parent" : "37"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U46", "Parent" : "37"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U47", "Parent" : "37"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U48", "Parent" : "37"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U49", "Parent" : "37"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U50", "Parent" : "37"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U51", "Parent" : "37"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U52", "Parent" : "37"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U53", "Parent" : "37"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U54", "Parent" : "37"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U55", "Parent" : "37"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U56", "Parent" : "37"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U57", "Parent" : "37"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U58", "Parent" : "37"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U59", "Parent" : "37"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U60", "Parent" : "37"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U61", "Parent" : "37"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U62", "Parent" : "37"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U63", "Parent" : "37"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U64", "Parent" : "37"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U65", "Parent" : "37"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U66", "Parent" : "37"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U67", "Parent" : "37"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U68", "Parent" : "37"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U69", "Parent" : "37"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U70", "Parent" : "37"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_full_dsp_1_U71", "Parent" : "37"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fadd_32ns_32ns_32_2_no_dsp_1_U72", "Parent" : "37"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U75", "Parent" : "37"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U76", "Parent" : "37"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U77", "Parent" : "37"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U78", "Parent" : "37"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U79", "Parent" : "37"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U80", "Parent" : "37"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U81", "Parent" : "37"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U82", "Parent" : "37"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U83", "Parent" : "37"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U84", "Parent" : "37"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U85", "Parent" : "37"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U86", "Parent" : "37"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U87", "Parent" : "37"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U88", "Parent" : "37"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U89", "Parent" : "37"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U90", "Parent" : "37"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U91", "Parent" : "37"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U92", "Parent" : "37"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U93", "Parent" : "37"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U94", "Parent" : "37"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U95", "Parent" : "37"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U96", "Parent" : "37"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U97", "Parent" : "37"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U98", "Parent" : "37"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U99", "Parent" : "37"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U100", "Parent" : "37"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U101", "Parent" : "37"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U102", "Parent" : "37"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U103", "Parent" : "37"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U104", "Parent" : "37"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U105", "Parent" : "37"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U106", "Parent" : "37"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U107", "Parent" : "37"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U108", "Parent" : "37"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U109", "Parent" : "37"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U110", "Parent" : "37"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U111", "Parent" : "37"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U112", "Parent" : "37"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U113", "Parent" : "37"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U114", "Parent" : "37"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U115", "Parent" : "37"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U116", "Parent" : "37"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.fmul_32ns_32ns_32_2_max_dsp_1_U117", "Parent" : "37"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mm_Pipeline_VITIS_LOOP_84_7_fu_266.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U169", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U170", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm {
		gamma {Type I LastRead 4 FirstWrite -1}
		A_0 {Type I LastRead -1 FirstWrite -1}
		A_1 {Type I LastRead -1 FirstWrite -1}
		A_2 {Type I LastRead -1 FirstWrite -1}
		A_3 {Type I LastRead -1 FirstWrite -1}
		A_4 {Type I LastRead -1 FirstWrite -1}
		A_5 {Type I LastRead -1 FirstWrite -1}
		A_6 {Type I LastRead -1 FirstWrite -1}
		A_7 {Type I LastRead -1 FirstWrite -1}
		A_8 {Type I LastRead -1 FirstWrite -1}
		A_9 {Type I LastRead -1 FirstWrite -1}
		A_10 {Type I LastRead -1 FirstWrite -1}
		A_11 {Type I LastRead -1 FirstWrite -1}
		A_12 {Type I LastRead -1 FirstWrite -1}
		A_13 {Type I LastRead -1 FirstWrite -1}
		A_14 {Type I LastRead -1 FirstWrite -1}
		A_15 {Type I LastRead -1 FirstWrite -1}}
	mm_Pipeline_VITIS_LOOP_65_5_VITIS_LOOP_66_6 {
		D {Type O LastRead -1 FirstWrite 5}
		D_1 {Type O LastRead -1 FirstWrite 5}
		D_2 {Type O LastRead -1 FirstWrite 5}
		D_3 {Type O LastRead -1 FirstWrite 5}
		D_4 {Type O LastRead -1 FirstWrite 5}
		D_5 {Type O LastRead -1 FirstWrite 5}
		D_6 {Type O LastRead -1 FirstWrite 5}
		D_7 {Type O LastRead -1 FirstWrite 5}
		D_8 {Type O LastRead -1 FirstWrite 5}
		D_9 {Type O LastRead -1 FirstWrite 5}
		D_10 {Type O LastRead -1 FirstWrite 5}
		D_11 {Type O LastRead -1 FirstWrite 5}
		D_12 {Type O LastRead -1 FirstWrite 5}
		D_13 {Type O LastRead -1 FirstWrite 5}
		D_14 {Type O LastRead -1 FirstWrite 5}
		D_15 {Type O LastRead -1 FirstWrite 5}
		D_16 {Type O LastRead -1 FirstWrite 5}
		D_17 {Type O LastRead -1 FirstWrite 5}
		D_18 {Type O LastRead -1 FirstWrite 5}
		D_19 {Type O LastRead -1 FirstWrite 5}
		D_20 {Type O LastRead -1 FirstWrite 5}
		D_21 {Type O LastRead -1 FirstWrite 5}
		D_22 {Type O LastRead -1 FirstWrite 5}
		D_23 {Type O LastRead -1 FirstWrite 5}
		D_24 {Type O LastRead -1 FirstWrite 5}
		D_25 {Type O LastRead -1 FirstWrite 5}
		D_26 {Type O LastRead -1 FirstWrite 5}
		D_27 {Type O LastRead -1 FirstWrite 5}
		D_28 {Type O LastRead -1 FirstWrite 5}
		D_29 {Type O LastRead -1 FirstWrite 5}
		D_30 {Type O LastRead -1 FirstWrite 5}
		D_31 {Type O LastRead -1 FirstWrite 5}}
	mm_Pipeline_VITIS_LOOP_84_7 {
		D_31 {Type IO LastRead 0 FirstWrite 52}
		D_30 {Type IO LastRead 0 FirstWrite 51}
		D_29 {Type IO LastRead 0 FirstWrite 50}
		D_28 {Type IO LastRead 0 FirstWrite 49}
		D_27 {Type IO LastRead 0 FirstWrite 49}
		D_26 {Type IO LastRead 0 FirstWrite 48}
		D_25 {Type IO LastRead 0 FirstWrite 47}
		D_24 {Type IO LastRead 0 FirstWrite 46}
		D_23 {Type IO LastRead 0 FirstWrite 45}
		D_22 {Type IO LastRead 0 FirstWrite 44}
		D_21 {Type IO LastRead 0 FirstWrite 44}
		D_20 {Type IO LastRead 0 FirstWrite 43}
		D_19 {Type IO LastRead 0 FirstWrite 42}
		D_18 {Type IO LastRead 0 FirstWrite 41}
		D_17 {Type IO LastRead 0 FirstWrite 41}
		D_16 {Type IO LastRead 0 FirstWrite 40}
		D_15 {Type IO LastRead 0 FirstWrite 40}
		D_14 {Type IO LastRead 0 FirstWrite 39}
		D_13 {Type IO LastRead 0 FirstWrite 38}
		D_12 {Type IO LastRead 0 FirstWrite 38}
		D_11 {Type IO LastRead 0 FirstWrite 37}
		D_10 {Type IO LastRead 0 FirstWrite 37}
		D_9 {Type IO LastRead 0 FirstWrite 37}
		D_8 {Type IO LastRead 0 FirstWrite 36}
		D_7 {Type IO LastRead 0 FirstWrite 36}
		D_6 {Type IO LastRead 0 FirstWrite 36}
		D_5 {Type IO LastRead 0 FirstWrite 36}
		D_4 {Type IO LastRead 0 FirstWrite 36}
		D_3 {Type IO LastRead 0 FirstWrite 36}
		D_2 {Type IO LastRead 0 FirstWrite 36}
		D_1 {Type IO LastRead 0 FirstWrite 36}
		D {Type IO LastRead 0 FirstWrite 36}
		sum_out {Type O LastRead -1 FirstWrite 36}
		A_0 {Type I LastRead -1 FirstWrite -1}
		A_1 {Type I LastRead -1 FirstWrite -1}
		A_2 {Type I LastRead -1 FirstWrite -1}
		A_3 {Type I LastRead -1 FirstWrite -1}
		A_4 {Type I LastRead -1 FirstWrite -1}
		A_5 {Type I LastRead -1 FirstWrite -1}
		A_6 {Type I LastRead -1 FirstWrite -1}
		A_7 {Type I LastRead -1 FirstWrite -1}
		A_8 {Type I LastRead -1 FirstWrite -1}
		A_9 {Type I LastRead -1 FirstWrite -1}
		A_10 {Type I LastRead -1 FirstWrite -1}
		A_11 {Type I LastRead -1 FirstWrite -1}
		A_12 {Type I LastRead -1 FirstWrite -1}
		A_13 {Type I LastRead -1 FirstWrite -1}
		A_14 {Type I LastRead -1 FirstWrite -1}
		A_15 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2097", "Max" : "2097"}
	, {"Name" : "Interval", "Min" : "2098", "Max" : "2098"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gamma { ap_none {  { gamma in_data 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
