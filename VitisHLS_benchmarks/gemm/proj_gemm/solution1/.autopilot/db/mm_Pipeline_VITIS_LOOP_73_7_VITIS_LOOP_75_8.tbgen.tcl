set moduleName mm_Pipeline_VITIS_LOOP_73_7_VITIS_LOOP_75_8
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
set C_modelName {mm_Pipeline_VITIS_LOOP_73_7_VITIS_LOOP_75_8}
set C_modelType { void 0 }
set C_modelArgList {
	{ D_s6_26fixp int 30 regular {array 1024 { 0 1 } 1 1 }  }
	{ sum_s8_24fixp_14_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "D_s6_26fixp", "interface" : "memory", "bitwidth" : 30, "direction" : "READWRITE"} , 
 	{ "Name" : "sum_s8_24fixp_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ D_s6_26fixp_address0 sc_out sc_lv 10 signal 0 } 
	{ D_s6_26fixp_ce0 sc_out sc_logic 1 signal 0 } 
	{ D_s6_26fixp_we0 sc_out sc_logic 1 signal 0 } 
	{ D_s6_26fixp_d0 sc_out sc_lv 30 signal 0 } 
	{ D_s6_26fixp_address1 sc_out sc_lv 10 signal 0 } 
	{ D_s6_26fixp_ce1 sc_out sc_logic 1 signal 0 } 
	{ D_s6_26fixp_q1 sc_in sc_lv 30 signal 0 } 
	{ sum_s8_24fixp_14_out sc_out sc_lv 32 signal 1 } 
	{ sum_s8_24fixp_14_out_ap_vld sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "D_s6_26fixp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "D_s6_26fixp", "role": "address0" }} , 
 	{ "name": "D_s6_26fixp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s6_26fixp", "role": "ce0" }} , 
 	{ "name": "D_s6_26fixp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s6_26fixp", "role": "we0" }} , 
 	{ "name": "D_s6_26fixp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "D_s6_26fixp", "role": "d0" }} , 
 	{ "name": "D_s6_26fixp_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "D_s6_26fixp", "role": "address1" }} , 
 	{ "name": "D_s6_26fixp_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s6_26fixp", "role": "ce1" }} , 
 	{ "name": "D_s6_26fixp_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "D_s6_26fixp", "role": "q1" }} , 
 	{ "name": "sum_s8_24fixp_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_s8_24fixp_14_out", "role": "default" }} , 
 	{ "name": "sum_s8_24fixp_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_s8_24fixp_14_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mm_Pipeline_VITIS_LOOP_73_7_VITIS_LOOP_75_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "D_s6_26fixp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_s8_24fixp_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_7_VITIS_LOOP_75_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm_Pipeline_VITIS_LOOP_73_7_VITIS_LOOP_75_8 {
		D_s6_26fixp {Type IO LastRead 0 FirstWrite 1}
		sum_s8_24fixp_14_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1026", "Max" : "1026"}
	, {"Name" : "Interval", "Min" : "1026", "Max" : "1026"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	D_s6_26fixp { ap_memory {  { D_s6_26fixp_address0 mem_address 1 10 }  { D_s6_26fixp_ce0 mem_ce 1 1 }  { D_s6_26fixp_we0 mem_we 1 1 }  { D_s6_26fixp_d0 mem_din 1 30 }  { D_s6_26fixp_address1 MemPortADDR2 1 10 }  { D_s6_26fixp_ce1 MemPortCE2 1 1 }  { D_s6_26fixp_q1 in_data 0 30 } } }
	sum_s8_24fixp_14_out { ap_vld {  { sum_s8_24fixp_14_out out_data 1 32 }  { sum_s8_24fixp_14_out_ap_vld out_vld 1 1 } } }
}