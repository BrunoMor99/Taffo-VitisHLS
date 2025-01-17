set moduleName mm_Pipeline_VITIS_LOOP_92_10
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
set C_modelName {mm_Pipeline_VITIS_LOOP_92_10}
set C_modelType { void 0 }
set C_modelArgList {
	{ D_s9_23fixp_0 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_1 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_2 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_3 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_4 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_5 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_6 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_7 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_8 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_9 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_10 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_11 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_12 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_13 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_14 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ D_s9_23fixp_15 int 31 regular {array 16 { 1 3 } 1 1 }  }
	{ sum_s8_24fixp_06_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "D_s9_23fixp_0", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_1", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_2", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_3", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_4", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_5", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_6", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_7", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_8", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_9", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_10", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_11", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_12", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_13", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_14", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "D_s9_23fixp_15", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "sum_s8_24fixp_06_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ D_s9_23fixp_0_address0 sc_out sc_lv 4 signal 0 } 
	{ D_s9_23fixp_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ D_s9_23fixp_0_q0 sc_in sc_lv 31 signal 0 } 
	{ D_s9_23fixp_1_address0 sc_out sc_lv 4 signal 1 } 
	{ D_s9_23fixp_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ D_s9_23fixp_1_q0 sc_in sc_lv 31 signal 1 } 
	{ D_s9_23fixp_2_address0 sc_out sc_lv 4 signal 2 } 
	{ D_s9_23fixp_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ D_s9_23fixp_2_q0 sc_in sc_lv 31 signal 2 } 
	{ D_s9_23fixp_3_address0 sc_out sc_lv 4 signal 3 } 
	{ D_s9_23fixp_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ D_s9_23fixp_3_q0 sc_in sc_lv 31 signal 3 } 
	{ D_s9_23fixp_4_address0 sc_out sc_lv 4 signal 4 } 
	{ D_s9_23fixp_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ D_s9_23fixp_4_q0 sc_in sc_lv 31 signal 4 } 
	{ D_s9_23fixp_5_address0 sc_out sc_lv 4 signal 5 } 
	{ D_s9_23fixp_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ D_s9_23fixp_5_q0 sc_in sc_lv 31 signal 5 } 
	{ D_s9_23fixp_6_address0 sc_out sc_lv 4 signal 6 } 
	{ D_s9_23fixp_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ D_s9_23fixp_6_q0 sc_in sc_lv 31 signal 6 } 
	{ D_s9_23fixp_7_address0 sc_out sc_lv 4 signal 7 } 
	{ D_s9_23fixp_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ D_s9_23fixp_7_q0 sc_in sc_lv 31 signal 7 } 
	{ D_s9_23fixp_8_address0 sc_out sc_lv 4 signal 8 } 
	{ D_s9_23fixp_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ D_s9_23fixp_8_q0 sc_in sc_lv 31 signal 8 } 
	{ D_s9_23fixp_9_address0 sc_out sc_lv 4 signal 9 } 
	{ D_s9_23fixp_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ D_s9_23fixp_9_q0 sc_in sc_lv 31 signal 9 } 
	{ D_s9_23fixp_10_address0 sc_out sc_lv 4 signal 10 } 
	{ D_s9_23fixp_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ D_s9_23fixp_10_q0 sc_in sc_lv 31 signal 10 } 
	{ D_s9_23fixp_11_address0 sc_out sc_lv 4 signal 11 } 
	{ D_s9_23fixp_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ D_s9_23fixp_11_q0 sc_in sc_lv 31 signal 11 } 
	{ D_s9_23fixp_12_address0 sc_out sc_lv 4 signal 12 } 
	{ D_s9_23fixp_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ D_s9_23fixp_12_q0 sc_in sc_lv 31 signal 12 } 
	{ D_s9_23fixp_13_address0 sc_out sc_lv 4 signal 13 } 
	{ D_s9_23fixp_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ D_s9_23fixp_13_q0 sc_in sc_lv 31 signal 13 } 
	{ D_s9_23fixp_14_address0 sc_out sc_lv 4 signal 14 } 
	{ D_s9_23fixp_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ D_s9_23fixp_14_q0 sc_in sc_lv 31 signal 14 } 
	{ D_s9_23fixp_15_address0 sc_out sc_lv 4 signal 15 } 
	{ D_s9_23fixp_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ D_s9_23fixp_15_q0 sc_in sc_lv 31 signal 15 } 
	{ sum_s8_24fixp_06_out sc_out sc_lv 32 signal 16 } 
	{ sum_s8_24fixp_06_out_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "D_s9_23fixp_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_0", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_0", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_0", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_1", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_1", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_1", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_2", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_2", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_2", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_3", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_3", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_3", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_4", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_4", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_4", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_5", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_5", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_5", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_6", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_6", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_6", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_7", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_7", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_7", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_8", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_8", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_8", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_9", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_9", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_9", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_10", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_10", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_10", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_11", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_11", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_11", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_12", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_12", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_12", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_13", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_13", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_13", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_14", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_14", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_14", "role": "q0" }} , 
 	{ "name": "D_s9_23fixp_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_15", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_15", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_15", "role": "q0" }} , 
 	{ "name": "sum_s8_24fixp_06_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_s8_24fixp_06_out", "role": "default" }} , 
 	{ "name": "sum_s8_24fixp_06_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_s8_24fixp_06_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mm_Pipeline_VITIS_LOOP_92_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "D_s9_23fixp_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D_s9_23fixp_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_s8_24fixp_06_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm_Pipeline_VITIS_LOOP_92_10 {
		D_s9_23fixp_0 {Type I LastRead 0 FirstWrite -1}
		D_s9_23fixp_1 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_2 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_3 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_4 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_5 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_6 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_7 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_8 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_9 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_10 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_11 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_12 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_13 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_14 {Type I LastRead 1 FirstWrite -1}
		D_s9_23fixp_15 {Type I LastRead 1 FirstWrite -1}
		sum_s8_24fixp_06_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "19"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	D_s9_23fixp_0 { ap_memory {  { D_s9_23fixp_0_address0 mem_address 1 4 }  { D_s9_23fixp_0_ce0 mem_ce 1 1 }  { D_s9_23fixp_0_q0 mem_dout 0 31 } } }
	D_s9_23fixp_1 { ap_memory {  { D_s9_23fixp_1_address0 mem_address 1 4 }  { D_s9_23fixp_1_ce0 mem_ce 1 1 }  { D_s9_23fixp_1_q0 in_data 0 31 } } }
	D_s9_23fixp_2 { ap_memory {  { D_s9_23fixp_2_address0 mem_address 1 4 }  { D_s9_23fixp_2_ce0 mem_ce 1 1 }  { D_s9_23fixp_2_q0 in_data 0 31 } } }
	D_s9_23fixp_3 { ap_memory {  { D_s9_23fixp_3_address0 mem_address 1 4 }  { D_s9_23fixp_3_ce0 mem_ce 1 1 }  { D_s9_23fixp_3_q0 in_data 0 31 } } }
	D_s9_23fixp_4 { ap_memory {  { D_s9_23fixp_4_address0 mem_address 1 4 }  { D_s9_23fixp_4_ce0 mem_ce 1 1 }  { D_s9_23fixp_4_q0 in_data 0 31 } } }
	D_s9_23fixp_5 { ap_memory {  { D_s9_23fixp_5_address0 mem_address 1 4 }  { D_s9_23fixp_5_ce0 mem_ce 1 1 }  { D_s9_23fixp_5_q0 in_data 0 31 } } }
	D_s9_23fixp_6 { ap_memory {  { D_s9_23fixp_6_address0 mem_address 1 4 }  { D_s9_23fixp_6_ce0 mem_ce 1 1 }  { D_s9_23fixp_6_q0 in_data 0 31 } } }
	D_s9_23fixp_7 { ap_memory {  { D_s9_23fixp_7_address0 mem_address 1 4 }  { D_s9_23fixp_7_ce0 mem_ce 1 1 }  { D_s9_23fixp_7_q0 in_data 0 31 } } }
	D_s9_23fixp_8 { ap_memory {  { D_s9_23fixp_8_address0 mem_address 1 4 }  { D_s9_23fixp_8_ce0 mem_ce 1 1 }  { D_s9_23fixp_8_q0 in_data 0 31 } } }
	D_s9_23fixp_9 { ap_memory {  { D_s9_23fixp_9_address0 mem_address 1 4 }  { D_s9_23fixp_9_ce0 mem_ce 1 1 }  { D_s9_23fixp_9_q0 in_data 0 31 } } }
	D_s9_23fixp_10 { ap_memory {  { D_s9_23fixp_10_address0 mem_address 1 4 }  { D_s9_23fixp_10_ce0 mem_ce 1 1 }  { D_s9_23fixp_10_q0 in_data 0 31 } } }
	D_s9_23fixp_11 { ap_memory {  { D_s9_23fixp_11_address0 mem_address 1 4 }  { D_s9_23fixp_11_ce0 mem_ce 1 1 }  { D_s9_23fixp_11_q0 in_data 0 31 } } }
	D_s9_23fixp_12 { ap_memory {  { D_s9_23fixp_12_address0 mem_address 1 4 }  { D_s9_23fixp_12_ce0 mem_ce 1 1 }  { D_s9_23fixp_12_q0 in_data 0 31 } } }
	D_s9_23fixp_13 { ap_memory {  { D_s9_23fixp_13_address0 mem_address 1 4 }  { D_s9_23fixp_13_ce0 mem_ce 1 1 }  { D_s9_23fixp_13_q0 in_data 0 31 } } }
	D_s9_23fixp_14 { ap_memory {  { D_s9_23fixp_14_address0 mem_address 1 4 }  { D_s9_23fixp_14_ce0 mem_ce 1 1 }  { D_s9_23fixp_14_q0 in_data 0 31 } } }
	D_s9_23fixp_15 { ap_memory {  { D_s9_23fixp_15_address0 mem_address 1 4 }  { D_s9_23fixp_15_ce0 mem_ce 1 1 }  { D_s9_23fixp_15_q0 in_data 0 31 } } }
	sum_s8_24fixp_06_out { ap_vld {  { sum_s8_24fixp_06_out out_data 1 32 }  { sum_s8_24fixp_06_out_ap_vld out_vld 1 1 } } }
}
