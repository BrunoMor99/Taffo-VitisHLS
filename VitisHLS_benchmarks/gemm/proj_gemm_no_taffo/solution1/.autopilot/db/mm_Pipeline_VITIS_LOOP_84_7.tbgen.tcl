set moduleName mm_Pipeline_VITIS_LOOP_84_7
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
set C_modelName {mm_Pipeline_VITIS_LOOP_84_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ D_31 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_30 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_29 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_28 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_27 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_26 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_25 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_24 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_23 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_22 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_21 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_20 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_19 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_18 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_17 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_16 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_15 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_14 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_13 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_12 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_11 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_10 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_9 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_8 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_7 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_6 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_5 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_4 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_3 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_2 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D_1 float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ D float 32 regular {array 32 { 2 3 } 1 1 }  }
	{ sum_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "D_31", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_30", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_29", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_28", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_27", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_26", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_25", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_24", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_22", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "D", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "sum_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 176
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ D_31_address0 sc_out sc_lv 5 signal 0 } 
	{ D_31_ce0 sc_out sc_logic 1 signal 0 } 
	{ D_31_we0 sc_out sc_logic 1 signal 0 } 
	{ D_31_d0 sc_out sc_lv 32 signal 0 } 
	{ D_31_q0 sc_in sc_lv 32 signal 0 } 
	{ D_30_address0 sc_out sc_lv 5 signal 1 } 
	{ D_30_ce0 sc_out sc_logic 1 signal 1 } 
	{ D_30_we0 sc_out sc_logic 1 signal 1 } 
	{ D_30_d0 sc_out sc_lv 32 signal 1 } 
	{ D_30_q0 sc_in sc_lv 32 signal 1 } 
	{ D_29_address0 sc_out sc_lv 5 signal 2 } 
	{ D_29_ce0 sc_out sc_logic 1 signal 2 } 
	{ D_29_we0 sc_out sc_logic 1 signal 2 } 
	{ D_29_d0 sc_out sc_lv 32 signal 2 } 
	{ D_29_q0 sc_in sc_lv 32 signal 2 } 
	{ D_28_address0 sc_out sc_lv 5 signal 3 } 
	{ D_28_ce0 sc_out sc_logic 1 signal 3 } 
	{ D_28_we0 sc_out sc_logic 1 signal 3 } 
	{ D_28_d0 sc_out sc_lv 32 signal 3 } 
	{ D_28_q0 sc_in sc_lv 32 signal 3 } 
	{ D_27_address0 sc_out sc_lv 5 signal 4 } 
	{ D_27_ce0 sc_out sc_logic 1 signal 4 } 
	{ D_27_we0 sc_out sc_logic 1 signal 4 } 
	{ D_27_d0 sc_out sc_lv 32 signal 4 } 
	{ D_27_q0 sc_in sc_lv 32 signal 4 } 
	{ D_26_address0 sc_out sc_lv 5 signal 5 } 
	{ D_26_ce0 sc_out sc_logic 1 signal 5 } 
	{ D_26_we0 sc_out sc_logic 1 signal 5 } 
	{ D_26_d0 sc_out sc_lv 32 signal 5 } 
	{ D_26_q0 sc_in sc_lv 32 signal 5 } 
	{ D_25_address0 sc_out sc_lv 5 signal 6 } 
	{ D_25_ce0 sc_out sc_logic 1 signal 6 } 
	{ D_25_we0 sc_out sc_logic 1 signal 6 } 
	{ D_25_d0 sc_out sc_lv 32 signal 6 } 
	{ D_25_q0 sc_in sc_lv 32 signal 6 } 
	{ D_24_address0 sc_out sc_lv 5 signal 7 } 
	{ D_24_ce0 sc_out sc_logic 1 signal 7 } 
	{ D_24_we0 sc_out sc_logic 1 signal 7 } 
	{ D_24_d0 sc_out sc_lv 32 signal 7 } 
	{ D_24_q0 sc_in sc_lv 32 signal 7 } 
	{ D_23_address0 sc_out sc_lv 5 signal 8 } 
	{ D_23_ce0 sc_out sc_logic 1 signal 8 } 
	{ D_23_we0 sc_out sc_logic 1 signal 8 } 
	{ D_23_d0 sc_out sc_lv 32 signal 8 } 
	{ D_23_q0 sc_in sc_lv 32 signal 8 } 
	{ D_22_address0 sc_out sc_lv 5 signal 9 } 
	{ D_22_ce0 sc_out sc_logic 1 signal 9 } 
	{ D_22_we0 sc_out sc_logic 1 signal 9 } 
	{ D_22_d0 sc_out sc_lv 32 signal 9 } 
	{ D_22_q0 sc_in sc_lv 32 signal 9 } 
	{ D_21_address0 sc_out sc_lv 5 signal 10 } 
	{ D_21_ce0 sc_out sc_logic 1 signal 10 } 
	{ D_21_we0 sc_out sc_logic 1 signal 10 } 
	{ D_21_d0 sc_out sc_lv 32 signal 10 } 
	{ D_21_q0 sc_in sc_lv 32 signal 10 } 
	{ D_20_address0 sc_out sc_lv 5 signal 11 } 
	{ D_20_ce0 sc_out sc_logic 1 signal 11 } 
	{ D_20_we0 sc_out sc_logic 1 signal 11 } 
	{ D_20_d0 sc_out sc_lv 32 signal 11 } 
	{ D_20_q0 sc_in sc_lv 32 signal 11 } 
	{ D_19_address0 sc_out sc_lv 5 signal 12 } 
	{ D_19_ce0 sc_out sc_logic 1 signal 12 } 
	{ D_19_we0 sc_out sc_logic 1 signal 12 } 
	{ D_19_d0 sc_out sc_lv 32 signal 12 } 
	{ D_19_q0 sc_in sc_lv 32 signal 12 } 
	{ D_18_address0 sc_out sc_lv 5 signal 13 } 
	{ D_18_ce0 sc_out sc_logic 1 signal 13 } 
	{ D_18_we0 sc_out sc_logic 1 signal 13 } 
	{ D_18_d0 sc_out sc_lv 32 signal 13 } 
	{ D_18_q0 sc_in sc_lv 32 signal 13 } 
	{ D_17_address0 sc_out sc_lv 5 signal 14 } 
	{ D_17_ce0 sc_out sc_logic 1 signal 14 } 
	{ D_17_we0 sc_out sc_logic 1 signal 14 } 
	{ D_17_d0 sc_out sc_lv 32 signal 14 } 
	{ D_17_q0 sc_in sc_lv 32 signal 14 } 
	{ D_16_address0 sc_out sc_lv 5 signal 15 } 
	{ D_16_ce0 sc_out sc_logic 1 signal 15 } 
	{ D_16_we0 sc_out sc_logic 1 signal 15 } 
	{ D_16_d0 sc_out sc_lv 32 signal 15 } 
	{ D_16_q0 sc_in sc_lv 32 signal 15 } 
	{ D_15_address0 sc_out sc_lv 5 signal 16 } 
	{ D_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ D_15_we0 sc_out sc_logic 1 signal 16 } 
	{ D_15_d0 sc_out sc_lv 32 signal 16 } 
	{ D_15_q0 sc_in sc_lv 32 signal 16 } 
	{ D_14_address0 sc_out sc_lv 5 signal 17 } 
	{ D_14_ce0 sc_out sc_logic 1 signal 17 } 
	{ D_14_we0 sc_out sc_logic 1 signal 17 } 
	{ D_14_d0 sc_out sc_lv 32 signal 17 } 
	{ D_14_q0 sc_in sc_lv 32 signal 17 } 
	{ D_13_address0 sc_out sc_lv 5 signal 18 } 
	{ D_13_ce0 sc_out sc_logic 1 signal 18 } 
	{ D_13_we0 sc_out sc_logic 1 signal 18 } 
	{ D_13_d0 sc_out sc_lv 32 signal 18 } 
	{ D_13_q0 sc_in sc_lv 32 signal 18 } 
	{ D_12_address0 sc_out sc_lv 5 signal 19 } 
	{ D_12_ce0 sc_out sc_logic 1 signal 19 } 
	{ D_12_we0 sc_out sc_logic 1 signal 19 } 
	{ D_12_d0 sc_out sc_lv 32 signal 19 } 
	{ D_12_q0 sc_in sc_lv 32 signal 19 } 
	{ D_11_address0 sc_out sc_lv 5 signal 20 } 
	{ D_11_ce0 sc_out sc_logic 1 signal 20 } 
	{ D_11_we0 sc_out sc_logic 1 signal 20 } 
	{ D_11_d0 sc_out sc_lv 32 signal 20 } 
	{ D_11_q0 sc_in sc_lv 32 signal 20 } 
	{ D_10_address0 sc_out sc_lv 5 signal 21 } 
	{ D_10_ce0 sc_out sc_logic 1 signal 21 } 
	{ D_10_we0 sc_out sc_logic 1 signal 21 } 
	{ D_10_d0 sc_out sc_lv 32 signal 21 } 
	{ D_10_q0 sc_in sc_lv 32 signal 21 } 
	{ D_9_address0 sc_out sc_lv 5 signal 22 } 
	{ D_9_ce0 sc_out sc_logic 1 signal 22 } 
	{ D_9_we0 sc_out sc_logic 1 signal 22 } 
	{ D_9_d0 sc_out sc_lv 32 signal 22 } 
	{ D_9_q0 sc_in sc_lv 32 signal 22 } 
	{ D_8_address0 sc_out sc_lv 5 signal 23 } 
	{ D_8_ce0 sc_out sc_logic 1 signal 23 } 
	{ D_8_we0 sc_out sc_logic 1 signal 23 } 
	{ D_8_d0 sc_out sc_lv 32 signal 23 } 
	{ D_8_q0 sc_in sc_lv 32 signal 23 } 
	{ D_7_address0 sc_out sc_lv 5 signal 24 } 
	{ D_7_ce0 sc_out sc_logic 1 signal 24 } 
	{ D_7_we0 sc_out sc_logic 1 signal 24 } 
	{ D_7_d0 sc_out sc_lv 32 signal 24 } 
	{ D_7_q0 sc_in sc_lv 32 signal 24 } 
	{ D_6_address0 sc_out sc_lv 5 signal 25 } 
	{ D_6_ce0 sc_out sc_logic 1 signal 25 } 
	{ D_6_we0 sc_out sc_logic 1 signal 25 } 
	{ D_6_d0 sc_out sc_lv 32 signal 25 } 
	{ D_6_q0 sc_in sc_lv 32 signal 25 } 
	{ D_5_address0 sc_out sc_lv 5 signal 26 } 
	{ D_5_ce0 sc_out sc_logic 1 signal 26 } 
	{ D_5_we0 sc_out sc_logic 1 signal 26 } 
	{ D_5_d0 sc_out sc_lv 32 signal 26 } 
	{ D_5_q0 sc_in sc_lv 32 signal 26 } 
	{ D_4_address0 sc_out sc_lv 5 signal 27 } 
	{ D_4_ce0 sc_out sc_logic 1 signal 27 } 
	{ D_4_we0 sc_out sc_logic 1 signal 27 } 
	{ D_4_d0 sc_out sc_lv 32 signal 27 } 
	{ D_4_q0 sc_in sc_lv 32 signal 27 } 
	{ D_3_address0 sc_out sc_lv 5 signal 28 } 
	{ D_3_ce0 sc_out sc_logic 1 signal 28 } 
	{ D_3_we0 sc_out sc_logic 1 signal 28 } 
	{ D_3_d0 sc_out sc_lv 32 signal 28 } 
	{ D_3_q0 sc_in sc_lv 32 signal 28 } 
	{ D_2_address0 sc_out sc_lv 5 signal 29 } 
	{ D_2_ce0 sc_out sc_logic 1 signal 29 } 
	{ D_2_we0 sc_out sc_logic 1 signal 29 } 
	{ D_2_d0 sc_out sc_lv 32 signal 29 } 
	{ D_2_q0 sc_in sc_lv 32 signal 29 } 
	{ D_1_address0 sc_out sc_lv 5 signal 30 } 
	{ D_1_ce0 sc_out sc_logic 1 signal 30 } 
	{ D_1_we0 sc_out sc_logic 1 signal 30 } 
	{ D_1_d0 sc_out sc_lv 32 signal 30 } 
	{ D_1_q0 sc_in sc_lv 32 signal 30 } 
	{ D_address0 sc_out sc_lv 5 signal 31 } 
	{ D_ce0 sc_out sc_logic 1 signal 31 } 
	{ D_we0 sc_out sc_logic 1 signal 31 } 
	{ D_d0 sc_out sc_lv 32 signal 31 } 
	{ D_q0 sc_in sc_lv 32 signal 31 } 
	{ sum_out sc_out sc_lv 32 signal 32 } 
	{ sum_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ grp_fu_335_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_335_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_335_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_335_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_358_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_358_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_358_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_358_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "D_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_31", "role": "address0" }} , 
 	{ "name": "D_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_31", "role": "ce0" }} , 
 	{ "name": "D_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_31", "role": "we0" }} , 
 	{ "name": "D_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_31", "role": "d0" }} , 
 	{ "name": "D_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_31", "role": "q0" }} , 
 	{ "name": "D_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_30", "role": "address0" }} , 
 	{ "name": "D_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_30", "role": "ce0" }} , 
 	{ "name": "D_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_30", "role": "we0" }} , 
 	{ "name": "D_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_30", "role": "d0" }} , 
 	{ "name": "D_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_30", "role": "q0" }} , 
 	{ "name": "D_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_29", "role": "address0" }} , 
 	{ "name": "D_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_29", "role": "ce0" }} , 
 	{ "name": "D_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_29", "role": "we0" }} , 
 	{ "name": "D_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_29", "role": "d0" }} , 
 	{ "name": "D_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_29", "role": "q0" }} , 
 	{ "name": "D_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_28", "role": "address0" }} , 
 	{ "name": "D_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_28", "role": "ce0" }} , 
 	{ "name": "D_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_28", "role": "we0" }} , 
 	{ "name": "D_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_28", "role": "d0" }} , 
 	{ "name": "D_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_28", "role": "q0" }} , 
 	{ "name": "D_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_27", "role": "address0" }} , 
 	{ "name": "D_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_27", "role": "ce0" }} , 
 	{ "name": "D_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_27", "role": "we0" }} , 
 	{ "name": "D_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_27", "role": "d0" }} , 
 	{ "name": "D_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_27", "role": "q0" }} , 
 	{ "name": "D_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_26", "role": "address0" }} , 
 	{ "name": "D_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_26", "role": "ce0" }} , 
 	{ "name": "D_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_26", "role": "we0" }} , 
 	{ "name": "D_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_26", "role": "d0" }} , 
 	{ "name": "D_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_26", "role": "q0" }} , 
 	{ "name": "D_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_25", "role": "address0" }} , 
 	{ "name": "D_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_25", "role": "ce0" }} , 
 	{ "name": "D_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_25", "role": "we0" }} , 
 	{ "name": "D_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_25", "role": "d0" }} , 
 	{ "name": "D_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_25", "role": "q0" }} , 
 	{ "name": "D_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_24", "role": "address0" }} , 
 	{ "name": "D_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_24", "role": "ce0" }} , 
 	{ "name": "D_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_24", "role": "we0" }} , 
 	{ "name": "D_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_24", "role": "d0" }} , 
 	{ "name": "D_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_24", "role": "q0" }} , 
 	{ "name": "D_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_23", "role": "address0" }} , 
 	{ "name": "D_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_23", "role": "ce0" }} , 
 	{ "name": "D_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_23", "role": "we0" }} , 
 	{ "name": "D_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_23", "role": "d0" }} , 
 	{ "name": "D_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_23", "role": "q0" }} , 
 	{ "name": "D_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_22", "role": "address0" }} , 
 	{ "name": "D_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_22", "role": "ce0" }} , 
 	{ "name": "D_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_22", "role": "we0" }} , 
 	{ "name": "D_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_22", "role": "d0" }} , 
 	{ "name": "D_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_22", "role": "q0" }} , 
 	{ "name": "D_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_21", "role": "address0" }} , 
 	{ "name": "D_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_21", "role": "ce0" }} , 
 	{ "name": "D_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_21", "role": "we0" }} , 
 	{ "name": "D_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_21", "role": "d0" }} , 
 	{ "name": "D_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_21", "role": "q0" }} , 
 	{ "name": "D_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_20", "role": "address0" }} , 
 	{ "name": "D_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_20", "role": "ce0" }} , 
 	{ "name": "D_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_20", "role": "we0" }} , 
 	{ "name": "D_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_20", "role": "d0" }} , 
 	{ "name": "D_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_20", "role": "q0" }} , 
 	{ "name": "D_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_19", "role": "address0" }} , 
 	{ "name": "D_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_19", "role": "ce0" }} , 
 	{ "name": "D_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_19", "role": "we0" }} , 
 	{ "name": "D_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_19", "role": "d0" }} , 
 	{ "name": "D_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_19", "role": "q0" }} , 
 	{ "name": "D_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_18", "role": "address0" }} , 
 	{ "name": "D_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_18", "role": "ce0" }} , 
 	{ "name": "D_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_18", "role": "we0" }} , 
 	{ "name": "D_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_18", "role": "d0" }} , 
 	{ "name": "D_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_18", "role": "q0" }} , 
 	{ "name": "D_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_17", "role": "address0" }} , 
 	{ "name": "D_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_17", "role": "ce0" }} , 
 	{ "name": "D_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_17", "role": "we0" }} , 
 	{ "name": "D_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_17", "role": "d0" }} , 
 	{ "name": "D_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_17", "role": "q0" }} , 
 	{ "name": "D_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_16", "role": "address0" }} , 
 	{ "name": "D_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_16", "role": "ce0" }} , 
 	{ "name": "D_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_16", "role": "we0" }} , 
 	{ "name": "D_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_16", "role": "d0" }} , 
 	{ "name": "D_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_16", "role": "q0" }} , 
 	{ "name": "D_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_15", "role": "address0" }} , 
 	{ "name": "D_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_15", "role": "ce0" }} , 
 	{ "name": "D_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_15", "role": "we0" }} , 
 	{ "name": "D_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_15", "role": "d0" }} , 
 	{ "name": "D_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_15", "role": "q0" }} , 
 	{ "name": "D_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_14", "role": "address0" }} , 
 	{ "name": "D_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_14", "role": "ce0" }} , 
 	{ "name": "D_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_14", "role": "we0" }} , 
 	{ "name": "D_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_14", "role": "d0" }} , 
 	{ "name": "D_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_14", "role": "q0" }} , 
 	{ "name": "D_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_13", "role": "address0" }} , 
 	{ "name": "D_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_13", "role": "ce0" }} , 
 	{ "name": "D_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_13", "role": "we0" }} , 
 	{ "name": "D_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_13", "role": "d0" }} , 
 	{ "name": "D_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_13", "role": "q0" }} , 
 	{ "name": "D_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_12", "role": "address0" }} , 
 	{ "name": "D_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_12", "role": "ce0" }} , 
 	{ "name": "D_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_12", "role": "we0" }} , 
 	{ "name": "D_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_12", "role": "d0" }} , 
 	{ "name": "D_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_12", "role": "q0" }} , 
 	{ "name": "D_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_11", "role": "address0" }} , 
 	{ "name": "D_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_11", "role": "ce0" }} , 
 	{ "name": "D_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_11", "role": "we0" }} , 
 	{ "name": "D_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_11", "role": "d0" }} , 
 	{ "name": "D_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_11", "role": "q0" }} , 
 	{ "name": "D_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_10", "role": "address0" }} , 
 	{ "name": "D_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_10", "role": "ce0" }} , 
 	{ "name": "D_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_10", "role": "we0" }} , 
 	{ "name": "D_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_10", "role": "d0" }} , 
 	{ "name": "D_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_10", "role": "q0" }} , 
 	{ "name": "D_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_9", "role": "address0" }} , 
 	{ "name": "D_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_9", "role": "ce0" }} , 
 	{ "name": "D_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_9", "role": "we0" }} , 
 	{ "name": "D_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_9", "role": "d0" }} , 
 	{ "name": "D_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_9", "role": "q0" }} , 
 	{ "name": "D_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_8", "role": "address0" }} , 
 	{ "name": "D_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_8", "role": "ce0" }} , 
 	{ "name": "D_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_8", "role": "we0" }} , 
 	{ "name": "D_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_8", "role": "d0" }} , 
 	{ "name": "D_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_8", "role": "q0" }} , 
 	{ "name": "D_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_7", "role": "address0" }} , 
 	{ "name": "D_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_7", "role": "ce0" }} , 
 	{ "name": "D_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_7", "role": "we0" }} , 
 	{ "name": "D_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_7", "role": "d0" }} , 
 	{ "name": "D_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_7", "role": "q0" }} , 
 	{ "name": "D_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_6", "role": "address0" }} , 
 	{ "name": "D_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_6", "role": "ce0" }} , 
 	{ "name": "D_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_6", "role": "we0" }} , 
 	{ "name": "D_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_6", "role": "d0" }} , 
 	{ "name": "D_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_6", "role": "q0" }} , 
 	{ "name": "D_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_5", "role": "address0" }} , 
 	{ "name": "D_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_5", "role": "ce0" }} , 
 	{ "name": "D_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_5", "role": "we0" }} , 
 	{ "name": "D_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_5", "role": "d0" }} , 
 	{ "name": "D_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_5", "role": "q0" }} , 
 	{ "name": "D_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_4", "role": "address0" }} , 
 	{ "name": "D_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_4", "role": "ce0" }} , 
 	{ "name": "D_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_4", "role": "we0" }} , 
 	{ "name": "D_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_4", "role": "d0" }} , 
 	{ "name": "D_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_4", "role": "q0" }} , 
 	{ "name": "D_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_3", "role": "address0" }} , 
 	{ "name": "D_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_3", "role": "ce0" }} , 
 	{ "name": "D_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_3", "role": "we0" }} , 
 	{ "name": "D_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_3", "role": "d0" }} , 
 	{ "name": "D_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_3", "role": "q0" }} , 
 	{ "name": "D_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_2", "role": "address0" }} , 
 	{ "name": "D_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_2", "role": "ce0" }} , 
 	{ "name": "D_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_2", "role": "we0" }} , 
 	{ "name": "D_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_2", "role": "d0" }} , 
 	{ "name": "D_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_2", "role": "q0" }} , 
 	{ "name": "D_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D_1", "role": "address0" }} , 
 	{ "name": "D_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "ce0" }} , 
 	{ "name": "D_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "we0" }} , 
 	{ "name": "D_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_1", "role": "d0" }} , 
 	{ "name": "D_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_1", "role": "q0" }} , 
 	{ "name": "D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "D", "role": "address0" }} , 
 	{ "name": "D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce0" }} , 
 	{ "name": "D_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "we0" }} , 
 	{ "name": "D_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D", "role": "d0" }} , 
 	{ "name": "D_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D", "role": "q0" }} , 
 	{ "name": "sum_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_out", "role": "default" }} , 
 	{ "name": "sum_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_335_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_335_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_335_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_335_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_335_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_335_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_335_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_335_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_358_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_358_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_358_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_358_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_358_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U39", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U40", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U41", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U42", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U43", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U44", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U45", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U46", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U47", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U48", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U49", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U50", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U51", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U52", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U53", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U54", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U55", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U56", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U57", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U58", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U59", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U60", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U61", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U62", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U63", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U64", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U65", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U66", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U67", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U68", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U69", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U70", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U71", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_no_dsp_1_U72", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U75", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U76", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U77", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U78", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U79", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U80", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U81", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U82", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U83", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U84", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U85", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U86", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U87", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U88", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U89", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U90", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U91", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U92", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U93", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U94", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U95", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U96", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U97", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U98", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U99", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U100", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U101", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U102", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U103", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U104", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U105", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U106", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U107", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U108", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U109", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U110", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U111", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U112", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U113", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U114", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U115", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U116", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U117", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "1062", "Max" : "1062"}
	, {"Name" : "Interval", "Min" : "1062", "Max" : "1062"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	D_31 { ap_memory {  { D_31_address0 mem_address 1 5 }  { D_31_ce0 mem_ce 1 1 }  { D_31_we0 mem_we 1 1 }  { D_31_d0 mem_din 1 32 }  { D_31_q0 mem_dout 0 32 } } }
	D_30 { ap_memory {  { D_30_address0 mem_address 1 5 }  { D_30_ce0 mem_ce 1 1 }  { D_30_we0 mem_we 1 1 }  { D_30_d0 mem_din 1 32 }  { D_30_q0 mem_dout 0 32 } } }
	D_29 { ap_memory {  { D_29_address0 mem_address 1 5 }  { D_29_ce0 mem_ce 1 1 }  { D_29_we0 mem_we 1 1 }  { D_29_d0 mem_din 1 32 }  { D_29_q0 mem_dout 0 32 } } }
	D_28 { ap_memory {  { D_28_address0 mem_address 1 5 }  { D_28_ce0 mem_ce 1 1 }  { D_28_we0 mem_we 1 1 }  { D_28_d0 mem_din 1 32 }  { D_28_q0 mem_dout 0 32 } } }
	D_27 { ap_memory {  { D_27_address0 mem_address 1 5 }  { D_27_ce0 mem_ce 1 1 }  { D_27_we0 mem_we 1 1 }  { D_27_d0 mem_din 1 32 }  { D_27_q0 mem_dout 0 32 } } }
	D_26 { ap_memory {  { D_26_address0 mem_address 1 5 }  { D_26_ce0 mem_ce 1 1 }  { D_26_we0 mem_we 1 1 }  { D_26_d0 mem_din 1 32 }  { D_26_q0 mem_dout 0 32 } } }
	D_25 { ap_memory {  { D_25_address0 mem_address 1 5 }  { D_25_ce0 mem_ce 1 1 }  { D_25_we0 mem_we 1 1 }  { D_25_d0 mem_din 1 32 }  { D_25_q0 mem_dout 0 32 } } }
	D_24 { ap_memory {  { D_24_address0 mem_address 1 5 }  { D_24_ce0 mem_ce 1 1 }  { D_24_we0 mem_we 1 1 }  { D_24_d0 mem_din 1 32 }  { D_24_q0 mem_dout 0 32 } } }
	D_23 { ap_memory {  { D_23_address0 mem_address 1 5 }  { D_23_ce0 mem_ce 1 1 }  { D_23_we0 mem_we 1 1 }  { D_23_d0 mem_din 1 32 }  { D_23_q0 mem_dout 0 32 } } }
	D_22 { ap_memory {  { D_22_address0 mem_address 1 5 }  { D_22_ce0 mem_ce 1 1 }  { D_22_we0 mem_we 1 1 }  { D_22_d0 mem_din 1 32 }  { D_22_q0 mem_dout 0 32 } } }
	D_21 { ap_memory {  { D_21_address0 mem_address 1 5 }  { D_21_ce0 mem_ce 1 1 }  { D_21_we0 mem_we 1 1 }  { D_21_d0 mem_din 1 32 }  { D_21_q0 mem_dout 0 32 } } }
	D_20 { ap_memory {  { D_20_address0 mem_address 1 5 }  { D_20_ce0 mem_ce 1 1 }  { D_20_we0 mem_we 1 1 }  { D_20_d0 mem_din 1 32 }  { D_20_q0 mem_dout 0 32 } } }
	D_19 { ap_memory {  { D_19_address0 mem_address 1 5 }  { D_19_ce0 mem_ce 1 1 }  { D_19_we0 mem_we 1 1 }  { D_19_d0 mem_din 1 32 }  { D_19_q0 mem_dout 0 32 } } }
	D_18 { ap_memory {  { D_18_address0 mem_address 1 5 }  { D_18_ce0 mem_ce 1 1 }  { D_18_we0 mem_we 1 1 }  { D_18_d0 mem_din 1 32 }  { D_18_q0 mem_dout 0 32 } } }
	D_17 { ap_memory {  { D_17_address0 mem_address 1 5 }  { D_17_ce0 mem_ce 1 1 }  { D_17_we0 mem_we 1 1 }  { D_17_d0 mem_din 1 32 }  { D_17_q0 mem_dout 0 32 } } }
	D_16 { ap_memory {  { D_16_address0 mem_address 1 5 }  { D_16_ce0 mem_ce 1 1 }  { D_16_we0 mem_we 1 1 }  { D_16_d0 mem_din 1 32 }  { D_16_q0 mem_dout 0 32 } } }
	D_15 { ap_memory {  { D_15_address0 mem_address 1 5 }  { D_15_ce0 mem_ce 1 1 }  { D_15_we0 mem_we 1 1 }  { D_15_d0 mem_din 1 32 }  { D_15_q0 mem_dout 0 32 } } }
	D_14 { ap_memory {  { D_14_address0 mem_address 1 5 }  { D_14_ce0 mem_ce 1 1 }  { D_14_we0 mem_we 1 1 }  { D_14_d0 mem_din 1 32 }  { D_14_q0 mem_dout 0 32 } } }
	D_13 { ap_memory {  { D_13_address0 mem_address 1 5 }  { D_13_ce0 mem_ce 1 1 }  { D_13_we0 mem_we 1 1 }  { D_13_d0 mem_din 1 32 }  { D_13_q0 mem_dout 0 32 } } }
	D_12 { ap_memory {  { D_12_address0 mem_address 1 5 }  { D_12_ce0 mem_ce 1 1 }  { D_12_we0 mem_we 1 1 }  { D_12_d0 mem_din 1 32 }  { D_12_q0 mem_dout 0 32 } } }
	D_11 { ap_memory {  { D_11_address0 mem_address 1 5 }  { D_11_ce0 mem_ce 1 1 }  { D_11_we0 mem_we 1 1 }  { D_11_d0 mem_din 1 32 }  { D_11_q0 mem_dout 0 32 } } }
	D_10 { ap_memory {  { D_10_address0 mem_address 1 5 }  { D_10_ce0 mem_ce 1 1 }  { D_10_we0 mem_we 1 1 }  { D_10_d0 mem_din 1 32 }  { D_10_q0 mem_dout 0 32 } } }
	D_9 { ap_memory {  { D_9_address0 mem_address 1 5 }  { D_9_ce0 mem_ce 1 1 }  { D_9_we0 mem_we 1 1 }  { D_9_d0 mem_din 1 32 }  { D_9_q0 mem_dout 0 32 } } }
	D_8 { ap_memory {  { D_8_address0 mem_address 1 5 }  { D_8_ce0 mem_ce 1 1 }  { D_8_we0 mem_we 1 1 }  { D_8_d0 mem_din 1 32 }  { D_8_q0 mem_dout 0 32 } } }
	D_7 { ap_memory {  { D_7_address0 mem_address 1 5 }  { D_7_ce0 mem_ce 1 1 }  { D_7_we0 mem_we 1 1 }  { D_7_d0 mem_din 1 32 }  { D_7_q0 mem_dout 0 32 } } }
	D_6 { ap_memory {  { D_6_address0 mem_address 1 5 }  { D_6_ce0 mem_ce 1 1 }  { D_6_we0 mem_we 1 1 }  { D_6_d0 mem_din 1 32 }  { D_6_q0 mem_dout 0 32 } } }
	D_5 { ap_memory {  { D_5_address0 mem_address 1 5 }  { D_5_ce0 mem_ce 1 1 }  { D_5_we0 mem_we 1 1 }  { D_5_d0 mem_din 1 32 }  { D_5_q0 mem_dout 0 32 } } }
	D_4 { ap_memory {  { D_4_address0 mem_address 1 5 }  { D_4_ce0 mem_ce 1 1 }  { D_4_we0 mem_we 1 1 }  { D_4_d0 mem_din 1 32 }  { D_4_q0 mem_dout 0 32 } } }
	D_3 { ap_memory {  { D_3_address0 mem_address 1 5 }  { D_3_ce0 mem_ce 1 1 }  { D_3_we0 mem_we 1 1 }  { D_3_d0 mem_din 1 32 }  { D_3_q0 mem_dout 0 32 } } }
	D_2 { ap_memory {  { D_2_address0 mem_address 1 5 }  { D_2_ce0 mem_ce 1 1 }  { D_2_we0 mem_we 1 1 }  { D_2_d0 mem_din 1 32 }  { D_2_q0 mem_dout 0 32 } } }
	D_1 { ap_memory {  { D_1_address0 mem_address 1 5 }  { D_1_ce0 mem_ce 1 1 }  { D_1_we0 mem_we 1 1 }  { D_1_d0 mem_din 1 32 }  { D_1_q0 mem_dout 0 32 } } }
	D { ap_memory {  { D_address0 mem_address 1 5 }  { D_ce0 mem_ce 1 1 }  { D_we0 mem_we 1 1 }  { D_d0 mem_din 1 32 }  { D_q0 mem_dout 0 32 } } }
	sum_out { ap_vld {  { sum_out out_data 1 32 }  { sum_out_ap_vld out_vld 1 1 } } }
}
