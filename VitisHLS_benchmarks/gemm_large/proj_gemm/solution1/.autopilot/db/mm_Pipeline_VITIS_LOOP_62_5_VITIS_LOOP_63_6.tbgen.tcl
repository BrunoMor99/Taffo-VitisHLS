set moduleName mm_Pipeline_VITIS_LOOP_62_5_VITIS_LOOP_63_6
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
set C_modelName {mm_Pipeline_VITIS_LOOP_62_5_VITIS_LOOP_63_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ D_s9_23fixp_0 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_1 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_2 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_3 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_4 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_5 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_6 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_7 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_8 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_9 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_10 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_11 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_12 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_13 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_14 int 31 regular {array 16 { 0 3 } 0 1 }  }
	{ D_s9_23fixp_15 int 31 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "D_s9_23fixp_0", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_1", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_2", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_3", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_4", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_5", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_6", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_7", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_8", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_9", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_10", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_11", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_12", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_13", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_14", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_s9_23fixp_15", "interface" : "memory", "bitwidth" : 31, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 77
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ D_s9_23fixp_0_address0 sc_out sc_lv 4 signal 0 } 
	{ D_s9_23fixp_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ D_s9_23fixp_0_we0 sc_out sc_logic 1 signal 0 } 
	{ D_s9_23fixp_0_d0 sc_out sc_lv 31 signal 0 } 
	{ D_s9_23fixp_1_address0 sc_out sc_lv 4 signal 1 } 
	{ D_s9_23fixp_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ D_s9_23fixp_1_we0 sc_out sc_logic 1 signal 1 } 
	{ D_s9_23fixp_1_d0 sc_out sc_lv 31 signal 1 } 
	{ D_s9_23fixp_2_address0 sc_out sc_lv 4 signal 2 } 
	{ D_s9_23fixp_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ D_s9_23fixp_2_we0 sc_out sc_logic 1 signal 2 } 
	{ D_s9_23fixp_2_d0 sc_out sc_lv 31 signal 2 } 
	{ D_s9_23fixp_3_address0 sc_out sc_lv 4 signal 3 } 
	{ D_s9_23fixp_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ D_s9_23fixp_3_we0 sc_out sc_logic 1 signal 3 } 
	{ D_s9_23fixp_3_d0 sc_out sc_lv 31 signal 3 } 
	{ D_s9_23fixp_4_address0 sc_out sc_lv 4 signal 4 } 
	{ D_s9_23fixp_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ D_s9_23fixp_4_we0 sc_out sc_logic 1 signal 4 } 
	{ D_s9_23fixp_4_d0 sc_out sc_lv 31 signal 4 } 
	{ D_s9_23fixp_5_address0 sc_out sc_lv 4 signal 5 } 
	{ D_s9_23fixp_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ D_s9_23fixp_5_we0 sc_out sc_logic 1 signal 5 } 
	{ D_s9_23fixp_5_d0 sc_out sc_lv 31 signal 5 } 
	{ D_s9_23fixp_6_address0 sc_out sc_lv 4 signal 6 } 
	{ D_s9_23fixp_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ D_s9_23fixp_6_we0 sc_out sc_logic 1 signal 6 } 
	{ D_s9_23fixp_6_d0 sc_out sc_lv 31 signal 6 } 
	{ D_s9_23fixp_7_address0 sc_out sc_lv 4 signal 7 } 
	{ D_s9_23fixp_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ D_s9_23fixp_7_we0 sc_out sc_logic 1 signal 7 } 
	{ D_s9_23fixp_7_d0 sc_out sc_lv 31 signal 7 } 
	{ D_s9_23fixp_8_address0 sc_out sc_lv 4 signal 8 } 
	{ D_s9_23fixp_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ D_s9_23fixp_8_we0 sc_out sc_logic 1 signal 8 } 
	{ D_s9_23fixp_8_d0 sc_out sc_lv 31 signal 8 } 
	{ D_s9_23fixp_9_address0 sc_out sc_lv 4 signal 9 } 
	{ D_s9_23fixp_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ D_s9_23fixp_9_we0 sc_out sc_logic 1 signal 9 } 
	{ D_s9_23fixp_9_d0 sc_out sc_lv 31 signal 9 } 
	{ D_s9_23fixp_10_address0 sc_out sc_lv 4 signal 10 } 
	{ D_s9_23fixp_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ D_s9_23fixp_10_we0 sc_out sc_logic 1 signal 10 } 
	{ D_s9_23fixp_10_d0 sc_out sc_lv 31 signal 10 } 
	{ D_s9_23fixp_11_address0 sc_out sc_lv 4 signal 11 } 
	{ D_s9_23fixp_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ D_s9_23fixp_11_we0 sc_out sc_logic 1 signal 11 } 
	{ D_s9_23fixp_11_d0 sc_out sc_lv 31 signal 11 } 
	{ D_s9_23fixp_12_address0 sc_out sc_lv 4 signal 12 } 
	{ D_s9_23fixp_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ D_s9_23fixp_12_we0 sc_out sc_logic 1 signal 12 } 
	{ D_s9_23fixp_12_d0 sc_out sc_lv 31 signal 12 } 
	{ D_s9_23fixp_13_address0 sc_out sc_lv 4 signal 13 } 
	{ D_s9_23fixp_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ D_s9_23fixp_13_we0 sc_out sc_logic 1 signal 13 } 
	{ D_s9_23fixp_13_d0 sc_out sc_lv 31 signal 13 } 
	{ D_s9_23fixp_14_address0 sc_out sc_lv 4 signal 14 } 
	{ D_s9_23fixp_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ D_s9_23fixp_14_we0 sc_out sc_logic 1 signal 14 } 
	{ D_s9_23fixp_14_d0 sc_out sc_lv 31 signal 14 } 
	{ D_s9_23fixp_15_address0 sc_out sc_lv 4 signal 15 } 
	{ D_s9_23fixp_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ D_s9_23fixp_15_we0 sc_out sc_logic 1 signal 15 } 
	{ D_s9_23fixp_15_d0 sc_out sc_lv 31 signal 15 } 
	{ grp_fu_223_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_223_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_223_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_223_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_230_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_230_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_230_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "D_s9_23fixp_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_0", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_0", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_1", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_1", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_1", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_1", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_2", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_2", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_2", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_2", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_3", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_3", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_3", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_3", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_4", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_4", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_4", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_4", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_5", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_5", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_5", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_5", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_6", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_6", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_6", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_6", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_7", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_7", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_7", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_7", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_8", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_8", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_8", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_8", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_9", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_9", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_9", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_9", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_10", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_10", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_10", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_10", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_11", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_11", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_11", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_11", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_12", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_12", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_12", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_12", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_13", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_13", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_13", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_13", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_14", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_14", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_14", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_14", "role": "d0" }} , 
 	{ "name": "D_s9_23fixp_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_s9_23fixp_15", "role": "address0" }} , 
 	{ "name": "D_s9_23fixp_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_15", "role": "ce0" }} , 
 	{ "name": "D_s9_23fixp_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_s9_23fixp_15", "role": "we0" }} , 
 	{ "name": "D_s9_23fixp_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "D_s9_23fixp_15", "role": "d0" }} , 
 	{ "name": "grp_fu_223_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_223_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_223_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_223_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_223_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_223_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_223_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_223_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_230_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_230_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_230_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_230_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_230_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_230_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "mm_Pipeline_VITIS_LOOP_62_5_VITIS_LOOP_63_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "265", "EstimateLatencyMax" : "265",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "D_s9_23fixp_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_s9_23fixp_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_5_VITIS_LOOP_63_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32ns_32_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_4s_4s_4_1_1_U6", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm_Pipeline_VITIS_LOOP_62_5_VITIS_LOOP_63_6 {
		D_s9_23fixp_0 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_1 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_2 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_3 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_4 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_5 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_6 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_7 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_8 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_9 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_10 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_11 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_12 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_13 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_14 {Type O LastRead -1 FirstWrite 8}
		D_s9_23fixp_15 {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "265", "Max" : "265"}
	, {"Name" : "Interval", "Min" : "265", "Max" : "265"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	D_s9_23fixp_0 { ap_memory {  { D_s9_23fixp_0_address0 mem_address 1 4 }  { D_s9_23fixp_0_ce0 mem_ce 1 1 }  { D_s9_23fixp_0_we0 mem_we 1 1 }  { D_s9_23fixp_0_d0 mem_din 1 31 } } }
	D_s9_23fixp_1 { ap_memory {  { D_s9_23fixp_1_address0 mem_address 1 4 }  { D_s9_23fixp_1_ce0 mem_ce 1 1 }  { D_s9_23fixp_1_we0 mem_we 1 1 }  { D_s9_23fixp_1_d0 mem_din 1 31 } } }
	D_s9_23fixp_2 { ap_memory {  { D_s9_23fixp_2_address0 mem_address 1 4 }  { D_s9_23fixp_2_ce0 mem_ce 1 1 }  { D_s9_23fixp_2_we0 mem_we 1 1 }  { D_s9_23fixp_2_d0 mem_din 1 31 } } }
	D_s9_23fixp_3 { ap_memory {  { D_s9_23fixp_3_address0 mem_address 1 4 }  { D_s9_23fixp_3_ce0 mem_ce 1 1 }  { D_s9_23fixp_3_we0 mem_we 1 1 }  { D_s9_23fixp_3_d0 mem_din 1 31 } } }
	D_s9_23fixp_4 { ap_memory {  { D_s9_23fixp_4_address0 mem_address 1 4 }  { D_s9_23fixp_4_ce0 mem_ce 1 1 }  { D_s9_23fixp_4_we0 mem_we 1 1 }  { D_s9_23fixp_4_d0 mem_din 1 31 } } }
	D_s9_23fixp_5 { ap_memory {  { D_s9_23fixp_5_address0 mem_address 1 4 }  { D_s9_23fixp_5_ce0 mem_ce 1 1 }  { D_s9_23fixp_5_we0 mem_we 1 1 }  { D_s9_23fixp_5_d0 mem_din 1 31 } } }
	D_s9_23fixp_6 { ap_memory {  { D_s9_23fixp_6_address0 mem_address 1 4 }  { D_s9_23fixp_6_ce0 mem_ce 1 1 }  { D_s9_23fixp_6_we0 mem_we 1 1 }  { D_s9_23fixp_6_d0 mem_din 1 31 } } }
	D_s9_23fixp_7 { ap_memory {  { D_s9_23fixp_7_address0 mem_address 1 4 }  { D_s9_23fixp_7_ce0 mem_ce 1 1 }  { D_s9_23fixp_7_we0 mem_we 1 1 }  { D_s9_23fixp_7_d0 mem_din 1 31 } } }
	D_s9_23fixp_8 { ap_memory {  { D_s9_23fixp_8_address0 mem_address 1 4 }  { D_s9_23fixp_8_ce0 mem_ce 1 1 }  { D_s9_23fixp_8_we0 mem_we 1 1 }  { D_s9_23fixp_8_d0 mem_din 1 31 } } }
	D_s9_23fixp_9 { ap_memory {  { D_s9_23fixp_9_address0 mem_address 1 4 }  { D_s9_23fixp_9_ce0 mem_ce 1 1 }  { D_s9_23fixp_9_we0 mem_we 1 1 }  { D_s9_23fixp_9_d0 mem_din 1 31 } } }
	D_s9_23fixp_10 { ap_memory {  { D_s9_23fixp_10_address0 mem_address 1 4 }  { D_s9_23fixp_10_ce0 mem_ce 1 1 }  { D_s9_23fixp_10_we0 mem_we 1 1 }  { D_s9_23fixp_10_d0 mem_din 1 31 } } }
	D_s9_23fixp_11 { ap_memory {  { D_s9_23fixp_11_address0 mem_address 1 4 }  { D_s9_23fixp_11_ce0 mem_ce 1 1 }  { D_s9_23fixp_11_we0 mem_we 1 1 }  { D_s9_23fixp_11_d0 mem_din 1 31 } } }
	D_s9_23fixp_12 { ap_memory {  { D_s9_23fixp_12_address0 mem_address 1 4 }  { D_s9_23fixp_12_ce0 mem_ce 1 1 }  { D_s9_23fixp_12_we0 mem_we 1 1 }  { D_s9_23fixp_12_d0 mem_din 1 31 } } }
	D_s9_23fixp_13 { ap_memory {  { D_s9_23fixp_13_address0 mem_address 1 4 }  { D_s9_23fixp_13_ce0 mem_ce 1 1 }  { D_s9_23fixp_13_we0 mem_we 1 1 }  { D_s9_23fixp_13_d0 mem_din 1 31 } } }
	D_s9_23fixp_14 { ap_memory {  { D_s9_23fixp_14_address0 mem_address 1 4 }  { D_s9_23fixp_14_ce0 mem_ce 1 1 }  { D_s9_23fixp_14_we0 mem_we 1 1 }  { D_s9_23fixp_14_d0 mem_din 1 31 } } }
	D_s9_23fixp_15 { ap_memory {  { D_s9_23fixp_15_address0 mem_address 1 4 }  { D_s9_23fixp_15_ce0 mem_ce 1 1 }  { D_s9_23fixp_15_we0 mem_we 1 1 }  { D_s9_23fixp_15_d0 mem_din 1 31 } } }
}
