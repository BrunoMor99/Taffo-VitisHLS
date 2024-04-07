set moduleName mm_Pipeline_VITIS_LOOP_97_10
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {mm_Pipeline_VITIS_LOOP_97_10}
set C_modelType { void 0 }
set C_modelArgList {
	{ D float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_1 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_2 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_3 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_4 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_5 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_6 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_7 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_8 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_9 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_10 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_11 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_12 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_13 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_14 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ D_15 float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ sum_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "D", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ D_address0 sc_out sc_lv 4 signal 0 } 
	{ D_ce0 sc_out sc_logic 1 signal 0 } 
	{ D_q0 sc_in sc_lv 32 signal 0 } 
	{ D_1_address0 sc_out sc_lv 4 signal 1 } 
	{ D_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ D_1_q0 sc_in sc_lv 32 signal 1 } 
	{ D_2_address0 sc_out sc_lv 4 signal 2 } 
	{ D_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ D_2_q0 sc_in sc_lv 32 signal 2 } 
	{ D_3_address0 sc_out sc_lv 4 signal 3 } 
	{ D_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ D_3_q0 sc_in sc_lv 32 signal 3 } 
	{ D_4_address0 sc_out sc_lv 4 signal 4 } 
	{ D_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ D_4_q0 sc_in sc_lv 32 signal 4 } 
	{ D_5_address0 sc_out sc_lv 4 signal 5 } 
	{ D_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ D_5_q0 sc_in sc_lv 32 signal 5 } 
	{ D_6_address0 sc_out sc_lv 4 signal 6 } 
	{ D_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ D_6_q0 sc_in sc_lv 32 signal 6 } 
	{ D_7_address0 sc_out sc_lv 4 signal 7 } 
	{ D_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ D_7_q0 sc_in sc_lv 32 signal 7 } 
	{ D_8_address0 sc_out sc_lv 4 signal 8 } 
	{ D_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ D_8_q0 sc_in sc_lv 32 signal 8 } 
	{ D_9_address0 sc_out sc_lv 4 signal 9 } 
	{ D_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ D_9_q0 sc_in sc_lv 32 signal 9 } 
	{ D_10_address0 sc_out sc_lv 4 signal 10 } 
	{ D_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ D_10_q0 sc_in sc_lv 32 signal 10 } 
	{ D_11_address0 sc_out sc_lv 4 signal 11 } 
	{ D_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ D_11_q0 sc_in sc_lv 32 signal 11 } 
	{ D_12_address0 sc_out sc_lv 4 signal 12 } 
	{ D_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ D_12_q0 sc_in sc_lv 32 signal 12 } 
	{ D_13_address0 sc_out sc_lv 4 signal 13 } 
	{ D_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ D_13_q0 sc_in sc_lv 32 signal 13 } 
	{ D_14_address0 sc_out sc_lv 4 signal 14 } 
	{ D_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ D_14_q0 sc_in sc_lv 32 signal 14 } 
	{ D_15_address0 sc_out sc_lv 4 signal 15 } 
	{ D_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ D_15_q0 sc_in sc_lv 32 signal 15 } 
	{ sum_out sc_out sc_lv 32 signal 16 } 
	{ sum_out_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D", "role": "address0" }} , 
 	{ "name": "D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce0" }} , 
 	{ "name": "D_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D", "role": "q0" }} , 
 	{ "name": "D_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_1", "role": "address0" }} , 
 	{ "name": "D_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "ce0" }} , 
 	{ "name": "D_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_1", "role": "q0" }} , 
 	{ "name": "D_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_2", "role": "address0" }} , 
 	{ "name": "D_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_2", "role": "ce0" }} , 
 	{ "name": "D_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_2", "role": "q0" }} , 
 	{ "name": "D_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_3", "role": "address0" }} , 
 	{ "name": "D_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_3", "role": "ce0" }} , 
 	{ "name": "D_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_3", "role": "q0" }} , 
 	{ "name": "D_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_4", "role": "address0" }} , 
 	{ "name": "D_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_4", "role": "ce0" }} , 
 	{ "name": "D_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_4", "role": "q0" }} , 
 	{ "name": "D_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_5", "role": "address0" }} , 
 	{ "name": "D_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_5", "role": "ce0" }} , 
 	{ "name": "D_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_5", "role": "q0" }} , 
 	{ "name": "D_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_6", "role": "address0" }} , 
 	{ "name": "D_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_6", "role": "ce0" }} , 
 	{ "name": "D_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_6", "role": "q0" }} , 
 	{ "name": "D_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_7", "role": "address0" }} , 
 	{ "name": "D_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_7", "role": "ce0" }} , 
 	{ "name": "D_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_7", "role": "q0" }} , 
 	{ "name": "D_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_8", "role": "address0" }} , 
 	{ "name": "D_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_8", "role": "ce0" }} , 
 	{ "name": "D_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_8", "role": "q0" }} , 
 	{ "name": "D_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_9", "role": "address0" }} , 
 	{ "name": "D_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_9", "role": "ce0" }} , 
 	{ "name": "D_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_9", "role": "q0" }} , 
 	{ "name": "D_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_10", "role": "address0" }} , 
 	{ "name": "D_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_10", "role": "ce0" }} , 
 	{ "name": "D_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_10", "role": "q0" }} , 
 	{ "name": "D_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_11", "role": "address0" }} , 
 	{ "name": "D_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_11", "role": "ce0" }} , 
 	{ "name": "D_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_11", "role": "q0" }} , 
 	{ "name": "D_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_12", "role": "address0" }} , 
 	{ "name": "D_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_12", "role": "ce0" }} , 
 	{ "name": "D_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_12", "role": "q0" }} , 
 	{ "name": "D_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_13", "role": "address0" }} , 
 	{ "name": "D_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_13", "role": "ce0" }} , 
 	{ "name": "D_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_13", "role": "q0" }} , 
 	{ "name": "D_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_14", "role": "address0" }} , 
 	{ "name": "D_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_14", "role": "ce0" }} , 
 	{ "name": "D_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_14", "role": "q0" }} , 
 	{ "name": "D_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_15", "role": "address0" }} , 
 	{ "name": "D_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_15", "role": "ce0" }} , 
 	{ "name": "D_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_15", "role": "q0" }} , 
 	{ "name": "sum_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_out", "role": "default" }} , 
 	{ "name": "sum_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "mm_Pipeline_VITIS_LOOP_97_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "D", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_no_dsp_1_U663", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm_Pipeline_VITIS_LOOP_97_10 {
		D {Type I LastRead 0 FirstWrite -1}
		D_1 {Type I LastRead 0 FirstWrite -1}
		D_2 {Type I LastRead 0 FirstWrite -1}
		D_3 {Type I LastRead 0 FirstWrite -1}
		D_4 {Type I LastRead 0 FirstWrite -1}
		D_5 {Type I LastRead 0 FirstWrite -1}
		D_6 {Type I LastRead 0 FirstWrite -1}
		D_7 {Type I LastRead 0 FirstWrite -1}
		D_8 {Type I LastRead 0 FirstWrite -1}
		D_9 {Type I LastRead 0 FirstWrite -1}
		D_10 {Type I LastRead 0 FirstWrite -1}
		D_11 {Type I LastRead 0 FirstWrite -1}
		D_12 {Type I LastRead 0 FirstWrite -1}
		D_13 {Type I LastRead 0 FirstWrite -1}
		D_14 {Type I LastRead 0 FirstWrite -1}
		D_15 {Type I LastRead 0 FirstWrite -1}
		sum_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "259", "Max" : "259"}
	, {"Name" : "Interval", "Min" : "259", "Max" : "259"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	D { ap_memory {  { D_address0 mem_address 1 4 }  { D_ce0 mem_ce 1 1 }  { D_q0 in_data 0 32 } } }
	D_1 { ap_memory {  { D_1_address0 mem_address 1 4 }  { D_1_ce0 mem_ce 1 1 }  { D_1_q0 mem_dout 0 32 } } }
	D_2 { ap_memory {  { D_2_address0 mem_address 1 4 }  { D_2_ce0 mem_ce 1 1 }  { D_2_q0 mem_dout 0 32 } } }
	D_3 { ap_memory {  { D_3_address0 mem_address 1 4 }  { D_3_ce0 mem_ce 1 1 }  { D_3_q0 mem_dout 0 32 } } }
	D_4 { ap_memory {  { D_4_address0 mem_address 1 4 }  { D_4_ce0 mem_ce 1 1 }  { D_4_q0 mem_dout 0 32 } } }
	D_5 { ap_memory {  { D_5_address0 mem_address 1 4 }  { D_5_ce0 mem_ce 1 1 }  { D_5_q0 mem_dout 0 32 } } }
	D_6 { ap_memory {  { D_6_address0 mem_address 1 4 }  { D_6_ce0 mem_ce 1 1 }  { D_6_q0 mem_dout 0 32 } } }
	D_7 { ap_memory {  { D_7_address0 mem_address 1 4 }  { D_7_ce0 mem_ce 1 1 }  { D_7_q0 mem_dout 0 32 } } }
	D_8 { ap_memory {  { D_8_address0 mem_address 1 4 }  { D_8_ce0 mem_ce 1 1 }  { D_8_q0 mem_dout 0 32 } } }
	D_9 { ap_memory {  { D_9_address0 mem_address 1 4 }  { D_9_ce0 mem_ce 1 1 }  { D_9_q0 mem_dout 0 32 } } }
	D_10 { ap_memory {  { D_10_address0 mem_address 1 4 }  { D_10_ce0 mem_ce 1 1 }  { D_10_q0 mem_dout 0 32 } } }
	D_11 { ap_memory {  { D_11_address0 mem_address 1 4 }  { D_11_ce0 mem_ce 1 1 }  { D_11_q0 mem_dout 0 32 } } }
	D_12 { ap_memory {  { D_12_address0 mem_address 1 4 }  { D_12_ce0 mem_ce 1 1 }  { D_12_q0 mem_dout 0 32 } } }
	D_13 { ap_memory {  { D_13_address0 mem_address 1 4 }  { D_13_ce0 mem_ce 1 1 }  { D_13_q0 mem_dout 0 32 } } }
	D_14 { ap_memory {  { D_14_address0 mem_address 1 4 }  { D_14_ce0 mem_ce 1 1 }  { D_14_q0 mem_dout 0 32 } } }
	D_15 { ap_memory {  { D_15_address0 mem_address 1 4 }  { D_15_ce0 mem_ce 1 1 }  { D_15_q0 mem_dout 0 32 } } }
	sum_out { ap_vld {  { sum_out out_data 1 32 }  { sum_out_ap_vld out_vld 1 1 } } }
}
