set moduleName doitgen
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
set C_modelName {doitgen}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_0 int 32 regular {axi_master 2}  }
	{ gmem int 32 regular {axi_master 1}  }
	{ A_0 int 64 regular {axi_slave 0}  }
	{ A_1 int 32 unused {array 1024 { } 0 1 }  }
	{ A_2 int 32 unused {array 1024 { } 0 1 }  }
	{ A_3 int 32 unused {array 1024 { } 0 1 }  }
	{ C_0 int 64 regular {axi_slave 0}  }
	{ C_1 int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ C_2 int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ C_3 int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "A_0","offset": { "type": "dynamic","port_name": "A_0","bundle": "control"},"direction": "READWRITE"},{"cName": "C_0","offset": { "type": "dynamic","port_name": "C_0","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "sum","offset": { "type": "dynamic","port_name": "sum","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "A_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "C_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "C_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} ]}
# RTL Port declarations: 
set portNum 161
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 1 } 
	{ A_1_address0 sc_out sc_lv 10 signal 3 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_1_we0 sc_out sc_logic 1 signal 3 } 
	{ A_1_d0 sc_out sc_lv 32 signal 3 } 
	{ A_1_q0 sc_in sc_lv 32 signal 3 } 
	{ A_1_address1 sc_out sc_lv 10 signal 3 } 
	{ A_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ A_1_we1 sc_out sc_logic 1 signal 3 } 
	{ A_1_d1 sc_out sc_lv 32 signal 3 } 
	{ A_1_q1 sc_in sc_lv 32 signal 3 } 
	{ A_2_address0 sc_out sc_lv 10 signal 4 } 
	{ A_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ A_2_we0 sc_out sc_logic 1 signal 4 } 
	{ A_2_d0 sc_out sc_lv 32 signal 4 } 
	{ A_2_q0 sc_in sc_lv 32 signal 4 } 
	{ A_2_address1 sc_out sc_lv 10 signal 4 } 
	{ A_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ A_2_we1 sc_out sc_logic 1 signal 4 } 
	{ A_2_d1 sc_out sc_lv 32 signal 4 } 
	{ A_2_q1 sc_in sc_lv 32 signal 4 } 
	{ A_3_address0 sc_out sc_lv 10 signal 5 } 
	{ A_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ A_3_we0 sc_out sc_logic 1 signal 5 } 
	{ A_3_d0 sc_out sc_lv 32 signal 5 } 
	{ A_3_q0 sc_in sc_lv 32 signal 5 } 
	{ A_3_address1 sc_out sc_lv 10 signal 5 } 
	{ A_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ A_3_we1 sc_out sc_logic 1 signal 5 } 
	{ A_3_d1 sc_out sc_lv 32 signal 5 } 
	{ A_3_q1 sc_in sc_lv 32 signal 5 } 
	{ C_1_address0 sc_out sc_lv 6 signal 7 } 
	{ C_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ C_1_q0 sc_in sc_lv 32 signal 7 } 
	{ C_1_address1 sc_out sc_lv 6 signal 7 } 
	{ C_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ C_1_q1 sc_in sc_lv 32 signal 7 } 
	{ C_2_address0 sc_out sc_lv 6 signal 8 } 
	{ C_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ C_2_q0 sc_in sc_lv 32 signal 8 } 
	{ C_2_address1 sc_out sc_lv 6 signal 8 } 
	{ C_2_ce1 sc_out sc_logic 1 signal 8 } 
	{ C_2_q1 sc_in sc_lv 32 signal 8 } 
	{ C_3_address0 sc_out sc_lv 6 signal 9 } 
	{ C_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ C_3_q0 sc_in sc_lv 32 signal 9 } 
	{ C_3_address1 sc_out sc_lv 6 signal 9 } 
	{ C_3_ce1 sc_out sc_logic 1 signal 9 } 
	{ C_3_q1 sc_in sc_lv 32 signal 9 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"A_0","role":"data","value":"16"},{"name":"C_0","role":"data","value":"28"},{"name":"sum","role":"data","value":"40"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "we0" }} , 
 	{ "name": "A_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "d0" }} , 
 	{ "name": "A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "q0" }} , 
 	{ "name": "A_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_1", "role": "address1" }} , 
 	{ "name": "A_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce1" }} , 
 	{ "name": "A_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "we1" }} , 
 	{ "name": "A_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "d1" }} , 
 	{ "name": "A_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "q1" }} , 
 	{ "name": "A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_2", "role": "address0" }} , 
 	{ "name": "A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce0" }} , 
 	{ "name": "A_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "we0" }} , 
 	{ "name": "A_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "d0" }} , 
 	{ "name": "A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "q0" }} , 
 	{ "name": "A_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_2", "role": "address1" }} , 
 	{ "name": "A_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce1" }} , 
 	{ "name": "A_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "we1" }} , 
 	{ "name": "A_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "d1" }} , 
 	{ "name": "A_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "q1" }} , 
 	{ "name": "A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_3", "role": "address0" }} , 
 	{ "name": "A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce0" }} , 
 	{ "name": "A_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "we0" }} , 
 	{ "name": "A_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "d0" }} , 
 	{ "name": "A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "q0" }} , 
 	{ "name": "A_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_3", "role": "address1" }} , 
 	{ "name": "A_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce1" }} , 
 	{ "name": "A_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "we1" }} , 
 	{ "name": "A_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "d1" }} , 
 	{ "name": "A_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "q1" }} , 
 	{ "name": "C_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "C_1", "role": "address0" }} , 
 	{ "name": "C_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce0" }} , 
 	{ "name": "C_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1", "role": "q0" }} , 
 	{ "name": "C_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "C_1", "role": "address1" }} , 
 	{ "name": "C_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce1" }} , 
 	{ "name": "C_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1", "role": "q1" }} , 
 	{ "name": "C_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "C_2", "role": "address0" }} , 
 	{ "name": "C_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "ce0" }} , 
 	{ "name": "C_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2", "role": "q0" }} , 
 	{ "name": "C_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "C_2", "role": "address1" }} , 
 	{ "name": "C_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "ce1" }} , 
 	{ "name": "C_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2", "role": "q1" }} , 
 	{ "name": "C_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "C_3", "role": "address0" }} , 
 	{ "name": "C_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "ce0" }} , 
 	{ "name": "C_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3", "role": "q0" }} , 
 	{ "name": "C_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "C_3", "role": "address1" }} , 
 	{ "name": "C_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "ce1" }} , 
 	{ "name": "C_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "98", "99", "100"],
		"CDFG" : "doitgen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8511", "EstimateLatencyMax" : "8511",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201", "Port" : "gmem_0", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "A_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "C_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97"],
		"CDFG" : "doitgen_Pipeline_VITIS_LOOP_50_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8417", "EstimateLatencyMax" : "8417",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "A_0", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_96", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_97", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_98", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_99", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_100", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_101", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_102", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_103", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_104", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_105", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_106", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_107", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_108", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_109", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_110", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_111", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_112", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_113", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_114", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_115", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_117", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_118", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_119", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_120", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_121", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_122", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_123", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_124", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_125", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_126", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_127", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_128", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_129", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_130", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_131", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_132", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_133", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_134", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_135", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_136", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_137", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_138", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_139", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_140", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_141", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_142", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_143", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_144", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_145", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_146", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_147", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_148", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_149", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_150", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_151", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_152", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_153", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_154", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_155", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_156", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_157", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_158", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_159", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_160", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_161", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_162", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_163", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_164", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_165", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_166", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_167", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_168", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_169", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_170", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_171", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_172", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_173", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_174", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_175", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_176", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_177", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_178", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_179", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_180", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_181", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_182", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_183", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_184", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_185", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_186", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_187", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_188", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_189", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_190", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_191", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_192", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_193", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_194", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_195", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_196", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_197", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_198", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_199", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_200", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_201", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_202", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_203", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_204", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_205", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_206", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_207", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_208", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_209", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_210", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_211", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_212", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_213", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_214", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_215", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_216", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_217", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_218", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_219", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_220", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_221", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_222", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_223", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_224", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_225", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_226", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_227", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_228", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_229", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_230", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_231", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_232", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_233", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_234", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_235", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_236", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_237", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_238", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_239", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_240", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_241", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_242", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_243", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_244", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_245", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_246", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_247", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_248", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_249", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_250", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_251", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_252", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_253", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_254", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_255", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_256", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_257", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_258", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_259", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_260", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_261", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_262", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_263", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_264", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_265", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_266", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_267", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_268", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_269", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_270", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_271", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_272", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_273", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_phi_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi340_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi341_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi342_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi343_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi344_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi345_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi346_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi347_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi348_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi349_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi350_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi351_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi352_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi353_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi354_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "527", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state527"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U21", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U22", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U23", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U24", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U25", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U26", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U27", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U28", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U29", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U30", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U31", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U32", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U33", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U34", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U35", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U36", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U37", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U38", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U39", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U40", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U41", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U42", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U43", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U44", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U45", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U46", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U47", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fadd_32ns_32ns_32_2_full_dsp_1_U48", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U49", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U50", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U51", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U52", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U53", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U54", "Parent" : "1"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U55", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U56", "Parent" : "1"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U57", "Parent" : "1"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U58", "Parent" : "1"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U59", "Parent" : "1"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U60", "Parent" : "1"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U61", "Parent" : "1"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U62", "Parent" : "1"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U63", "Parent" : "1"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U64", "Parent" : "1"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U65", "Parent" : "1"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U66", "Parent" : "1"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U67", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U68", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U69", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U70", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U71", "Parent" : "1"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U72", "Parent" : "1"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U73", "Parent" : "1"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U74", "Parent" : "1"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U75", "Parent" : "1"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U76", "Parent" : "1"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U77", "Parent" : "1"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U78", "Parent" : "1"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U79", "Parent" : "1"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U80", "Parent" : "1"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U81", "Parent" : "1"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U82", "Parent" : "1"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U83", "Parent" : "1"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U84", "Parent" : "1"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U85", "Parent" : "1"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U86", "Parent" : "1"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U87", "Parent" : "1"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U88", "Parent" : "1"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U89", "Parent" : "1"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U90", "Parent" : "1"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U91", "Parent" : "1"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U92", "Parent" : "1"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U93", "Parent" : "1"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U94", "Parent" : "1"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U95", "Parent" : "1"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_50_1_fu_2201.fmul_32ns_32ns_32_2_max_dsp_1_U96", "Parent" : "1"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_0_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	doitgen {
		gmem_0 {Type IO LastRead 522 FirstWrite 266}
		gmem {Type O LastRead 90 FirstWrite 74}
		A_0 {Type I LastRead 0 FirstWrite -1}
		A_1 {Type X LastRead -1 FirstWrite -1}
		A_2 {Type X LastRead -1 FirstWrite -1}
		A_3 {Type X LastRead -1 FirstWrite -1}
		C_0 {Type I LastRead 0 FirstWrite -1}
		C_1 {Type I LastRead 72 FirstWrite -1}
		C_2 {Type I LastRead 72 FirstWrite -1}
		C_3 {Type I LastRead 72 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}}
	doitgen_Pipeline_VITIS_LOOP_50_1 {
		gmem_0 {Type IO LastRead 522 FirstWrite 266}
		A_0 {Type I LastRead 0 FirstWrite -1}
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
		empty_32 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		empty_52 {Type I LastRead 0 FirstWrite -1}
		empty_53 {Type I LastRead 0 FirstWrite -1}
		empty_54 {Type I LastRead 0 FirstWrite -1}
		empty_55 {Type I LastRead 0 FirstWrite -1}
		empty_56 {Type I LastRead 0 FirstWrite -1}
		empty_57 {Type I LastRead 0 FirstWrite -1}
		empty_58 {Type I LastRead 0 FirstWrite -1}
		empty_59 {Type I LastRead 0 FirstWrite -1}
		empty_60 {Type I LastRead 0 FirstWrite -1}
		empty_61 {Type I LastRead 0 FirstWrite -1}
		empty_62 {Type I LastRead 0 FirstWrite -1}
		empty_63 {Type I LastRead 0 FirstWrite -1}
		empty_64 {Type I LastRead 0 FirstWrite -1}
		empty_65 {Type I LastRead 0 FirstWrite -1}
		empty_66 {Type I LastRead 0 FirstWrite -1}
		empty_67 {Type I LastRead 0 FirstWrite -1}
		empty_68 {Type I LastRead 0 FirstWrite -1}
		empty_69 {Type I LastRead 0 FirstWrite -1}
		empty_70 {Type I LastRead 0 FirstWrite -1}
		empty_71 {Type I LastRead 0 FirstWrite -1}
		empty_72 {Type I LastRead 0 FirstWrite -1}
		empty_73 {Type I LastRead 0 FirstWrite -1}
		empty_74 {Type I LastRead 0 FirstWrite -1}
		empty_75 {Type I LastRead 0 FirstWrite -1}
		empty_76 {Type I LastRead 0 FirstWrite -1}
		empty_77 {Type I LastRead 0 FirstWrite -1}
		empty_78 {Type I LastRead 0 FirstWrite -1}
		empty_79 {Type I LastRead 0 FirstWrite -1}
		empty_80 {Type I LastRead 0 FirstWrite -1}
		empty_81 {Type I LastRead 0 FirstWrite -1}
		empty_82 {Type I LastRead 0 FirstWrite -1}
		empty_83 {Type I LastRead 0 FirstWrite -1}
		empty_84 {Type I LastRead 0 FirstWrite -1}
		empty_85 {Type I LastRead 0 FirstWrite -1}
		empty_86 {Type I LastRead 0 FirstWrite -1}
		empty_87 {Type I LastRead 0 FirstWrite -1}
		empty_88 {Type I LastRead 0 FirstWrite -1}
		empty_89 {Type I LastRead 0 FirstWrite -1}
		empty_90 {Type I LastRead 0 FirstWrite -1}
		empty_91 {Type I LastRead 0 FirstWrite -1}
		empty_92 {Type I LastRead 0 FirstWrite -1}
		empty_93 {Type I LastRead 0 FirstWrite -1}
		empty_94 {Type I LastRead 0 FirstWrite -1}
		empty_95 {Type I LastRead 0 FirstWrite -1}
		empty_96 {Type I LastRead 0 FirstWrite -1}
		empty_97 {Type I LastRead 0 FirstWrite -1}
		empty_98 {Type I LastRead 0 FirstWrite -1}
		empty_99 {Type I LastRead 0 FirstWrite -1}
		empty_100 {Type I LastRead 0 FirstWrite -1}
		empty_101 {Type I LastRead 0 FirstWrite -1}
		empty_102 {Type I LastRead 0 FirstWrite -1}
		empty_103 {Type I LastRead 0 FirstWrite -1}
		empty_104 {Type I LastRead 0 FirstWrite -1}
		empty_105 {Type I LastRead 0 FirstWrite -1}
		empty_106 {Type I LastRead 0 FirstWrite -1}
		empty_107 {Type I LastRead 0 FirstWrite -1}
		empty_108 {Type I LastRead 0 FirstWrite -1}
		empty_109 {Type I LastRead 0 FirstWrite -1}
		empty_110 {Type I LastRead 0 FirstWrite -1}
		empty_111 {Type I LastRead 0 FirstWrite -1}
		empty_112 {Type I LastRead 0 FirstWrite -1}
		empty_113 {Type I LastRead 0 FirstWrite -1}
		empty_114 {Type I LastRead 0 FirstWrite -1}
		empty_115 {Type I LastRead 0 FirstWrite -1}
		empty_116 {Type I LastRead 0 FirstWrite -1}
		empty_117 {Type I LastRead 0 FirstWrite -1}
		empty_118 {Type I LastRead 0 FirstWrite -1}
		empty_119 {Type I LastRead 0 FirstWrite -1}
		empty_120 {Type I LastRead 0 FirstWrite -1}
		empty_121 {Type I LastRead 0 FirstWrite -1}
		empty_122 {Type I LastRead 0 FirstWrite -1}
		empty_123 {Type I LastRead 0 FirstWrite -1}
		empty_124 {Type I LastRead 0 FirstWrite -1}
		empty_125 {Type I LastRead 0 FirstWrite -1}
		empty_126 {Type I LastRead 0 FirstWrite -1}
		empty_127 {Type I LastRead 0 FirstWrite -1}
		empty_128 {Type I LastRead 0 FirstWrite -1}
		empty_129 {Type I LastRead 0 FirstWrite -1}
		empty_130 {Type I LastRead 0 FirstWrite -1}
		empty_131 {Type I LastRead 0 FirstWrite -1}
		empty_132 {Type I LastRead 0 FirstWrite -1}
		empty_133 {Type I LastRead 0 FirstWrite -1}
		empty_134 {Type I LastRead 0 FirstWrite -1}
		empty_135 {Type I LastRead 0 FirstWrite -1}
		empty_136 {Type I LastRead 0 FirstWrite -1}
		empty_137 {Type I LastRead 0 FirstWrite -1}
		empty_138 {Type I LastRead 0 FirstWrite -1}
		empty_139 {Type I LastRead 0 FirstWrite -1}
		empty_140 {Type I LastRead 0 FirstWrite -1}
		empty_141 {Type I LastRead 0 FirstWrite -1}
		empty_142 {Type I LastRead 0 FirstWrite -1}
		empty_143 {Type I LastRead 0 FirstWrite -1}
		empty_144 {Type I LastRead 0 FirstWrite -1}
		empty_145 {Type I LastRead 0 FirstWrite -1}
		empty_146 {Type I LastRead 0 FirstWrite -1}
		empty_147 {Type I LastRead 0 FirstWrite -1}
		empty_148 {Type I LastRead 0 FirstWrite -1}
		empty_149 {Type I LastRead 0 FirstWrite -1}
		empty_150 {Type I LastRead 0 FirstWrite -1}
		empty_151 {Type I LastRead 0 FirstWrite -1}
		empty_152 {Type I LastRead 0 FirstWrite -1}
		empty_153 {Type I LastRead 0 FirstWrite -1}
		empty_154 {Type I LastRead 0 FirstWrite -1}
		empty_155 {Type I LastRead 0 FirstWrite -1}
		empty_156 {Type I LastRead 0 FirstWrite -1}
		empty_157 {Type I LastRead 0 FirstWrite -1}
		empty_158 {Type I LastRead 0 FirstWrite -1}
		empty_159 {Type I LastRead 0 FirstWrite -1}
		empty_160 {Type I LastRead 0 FirstWrite -1}
		empty_161 {Type I LastRead 0 FirstWrite -1}
		empty_162 {Type I LastRead 0 FirstWrite -1}
		empty_163 {Type I LastRead 0 FirstWrite -1}
		empty_164 {Type I LastRead 0 FirstWrite -1}
		empty_165 {Type I LastRead 0 FirstWrite -1}
		empty_166 {Type I LastRead 0 FirstWrite -1}
		empty_167 {Type I LastRead 0 FirstWrite -1}
		empty_168 {Type I LastRead 0 FirstWrite -1}
		empty_169 {Type I LastRead 0 FirstWrite -1}
		empty_170 {Type I LastRead 0 FirstWrite -1}
		empty_171 {Type I LastRead 0 FirstWrite -1}
		empty_172 {Type I LastRead 0 FirstWrite -1}
		empty_173 {Type I LastRead 0 FirstWrite -1}
		empty_174 {Type I LastRead 0 FirstWrite -1}
		empty_175 {Type I LastRead 0 FirstWrite -1}
		empty_176 {Type I LastRead 0 FirstWrite -1}
		empty_177 {Type I LastRead 0 FirstWrite -1}
		empty_178 {Type I LastRead 0 FirstWrite -1}
		empty_179 {Type I LastRead 0 FirstWrite -1}
		empty_180 {Type I LastRead 0 FirstWrite -1}
		empty_181 {Type I LastRead 0 FirstWrite -1}
		empty_182 {Type I LastRead 0 FirstWrite -1}
		empty_183 {Type I LastRead 0 FirstWrite -1}
		empty_184 {Type I LastRead 0 FirstWrite -1}
		empty_185 {Type I LastRead 0 FirstWrite -1}
		empty_186 {Type I LastRead 0 FirstWrite -1}
		empty_187 {Type I LastRead 0 FirstWrite -1}
		empty_188 {Type I LastRead 0 FirstWrite -1}
		empty_189 {Type I LastRead 0 FirstWrite -1}
		empty_190 {Type I LastRead 0 FirstWrite -1}
		empty_191 {Type I LastRead 0 FirstWrite -1}
		empty_192 {Type I LastRead 0 FirstWrite -1}
		empty_193 {Type I LastRead 0 FirstWrite -1}
		empty_194 {Type I LastRead 0 FirstWrite -1}
		empty_195 {Type I LastRead 0 FirstWrite -1}
		empty_196 {Type I LastRead 0 FirstWrite -1}
		empty_197 {Type I LastRead 0 FirstWrite -1}
		empty_198 {Type I LastRead 0 FirstWrite -1}
		empty_199 {Type I LastRead 0 FirstWrite -1}
		empty_200 {Type I LastRead 0 FirstWrite -1}
		empty_201 {Type I LastRead 0 FirstWrite -1}
		empty_202 {Type I LastRead 0 FirstWrite -1}
		empty_203 {Type I LastRead 0 FirstWrite -1}
		empty_204 {Type I LastRead 0 FirstWrite -1}
		empty_205 {Type I LastRead 0 FirstWrite -1}
		empty_206 {Type I LastRead 0 FirstWrite -1}
		empty_207 {Type I LastRead 0 FirstWrite -1}
		empty_208 {Type I LastRead 0 FirstWrite -1}
		empty_209 {Type I LastRead 0 FirstWrite -1}
		empty_210 {Type I LastRead 0 FirstWrite -1}
		empty_211 {Type I LastRead 0 FirstWrite -1}
		empty_212 {Type I LastRead 0 FirstWrite -1}
		empty_213 {Type I LastRead 0 FirstWrite -1}
		empty_214 {Type I LastRead 0 FirstWrite -1}
		empty_215 {Type I LastRead 0 FirstWrite -1}
		empty_216 {Type I LastRead 0 FirstWrite -1}
		empty_217 {Type I LastRead 0 FirstWrite -1}
		empty_218 {Type I LastRead 0 FirstWrite -1}
		empty_219 {Type I LastRead 0 FirstWrite -1}
		empty_220 {Type I LastRead 0 FirstWrite -1}
		empty_221 {Type I LastRead 0 FirstWrite -1}
		empty_222 {Type I LastRead 0 FirstWrite -1}
		empty_223 {Type I LastRead 0 FirstWrite -1}
		empty_224 {Type I LastRead 0 FirstWrite -1}
		empty_225 {Type I LastRead 0 FirstWrite -1}
		empty_226 {Type I LastRead 0 FirstWrite -1}
		empty_227 {Type I LastRead 0 FirstWrite -1}
		empty_228 {Type I LastRead 0 FirstWrite -1}
		empty_229 {Type I LastRead 0 FirstWrite -1}
		empty_230 {Type I LastRead 0 FirstWrite -1}
		empty_231 {Type I LastRead 0 FirstWrite -1}
		empty_232 {Type I LastRead 0 FirstWrite -1}
		empty_233 {Type I LastRead 0 FirstWrite -1}
		empty_234 {Type I LastRead 0 FirstWrite -1}
		empty_235 {Type I LastRead 0 FirstWrite -1}
		empty_236 {Type I LastRead 0 FirstWrite -1}
		empty_237 {Type I LastRead 0 FirstWrite -1}
		empty_238 {Type I LastRead 0 FirstWrite -1}
		empty_239 {Type I LastRead 0 FirstWrite -1}
		empty_240 {Type I LastRead 0 FirstWrite -1}
		empty_241 {Type I LastRead 0 FirstWrite -1}
		empty_242 {Type I LastRead 0 FirstWrite -1}
		empty_243 {Type I LastRead 0 FirstWrite -1}
		empty_244 {Type I LastRead 0 FirstWrite -1}
		empty_245 {Type I LastRead 0 FirstWrite -1}
		empty_246 {Type I LastRead 0 FirstWrite -1}
		empty_247 {Type I LastRead 0 FirstWrite -1}
		empty_248 {Type I LastRead 0 FirstWrite -1}
		empty_249 {Type I LastRead 0 FirstWrite -1}
		empty_250 {Type I LastRead 0 FirstWrite -1}
		empty_251 {Type I LastRead 0 FirstWrite -1}
		empty_252 {Type I LastRead 0 FirstWrite -1}
		empty_253 {Type I LastRead 0 FirstWrite -1}
		empty_254 {Type I LastRead 0 FirstWrite -1}
		empty_255 {Type I LastRead 0 FirstWrite -1}
		empty_256 {Type I LastRead 0 FirstWrite -1}
		empty_257 {Type I LastRead 0 FirstWrite -1}
		empty_258 {Type I LastRead 0 FirstWrite -1}
		empty_259 {Type I LastRead 0 FirstWrite -1}
		empty_260 {Type I LastRead 0 FirstWrite -1}
		empty_261 {Type I LastRead 0 FirstWrite -1}
		empty_262 {Type I LastRead 0 FirstWrite -1}
		empty_263 {Type I LastRead 0 FirstWrite -1}
		empty_264 {Type I LastRead 0 FirstWrite -1}
		empty_265 {Type I LastRead 0 FirstWrite -1}
		empty_266 {Type I LastRead 0 FirstWrite -1}
		empty_267 {Type I LastRead 0 FirstWrite -1}
		empty_268 {Type I LastRead 0 FirstWrite -1}
		empty_269 {Type I LastRead 0 FirstWrite -1}
		empty_270 {Type I LastRead 0 FirstWrite -1}
		empty_271 {Type I LastRead 0 FirstWrite -1}
		empty_272 {Type I LastRead 0 FirstWrite -1}
		empty_273 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_phi_out {Type O LastRead -1 FirstWrite 1}
		p_phi340_out {Type O LastRead -1 FirstWrite 1}
		p_phi341_out {Type O LastRead -1 FirstWrite 1}
		p_phi342_out {Type O LastRead -1 FirstWrite 1}
		p_phi343_out {Type O LastRead -1 FirstWrite 1}
		p_phi344_out {Type O LastRead -1 FirstWrite 1}
		p_phi345_out {Type O LastRead -1 FirstWrite 1}
		p_phi346_out {Type O LastRead -1 FirstWrite 1}
		p_phi347_out {Type O LastRead -1 FirstWrite 1}
		p_phi348_out {Type O LastRead -1 FirstWrite 1}
		p_phi349_out {Type O LastRead -1 FirstWrite 1}
		p_phi350_out {Type O LastRead -1 FirstWrite 1}
		p_phi351_out {Type O LastRead -1 FirstWrite 1}
		p_phi352_out {Type O LastRead -1 FirstWrite 1}
		p_phi353_out {Type O LastRead -1 FirstWrite 1}
		p_phi354_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8511", "Max" : "8511"}
	, {"Name" : "Interval", "Min" : "8512", "Max" : "8512"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_0 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 8 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 8 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 10 }  { A_1_ce0 mem_ce 1 1 }  { A_1_we0 mem_we 1 1 }  { A_1_d0 mem_din 1 32 }  { A_1_q0 mem_dout 0 32 }  { A_1_address1 MemPortADDR2 1 10 }  { A_1_ce1 MemPortCE2 1 1 }  { A_1_we1 MemPortWE2 1 1 }  { A_1_d1 MemPortDIN2 1 32 }  { A_1_q1 MemPortDOUT2 0 32 } } }
	A_2 { ap_memory {  { A_2_address0 mem_address 1 10 }  { A_2_ce0 mem_ce 1 1 }  { A_2_we0 mem_we 1 1 }  { A_2_d0 mem_din 1 32 }  { A_2_q0 mem_dout 0 32 }  { A_2_address1 MemPortADDR2 1 10 }  { A_2_ce1 MemPortCE2 1 1 }  { A_2_we1 MemPortWE2 1 1 }  { A_2_d1 MemPortDIN2 1 32 }  { A_2_q1 MemPortDOUT2 0 32 } } }
	A_3 { ap_memory {  { A_3_address0 mem_address 1 10 }  { A_3_ce0 mem_ce 1 1 }  { A_3_we0 mem_we 1 1 }  { A_3_d0 mem_din 1 32 }  { A_3_q0 mem_dout 0 32 }  { A_3_address1 MemPortADDR2 1 10 }  { A_3_ce1 MemPortCE2 1 1 }  { A_3_we1 MemPortWE2 1 1 }  { A_3_d1 MemPortDIN2 1 32 }  { A_3_q1 MemPortDOUT2 0 32 } } }
	C_1 { ap_memory {  { C_1_address0 mem_address 1 6 }  { C_1_ce0 mem_ce 1 1 }  { C_1_q0 in_data 0 32 }  { C_1_address1 MemPortADDR2 1 6 }  { C_1_ce1 MemPortCE2 1 1 }  { C_1_q1 in_data 0 32 } } }
	C_2 { ap_memory {  { C_2_address0 mem_address 1 6 }  { C_2_ce0 mem_ce 1 1 }  { C_2_q0 in_data 0 32 }  { C_2_address1 MemPortADDR2 1 6 }  { C_2_ce1 MemPortCE2 1 1 }  { C_2_q1 in_data 0 32 } } }
	C_3 { ap_memory {  { C_3_address0 mem_address 1 6 }  { C_3_ce0 mem_ce 1 1 }  { C_3_q0 in_data 0 32 }  { C_3_address1 MemPortADDR2 1 6 }  { C_3_ce1 MemPortCE2 1 1 }  { C_3_q1 in_data 0 32 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_0 1 }
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_0 1 }
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
