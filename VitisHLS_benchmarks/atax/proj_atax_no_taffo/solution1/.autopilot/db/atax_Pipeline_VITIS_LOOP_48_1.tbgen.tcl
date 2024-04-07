set moduleName atax_Pipeline_VITIS_LOOP_48_1
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
set C_modelName {atax_Pipeline_VITIS_LOOP_48_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bitcast_ln60_15 float 32 regular  }
	{ bitcast_ln60_14 float 32 regular  }
	{ bitcast_ln60_13 float 32 regular  }
	{ bitcast_ln60_12 float 32 regular  }
	{ bitcast_ln60_11 float 32 regular  }
	{ bitcast_ln60_10 float 32 regular  }
	{ bitcast_ln60_9 float 32 regular  }
	{ bitcast_ln60_8 float 32 regular  }
	{ bitcast_ln60_7 float 32 regular  }
	{ bitcast_ln60_6 float 32 regular  }
	{ bitcast_ln60_5 float 32 regular  }
	{ bitcast_ln60_4 float 32 regular  }
	{ bitcast_ln60_3 float 32 regular  }
	{ bitcast_ln60_2 float 32 regular  }
	{ bitcast_ln60_1 float 32 regular  }
	{ bitcast_ln60 float 32 regular  }
	{ gmem int 32 regular {axi_master 0}  }
	{ sext_ln48 int 62 regular  }
	{ empty_17 float 32 regular  }
	{ empty_18 float 32 regular  }
	{ empty_19 float 32 regular  }
	{ empty_20 float 32 regular  }
	{ empty_21 float 32 regular  }
	{ empty_22 float 32 regular  }
	{ empty_23 float 32 regular  }
	{ empty_24 float 32 regular  }
	{ empty_25 float 32 regular  }
	{ empty_26 float 32 regular  }
	{ empty_27 float 32 regular  }
	{ empty_28 float 32 regular  }
	{ empty_29 float 32 regular  }
	{ empty_30 float 32 regular  }
	{ empty_31 float 32 regular  }
	{ empty float 32 regular  }
	{ p_out float 32 regular {pointer 1}  }
	{ p_out1 float 32 regular {pointer 1}  }
	{ p_out2 float 32 regular {pointer 1}  }
	{ p_out3 float 32 regular {pointer 1}  }
	{ p_out4 float 32 regular {pointer 1}  }
	{ p_out5 float 32 regular {pointer 1}  }
	{ p_out6 float 32 regular {pointer 1}  }
	{ p_out7 float 32 regular {pointer 1}  }
	{ p_out8 float 32 regular {pointer 1}  }
	{ p_out9 float 32 regular {pointer 1}  }
	{ p_out10 float 32 regular {pointer 1}  }
	{ p_out11 float 32 regular {pointer 1}  }
	{ p_out12 float 32 regular {pointer 1}  }
	{ p_out13 float 32 regular {pointer 1}  }
	{ p_out14 float 32 regular {pointer 1}  }
	{ add195_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bitcast_ln60_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln60", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"},{"cName": "x","offset": { "type": "dynamic","port_name": "x","bundle": "control"},"direction": "READONLY"},{"cName": "y","offset": { "type": "dynamic","port_name": "y","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sext_ln48", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "empty_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out6", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out7", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out8", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out9", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out10", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out11", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out12", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out13", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out14", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add195_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 16 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 16 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 16 } 
	{ bitcast_ln60_15 sc_in sc_lv 32 signal 0 } 
	{ bitcast_ln60_14 sc_in sc_lv 32 signal 1 } 
	{ bitcast_ln60_13 sc_in sc_lv 32 signal 2 } 
	{ bitcast_ln60_12 sc_in sc_lv 32 signal 3 } 
	{ bitcast_ln60_11 sc_in sc_lv 32 signal 4 } 
	{ bitcast_ln60_10 sc_in sc_lv 32 signal 5 } 
	{ bitcast_ln60_9 sc_in sc_lv 32 signal 6 } 
	{ bitcast_ln60_8 sc_in sc_lv 32 signal 7 } 
	{ bitcast_ln60_7 sc_in sc_lv 32 signal 8 } 
	{ bitcast_ln60_6 sc_in sc_lv 32 signal 9 } 
	{ bitcast_ln60_5 sc_in sc_lv 32 signal 10 } 
	{ bitcast_ln60_4 sc_in sc_lv 32 signal 11 } 
	{ bitcast_ln60_3 sc_in sc_lv 32 signal 12 } 
	{ bitcast_ln60_2 sc_in sc_lv 32 signal 13 } 
	{ bitcast_ln60_1 sc_in sc_lv 32 signal 14 } 
	{ bitcast_ln60 sc_in sc_lv 32 signal 15 } 
	{ sext_ln48 sc_in sc_lv 62 signal 17 } 
	{ empty_17 sc_in sc_lv 32 signal 18 } 
	{ empty_18 sc_in sc_lv 32 signal 19 } 
	{ empty_19 sc_in sc_lv 32 signal 20 } 
	{ empty_20 sc_in sc_lv 32 signal 21 } 
	{ empty_21 sc_in sc_lv 32 signal 22 } 
	{ empty_22 sc_in sc_lv 32 signal 23 } 
	{ empty_23 sc_in sc_lv 32 signal 24 } 
	{ empty_24 sc_in sc_lv 32 signal 25 } 
	{ empty_25 sc_in sc_lv 32 signal 26 } 
	{ empty_26 sc_in sc_lv 32 signal 27 } 
	{ empty_27 sc_in sc_lv 32 signal 28 } 
	{ empty_28 sc_in sc_lv 32 signal 29 } 
	{ empty_29 sc_in sc_lv 32 signal 30 } 
	{ empty_30 sc_in sc_lv 32 signal 31 } 
	{ empty_31 sc_in sc_lv 32 signal 32 } 
	{ empty sc_in sc_lv 32 signal 33 } 
	{ p_out sc_out sc_lv 32 signal 34 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ p_out1 sc_out sc_lv 32 signal 35 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ p_out2 sc_out sc_lv 32 signal 36 } 
	{ p_out2_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ p_out3 sc_out sc_lv 32 signal 37 } 
	{ p_out3_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ p_out4 sc_out sc_lv 32 signal 38 } 
	{ p_out4_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ p_out5 sc_out sc_lv 32 signal 39 } 
	{ p_out5_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ p_out6 sc_out sc_lv 32 signal 40 } 
	{ p_out6_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ p_out7 sc_out sc_lv 32 signal 41 } 
	{ p_out7_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ p_out8 sc_out sc_lv 32 signal 42 } 
	{ p_out8_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ p_out9 sc_out sc_lv 32 signal 43 } 
	{ p_out9_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ p_out10 sc_out sc_lv 32 signal 44 } 
	{ p_out10_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ p_out11 sc_out sc_lv 32 signal 45 } 
	{ p_out11_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ p_out12 sc_out sc_lv 32 signal 46 } 
	{ p_out12_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ p_out13 sc_out sc_lv 32 signal 47 } 
	{ p_out13_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ p_out14 sc_out sc_lv 32 signal 48 } 
	{ p_out14_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ add195_out sc_out sc_lv 32 signal 49 } 
	{ add195_out_ap_vld sc_out sc_logic 1 outvld 49 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "bitcast_ln60_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_15", "role": "default" }} , 
 	{ "name": "bitcast_ln60_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_14", "role": "default" }} , 
 	{ "name": "bitcast_ln60_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_13", "role": "default" }} , 
 	{ "name": "bitcast_ln60_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_12", "role": "default" }} , 
 	{ "name": "bitcast_ln60_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_11", "role": "default" }} , 
 	{ "name": "bitcast_ln60_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_10", "role": "default" }} , 
 	{ "name": "bitcast_ln60_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_9", "role": "default" }} , 
 	{ "name": "bitcast_ln60_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_8", "role": "default" }} , 
 	{ "name": "bitcast_ln60_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_7", "role": "default" }} , 
 	{ "name": "bitcast_ln60_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_6", "role": "default" }} , 
 	{ "name": "bitcast_ln60_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_5", "role": "default" }} , 
 	{ "name": "bitcast_ln60_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_4", "role": "default" }} , 
 	{ "name": "bitcast_ln60_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_3", "role": "default" }} , 
 	{ "name": "bitcast_ln60_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_2", "role": "default" }} , 
 	{ "name": "bitcast_ln60_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60_1", "role": "default" }} , 
 	{ "name": "bitcast_ln60", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln60", "role": "default" }} , 
 	{ "name": "sext_ln48", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln48", "role": "default" }} , 
 	{ "name": "empty_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_17", "role": "default" }} , 
 	{ "name": "empty_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_18", "role": "default" }} , 
 	{ "name": "empty_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_19", "role": "default" }} , 
 	{ "name": "empty_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_20", "role": "default" }} , 
 	{ "name": "empty_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_21", "role": "default" }} , 
 	{ "name": "empty_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_22", "role": "default" }} , 
 	{ "name": "empty_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_23", "role": "default" }} , 
 	{ "name": "empty_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_24", "role": "default" }} , 
 	{ "name": "empty_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_25", "role": "default" }} , 
 	{ "name": "empty_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_26", "role": "default" }} , 
 	{ "name": "empty_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_27", "role": "default" }} , 
 	{ "name": "empty_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_28", "role": "default" }} , 
 	{ "name": "empty_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_29", "role": "default" }} , 
 	{ "name": "empty_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_30", "role": "default" }} , 
 	{ "name": "empty_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_31", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "p_out2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out2", "role": "default" }} , 
 	{ "name": "p_out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "ap_vld" }} , 
 	{ "name": "p_out3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out3", "role": "default" }} , 
 	{ "name": "p_out3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out3", "role": "ap_vld" }} , 
 	{ "name": "p_out4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out4", "role": "default" }} , 
 	{ "name": "p_out4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out4", "role": "ap_vld" }} , 
 	{ "name": "p_out5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out5", "role": "default" }} , 
 	{ "name": "p_out5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out5", "role": "ap_vld" }} , 
 	{ "name": "p_out6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out6", "role": "default" }} , 
 	{ "name": "p_out6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out6", "role": "ap_vld" }} , 
 	{ "name": "p_out7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out7", "role": "default" }} , 
 	{ "name": "p_out7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out7", "role": "ap_vld" }} , 
 	{ "name": "p_out8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out8", "role": "default" }} , 
 	{ "name": "p_out8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out8", "role": "ap_vld" }} , 
 	{ "name": "p_out9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out9", "role": "default" }} , 
 	{ "name": "p_out9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out9", "role": "ap_vld" }} , 
 	{ "name": "p_out10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out10", "role": "default" }} , 
 	{ "name": "p_out10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out10", "role": "ap_vld" }} , 
 	{ "name": "p_out11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out11", "role": "default" }} , 
 	{ "name": "p_out11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out11", "role": "ap_vld" }} , 
 	{ "name": "p_out12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out12", "role": "default" }} , 
 	{ "name": "p_out12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out12", "role": "ap_vld" }} , 
 	{ "name": "p_out13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out13", "role": "default" }} , 
 	{ "name": "p_out13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out13", "role": "ap_vld" }} , 
 	{ "name": "p_out14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out14", "role": "default" }} , 
 	{ "name": "p_out14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out14", "role": "ap_vld" }} , 
 	{ "name": "add195_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add195_out", "role": "default" }} , 
 	{ "name": "add195_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add195_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "atax_Pipeline_VITIS_LOOP_48_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "296", "EstimateLatencyMax" : "296",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitcast_ln60_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln60", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add195_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	atax_Pipeline_VITIS_LOOP_48_1 {
		bitcast_ln60_15 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_14 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_13 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_12 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_11 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_10 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_9 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_8 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_7 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_6 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_5 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_4 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_3 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_2 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60_1 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln60 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 16 FirstWrite -1}
		sext_ln48 {Type I LastRead 0 FirstWrite -1}
		empty_17 {Type I LastRead 0 FirstWrite -1}
		empty_18 {Type I LastRead 0 FirstWrite -1}
		empty_19 {Type I LastRead 0 FirstWrite -1}
		empty_20 {Type I LastRead 0 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 38}
		p_out1 {Type O LastRead -1 FirstWrite 38}
		p_out2 {Type O LastRead -1 FirstWrite 38}
		p_out3 {Type O LastRead -1 FirstWrite 38}
		p_out4 {Type O LastRead -1 FirstWrite 38}
		p_out5 {Type O LastRead -1 FirstWrite 38}
		p_out6 {Type O LastRead -1 FirstWrite 38}
		p_out7 {Type O LastRead -1 FirstWrite 38}
		p_out8 {Type O LastRead -1 FirstWrite 38}
		p_out9 {Type O LastRead -1 FirstWrite 38}
		p_out10 {Type O LastRead -1 FirstWrite 38}
		p_out11 {Type O LastRead -1 FirstWrite 38}
		p_out12 {Type O LastRead -1 FirstWrite 38}
		p_out13 {Type O LastRead -1 FirstWrite 38}
		p_out14 {Type O LastRead -1 FirstWrite 38}
		add195_out {Type O LastRead -1 FirstWrite 38}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "296", "Max" : "296"}
	, {"Name" : "Interval", "Min" : "296", "Max" : "296"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bitcast_ln60_15 { ap_none {  { bitcast_ln60_15 in_data 0 32 } } }
	bitcast_ln60_14 { ap_none {  { bitcast_ln60_14 in_data 0 32 } } }
	bitcast_ln60_13 { ap_none {  { bitcast_ln60_13 in_data 0 32 } } }
	bitcast_ln60_12 { ap_none {  { bitcast_ln60_12 in_data 0 32 } } }
	bitcast_ln60_11 { ap_none {  { bitcast_ln60_11 in_data 0 32 } } }
	bitcast_ln60_10 { ap_none {  { bitcast_ln60_10 in_data 0 32 } } }
	bitcast_ln60_9 { ap_none {  { bitcast_ln60_9 in_data 0 32 } } }
	bitcast_ln60_8 { ap_none {  { bitcast_ln60_8 in_data 0 32 } } }
	bitcast_ln60_7 { ap_none {  { bitcast_ln60_7 in_data 0 32 } } }
	bitcast_ln60_6 { ap_none {  { bitcast_ln60_6 in_data 0 32 } } }
	bitcast_ln60_5 { ap_none {  { bitcast_ln60_5 in_data 0 32 } } }
	bitcast_ln60_4 { ap_none {  { bitcast_ln60_4 in_data 0 32 } } }
	bitcast_ln60_3 { ap_none {  { bitcast_ln60_3 in_data 0 32 } } }
	bitcast_ln60_2 { ap_none {  { bitcast_ln60_2 in_data 0 32 } } }
	bitcast_ln60_1 { ap_none {  { bitcast_ln60_1 in_data 0 32 } } }
	bitcast_ln60 { ap_none {  { bitcast_ln60 in_data 0 32 } } }
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	sext_ln48 { ap_none {  { sext_ln48 in_data 0 62 } } }
	empty_17 { ap_none {  { empty_17 in_data 0 32 } } }
	empty_18 { ap_none {  { empty_18 in_data 0 32 } } }
	empty_19 { ap_none {  { empty_19 in_data 0 32 } } }
	empty_20 { ap_none {  { empty_20 in_data 0 32 } } }
	empty_21 { ap_none {  { empty_21 in_data 0 32 } } }
	empty_22 { ap_none {  { empty_22 in_data 0 32 } } }
	empty_23 { ap_none {  { empty_23 in_data 0 32 } } }
	empty_24 { ap_none {  { empty_24 in_data 0 32 } } }
	empty_25 { ap_none {  { empty_25 in_data 0 32 } } }
	empty_26 { ap_none {  { empty_26 in_data 0 32 } } }
	empty_27 { ap_none {  { empty_27 in_data 0 32 } } }
	empty_28 { ap_none {  { empty_28 in_data 0 32 } } }
	empty_29 { ap_none {  { empty_29 in_data 0 32 } } }
	empty_30 { ap_none {  { empty_30 in_data 0 32 } } }
	empty_31 { ap_none {  { empty_31 in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 32 } } }
	p_out { ap_vld {  { p_out out_data 1 32 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 32 }  { p_out1_ap_vld out_vld 1 1 } } }
	p_out2 { ap_vld {  { p_out2 out_data 1 32 }  { p_out2_ap_vld out_vld 1 1 } } }
	p_out3 { ap_vld {  { p_out3 out_data 1 32 }  { p_out3_ap_vld out_vld 1 1 } } }
	p_out4 { ap_vld {  { p_out4 out_data 1 32 }  { p_out4_ap_vld out_vld 1 1 } } }
	p_out5 { ap_vld {  { p_out5 out_data 1 32 }  { p_out5_ap_vld out_vld 1 1 } } }
	p_out6 { ap_vld {  { p_out6 out_data 1 32 }  { p_out6_ap_vld out_vld 1 1 } } }
	p_out7 { ap_vld {  { p_out7 out_data 1 32 }  { p_out7_ap_vld out_vld 1 1 } } }
	p_out8 { ap_vld {  { p_out8 out_data 1 32 }  { p_out8_ap_vld out_vld 1 1 } } }
	p_out9 { ap_vld {  { p_out9 out_data 1 32 }  { p_out9_ap_vld out_vld 1 1 } } }
	p_out10 { ap_vld {  { p_out10 out_data 1 32 }  { p_out10_ap_vld out_vld 1 1 } } }
	p_out11 { ap_vld {  { p_out11 out_data 1 32 }  { p_out11_ap_vld out_vld 1 1 } } }
	p_out12 { ap_vld {  { p_out12 out_data 1 32 }  { p_out12_ap_vld out_vld 1 1 } } }
	p_out13 { ap_vld {  { p_out13 out_data 1 32 }  { p_out13_ap_vld out_vld 1 1 } } }
	p_out14 { ap_vld {  { p_out14 out_data 1 32 }  { p_out14_ap_vld out_vld 1 1 } } }
	add195_out { ap_vld {  { add195_out out_data 1 32 }  { add195_out_ap_vld out_vld 1 1 } } }
}
