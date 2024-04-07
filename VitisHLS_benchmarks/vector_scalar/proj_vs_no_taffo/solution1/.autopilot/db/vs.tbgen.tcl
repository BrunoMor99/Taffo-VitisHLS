set moduleName vs
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
set C_modelName {vs}
set C_modelType { int 32 }
set C_modelArgList {
	{ gmem_0 int 32 regular {axi_master 2}  }
	{ A_0 int 64 regular {axi_slave 0}  }
	{ A_1 int 32 regular {pointer 2}  }
	{ A_2 int 32 regular {pointer 2}  }
	{ A_3 int 32 regular {pointer 2}  }
	{ A_4 int 32 regular {pointer 2}  }
	{ A_5 int 32 regular {pointer 2}  }
	{ A_6 int 32 regular {pointer 2}  }
	{ A_7 int 32 regular {pointer 2}  }
	{ A_8 int 32 regular {pointer 2}  }
	{ A_9 int 32 regular {pointer 2}  }
	{ A_10 int 32 regular {pointer 2}  }
	{ A_11 int 32 regular {pointer 2}  }
	{ A_12 int 32 regular {pointer 2}  }
	{ A_13 int 32 regular {pointer 2}  }
	{ A_14 int 32 regular {pointer 2}  }
	{ A_15 int 32 regular {pointer 2}  }
	{ A_16 int 32 regular {pointer 2}  }
	{ A_17 int 32 regular {pointer 2}  }
	{ A_18 int 32 regular {pointer 2}  }
	{ A_19 int 32 regular {pointer 2}  }
	{ A_20 int 32 regular {pointer 2}  }
	{ A_21 int 32 regular {pointer 2}  }
	{ A_22 int 32 regular {pointer 2}  }
	{ A_23 int 32 regular {pointer 2}  }
	{ A_24 int 32 regular {pointer 2}  }
	{ A_25 int 32 regular {pointer 2}  }
	{ A_26 int 32 regular {pointer 2}  }
	{ A_27 int 32 regular {pointer 2}  }
	{ A_28 int 32 regular {pointer 2}  }
	{ A_29 int 32 regular {pointer 2}  }
	{ A_30 int 32 regular {pointer 2}  }
	{ A_31 int 32 regular {pointer 2}  }
	{ A_32 int 32 regular {pointer 2}  }
	{ A_33 int 32 regular {pointer 2}  }
	{ A_34 int 32 regular {pointer 2}  }
	{ A_35 int 32 regular {pointer 2}  }
	{ A_36 int 32 regular {pointer 2}  }
	{ A_37 int 32 regular {pointer 2}  }
	{ A_38 int 32 regular {pointer 2}  }
	{ A_39 int 32 regular {pointer 2}  }
	{ A_40 int 32 regular {pointer 2}  }
	{ A_41 int 32 regular {pointer 2}  }
	{ A_42 int 32 regular {pointer 2}  }
	{ A_43 int 32 regular {pointer 2}  }
	{ A_44 int 32 regular {pointer 2}  }
	{ A_45 int 32 regular {pointer 2}  }
	{ A_46 int 32 regular {pointer 2}  }
	{ A_47 int 32 regular {pointer 2}  }
	{ A_48 int 32 regular {pointer 2}  }
	{ A_49 int 32 regular {pointer 2}  }
	{ A_50 int 32 regular {pointer 2}  }
	{ A_51 int 32 regular {pointer 2}  }
	{ A_52 int 32 regular {pointer 2}  }
	{ A_53 int 32 regular {pointer 2}  }
	{ A_54 int 32 regular {pointer 2}  }
	{ A_55 int 32 regular {pointer 2}  }
	{ A_56 int 32 regular {pointer 2}  }
	{ A_57 int 32 regular {pointer 2}  }
	{ A_58 int 32 regular {pointer 2}  }
	{ A_59 int 32 regular {pointer 2}  }
	{ A_60 int 32 regular {pointer 2}  }
	{ A_61 int 32 regular {pointer 2}  }
	{ A_62 int 32 regular {pointer 2}  }
	{ A_63 int 32 regular {pointer 2}  }
	{ alpha float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "A_0","offset": { "type": "dynamic","port_name": "A_0","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "A_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "A_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_32", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_33", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_34", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_35", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_36", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_37", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_38", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_39", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_40", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_41", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_42", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_44", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_46", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_48", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_49", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_50", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_51", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_52", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_53", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_54", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_55", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_56", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_57", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_58", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_59", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_60", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_61", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_62", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A_63", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "alpha", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 259
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
	{ A_1_i sc_in sc_lv 32 signal 2 } 
	{ A_1_o sc_out sc_lv 32 signal 2 } 
	{ A_1_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ A_2_i sc_in sc_lv 32 signal 3 } 
	{ A_2_o sc_out sc_lv 32 signal 3 } 
	{ A_2_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ A_3_i sc_in sc_lv 32 signal 4 } 
	{ A_3_o sc_out sc_lv 32 signal 4 } 
	{ A_3_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ A_4_i sc_in sc_lv 32 signal 5 } 
	{ A_4_o sc_out sc_lv 32 signal 5 } 
	{ A_4_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ A_5_i sc_in sc_lv 32 signal 6 } 
	{ A_5_o sc_out sc_lv 32 signal 6 } 
	{ A_5_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ A_6_i sc_in sc_lv 32 signal 7 } 
	{ A_6_o sc_out sc_lv 32 signal 7 } 
	{ A_6_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ A_7_i sc_in sc_lv 32 signal 8 } 
	{ A_7_o sc_out sc_lv 32 signal 8 } 
	{ A_7_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ A_8_i sc_in sc_lv 32 signal 9 } 
	{ A_8_o sc_out sc_lv 32 signal 9 } 
	{ A_8_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ A_9_i sc_in sc_lv 32 signal 10 } 
	{ A_9_o sc_out sc_lv 32 signal 10 } 
	{ A_9_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ A_10_i sc_in sc_lv 32 signal 11 } 
	{ A_10_o sc_out sc_lv 32 signal 11 } 
	{ A_10_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ A_11_i sc_in sc_lv 32 signal 12 } 
	{ A_11_o sc_out sc_lv 32 signal 12 } 
	{ A_11_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ A_12_i sc_in sc_lv 32 signal 13 } 
	{ A_12_o sc_out sc_lv 32 signal 13 } 
	{ A_12_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ A_13_i sc_in sc_lv 32 signal 14 } 
	{ A_13_o sc_out sc_lv 32 signal 14 } 
	{ A_13_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ A_14_i sc_in sc_lv 32 signal 15 } 
	{ A_14_o sc_out sc_lv 32 signal 15 } 
	{ A_14_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ A_15_i sc_in sc_lv 32 signal 16 } 
	{ A_15_o sc_out sc_lv 32 signal 16 } 
	{ A_15_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ A_16_i sc_in sc_lv 32 signal 17 } 
	{ A_16_o sc_out sc_lv 32 signal 17 } 
	{ A_16_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ A_17_i sc_in sc_lv 32 signal 18 } 
	{ A_17_o sc_out sc_lv 32 signal 18 } 
	{ A_17_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ A_18_i sc_in sc_lv 32 signal 19 } 
	{ A_18_o sc_out sc_lv 32 signal 19 } 
	{ A_18_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ A_19_i sc_in sc_lv 32 signal 20 } 
	{ A_19_o sc_out sc_lv 32 signal 20 } 
	{ A_19_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ A_20_i sc_in sc_lv 32 signal 21 } 
	{ A_20_o sc_out sc_lv 32 signal 21 } 
	{ A_20_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ A_21_i sc_in sc_lv 32 signal 22 } 
	{ A_21_o sc_out sc_lv 32 signal 22 } 
	{ A_21_o_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ A_22_i sc_in sc_lv 32 signal 23 } 
	{ A_22_o sc_out sc_lv 32 signal 23 } 
	{ A_22_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ A_23_i sc_in sc_lv 32 signal 24 } 
	{ A_23_o sc_out sc_lv 32 signal 24 } 
	{ A_23_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ A_24_i sc_in sc_lv 32 signal 25 } 
	{ A_24_o sc_out sc_lv 32 signal 25 } 
	{ A_24_o_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ A_25_i sc_in sc_lv 32 signal 26 } 
	{ A_25_o sc_out sc_lv 32 signal 26 } 
	{ A_25_o_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ A_26_i sc_in sc_lv 32 signal 27 } 
	{ A_26_o sc_out sc_lv 32 signal 27 } 
	{ A_26_o_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ A_27_i sc_in sc_lv 32 signal 28 } 
	{ A_27_o sc_out sc_lv 32 signal 28 } 
	{ A_27_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ A_28_i sc_in sc_lv 32 signal 29 } 
	{ A_28_o sc_out sc_lv 32 signal 29 } 
	{ A_28_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ A_29_i sc_in sc_lv 32 signal 30 } 
	{ A_29_o sc_out sc_lv 32 signal 30 } 
	{ A_29_o_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ A_30_i sc_in sc_lv 32 signal 31 } 
	{ A_30_o sc_out sc_lv 32 signal 31 } 
	{ A_30_o_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ A_31_i sc_in sc_lv 32 signal 32 } 
	{ A_31_o sc_out sc_lv 32 signal 32 } 
	{ A_31_o_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ A_32_i sc_in sc_lv 32 signal 33 } 
	{ A_32_o sc_out sc_lv 32 signal 33 } 
	{ A_32_o_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ A_33_i sc_in sc_lv 32 signal 34 } 
	{ A_33_o sc_out sc_lv 32 signal 34 } 
	{ A_33_o_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ A_34_i sc_in sc_lv 32 signal 35 } 
	{ A_34_o sc_out sc_lv 32 signal 35 } 
	{ A_34_o_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ A_35_i sc_in sc_lv 32 signal 36 } 
	{ A_35_o sc_out sc_lv 32 signal 36 } 
	{ A_35_o_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ A_36_i sc_in sc_lv 32 signal 37 } 
	{ A_36_o sc_out sc_lv 32 signal 37 } 
	{ A_36_o_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ A_37_i sc_in sc_lv 32 signal 38 } 
	{ A_37_o sc_out sc_lv 32 signal 38 } 
	{ A_37_o_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ A_38_i sc_in sc_lv 32 signal 39 } 
	{ A_38_o sc_out sc_lv 32 signal 39 } 
	{ A_38_o_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ A_39_i sc_in sc_lv 32 signal 40 } 
	{ A_39_o sc_out sc_lv 32 signal 40 } 
	{ A_39_o_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ A_40_i sc_in sc_lv 32 signal 41 } 
	{ A_40_o sc_out sc_lv 32 signal 41 } 
	{ A_40_o_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ A_41_i sc_in sc_lv 32 signal 42 } 
	{ A_41_o sc_out sc_lv 32 signal 42 } 
	{ A_41_o_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ A_42_i sc_in sc_lv 32 signal 43 } 
	{ A_42_o sc_out sc_lv 32 signal 43 } 
	{ A_42_o_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ A_43_i sc_in sc_lv 32 signal 44 } 
	{ A_43_o sc_out sc_lv 32 signal 44 } 
	{ A_43_o_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ A_44_i sc_in sc_lv 32 signal 45 } 
	{ A_44_o sc_out sc_lv 32 signal 45 } 
	{ A_44_o_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ A_45_i sc_in sc_lv 32 signal 46 } 
	{ A_45_o sc_out sc_lv 32 signal 46 } 
	{ A_45_o_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ A_46_i sc_in sc_lv 32 signal 47 } 
	{ A_46_o sc_out sc_lv 32 signal 47 } 
	{ A_46_o_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ A_47_i sc_in sc_lv 32 signal 48 } 
	{ A_47_o sc_out sc_lv 32 signal 48 } 
	{ A_47_o_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ A_48_i sc_in sc_lv 32 signal 49 } 
	{ A_48_o sc_out sc_lv 32 signal 49 } 
	{ A_48_o_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ A_49_i sc_in sc_lv 32 signal 50 } 
	{ A_49_o sc_out sc_lv 32 signal 50 } 
	{ A_49_o_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ A_50_i sc_in sc_lv 32 signal 51 } 
	{ A_50_o sc_out sc_lv 32 signal 51 } 
	{ A_50_o_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ A_51_i sc_in sc_lv 32 signal 52 } 
	{ A_51_o sc_out sc_lv 32 signal 52 } 
	{ A_51_o_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ A_52_i sc_in sc_lv 32 signal 53 } 
	{ A_52_o sc_out sc_lv 32 signal 53 } 
	{ A_52_o_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ A_53_i sc_in sc_lv 32 signal 54 } 
	{ A_53_o sc_out sc_lv 32 signal 54 } 
	{ A_53_o_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ A_54_i sc_in sc_lv 32 signal 55 } 
	{ A_54_o sc_out sc_lv 32 signal 55 } 
	{ A_54_o_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ A_55_i sc_in sc_lv 32 signal 56 } 
	{ A_55_o sc_out sc_lv 32 signal 56 } 
	{ A_55_o_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ A_56_i sc_in sc_lv 32 signal 57 } 
	{ A_56_o sc_out sc_lv 32 signal 57 } 
	{ A_56_o_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ A_57_i sc_in sc_lv 32 signal 58 } 
	{ A_57_o sc_out sc_lv 32 signal 58 } 
	{ A_57_o_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ A_58_i sc_in sc_lv 32 signal 59 } 
	{ A_58_o sc_out sc_lv 32 signal 59 } 
	{ A_58_o_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ A_59_i sc_in sc_lv 32 signal 60 } 
	{ A_59_o sc_out sc_lv 32 signal 60 } 
	{ A_59_o_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ A_60_i sc_in sc_lv 32 signal 61 } 
	{ A_60_o sc_out sc_lv 32 signal 61 } 
	{ A_60_o_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ A_61_i sc_in sc_lv 32 signal 62 } 
	{ A_61_o sc_out sc_lv 32 signal 62 } 
	{ A_61_o_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ A_62_i sc_in sc_lv 32 signal 63 } 
	{ A_62_o sc_out sc_lv 32 signal 63 } 
	{ A_62_o_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ A_63_i sc_in sc_lv 32 signal 64 } 
	{ A_63_o sc_out sc_lv 32 signal 64 } 
	{ A_63_o_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ alpha sc_in sc_lv 32 signal 65 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"A_0","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
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
 	{ "name": "A_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "i" }} , 
 	{ "name": "A_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "o" }} , 
 	{ "name": "A_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_1", "role": "o_ap_vld" }} , 
 	{ "name": "A_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "i" }} , 
 	{ "name": "A_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "o" }} , 
 	{ "name": "A_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_2", "role": "o_ap_vld" }} , 
 	{ "name": "A_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "i" }} , 
 	{ "name": "A_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "o" }} , 
 	{ "name": "A_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_3", "role": "o_ap_vld" }} , 
 	{ "name": "A_4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4", "role": "i" }} , 
 	{ "name": "A_4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4", "role": "o" }} , 
 	{ "name": "A_4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_4", "role": "o_ap_vld" }} , 
 	{ "name": "A_5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5", "role": "i" }} , 
 	{ "name": "A_5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5", "role": "o" }} , 
 	{ "name": "A_5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_5", "role": "o_ap_vld" }} , 
 	{ "name": "A_6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_6", "role": "i" }} , 
 	{ "name": "A_6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_6", "role": "o" }} , 
 	{ "name": "A_6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_6", "role": "o_ap_vld" }} , 
 	{ "name": "A_7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_7", "role": "i" }} , 
 	{ "name": "A_7_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_7", "role": "o" }} , 
 	{ "name": "A_7_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_7", "role": "o_ap_vld" }} , 
 	{ "name": "A_8_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_8", "role": "i" }} , 
 	{ "name": "A_8_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_8", "role": "o" }} , 
 	{ "name": "A_8_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_8", "role": "o_ap_vld" }} , 
 	{ "name": "A_9_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_9", "role": "i" }} , 
 	{ "name": "A_9_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_9", "role": "o" }} , 
 	{ "name": "A_9_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_9", "role": "o_ap_vld" }} , 
 	{ "name": "A_10_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_10", "role": "i" }} , 
 	{ "name": "A_10_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_10", "role": "o" }} , 
 	{ "name": "A_10_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_10", "role": "o_ap_vld" }} , 
 	{ "name": "A_11_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_11", "role": "i" }} , 
 	{ "name": "A_11_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_11", "role": "o" }} , 
 	{ "name": "A_11_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_11", "role": "o_ap_vld" }} , 
 	{ "name": "A_12_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_12", "role": "i" }} , 
 	{ "name": "A_12_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_12", "role": "o" }} , 
 	{ "name": "A_12_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_12", "role": "o_ap_vld" }} , 
 	{ "name": "A_13_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_13", "role": "i" }} , 
 	{ "name": "A_13_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_13", "role": "o" }} , 
 	{ "name": "A_13_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_13", "role": "o_ap_vld" }} , 
 	{ "name": "A_14_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_14", "role": "i" }} , 
 	{ "name": "A_14_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_14", "role": "o" }} , 
 	{ "name": "A_14_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_14", "role": "o_ap_vld" }} , 
 	{ "name": "A_15_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_15", "role": "i" }} , 
 	{ "name": "A_15_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_15", "role": "o" }} , 
 	{ "name": "A_15_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_15", "role": "o_ap_vld" }} , 
 	{ "name": "A_16_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_16", "role": "i" }} , 
 	{ "name": "A_16_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_16", "role": "o" }} , 
 	{ "name": "A_16_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_16", "role": "o_ap_vld" }} , 
 	{ "name": "A_17_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_17", "role": "i" }} , 
 	{ "name": "A_17_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_17", "role": "o" }} , 
 	{ "name": "A_17_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_17", "role": "o_ap_vld" }} , 
 	{ "name": "A_18_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_18", "role": "i" }} , 
 	{ "name": "A_18_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_18", "role": "o" }} , 
 	{ "name": "A_18_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_18", "role": "o_ap_vld" }} , 
 	{ "name": "A_19_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_19", "role": "i" }} , 
 	{ "name": "A_19_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_19", "role": "o" }} , 
 	{ "name": "A_19_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_19", "role": "o_ap_vld" }} , 
 	{ "name": "A_20_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_20", "role": "i" }} , 
 	{ "name": "A_20_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_20", "role": "o" }} , 
 	{ "name": "A_20_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_20", "role": "o_ap_vld" }} , 
 	{ "name": "A_21_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_21", "role": "i" }} , 
 	{ "name": "A_21_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_21", "role": "o" }} , 
 	{ "name": "A_21_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_21", "role": "o_ap_vld" }} , 
 	{ "name": "A_22_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_22", "role": "i" }} , 
 	{ "name": "A_22_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_22", "role": "o" }} , 
 	{ "name": "A_22_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_22", "role": "o_ap_vld" }} , 
 	{ "name": "A_23_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_23", "role": "i" }} , 
 	{ "name": "A_23_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_23", "role": "o" }} , 
 	{ "name": "A_23_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_23", "role": "o_ap_vld" }} , 
 	{ "name": "A_24_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_24", "role": "i" }} , 
 	{ "name": "A_24_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_24", "role": "o" }} , 
 	{ "name": "A_24_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_24", "role": "o_ap_vld" }} , 
 	{ "name": "A_25_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_25", "role": "i" }} , 
 	{ "name": "A_25_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_25", "role": "o" }} , 
 	{ "name": "A_25_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_25", "role": "o_ap_vld" }} , 
 	{ "name": "A_26_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_26", "role": "i" }} , 
 	{ "name": "A_26_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_26", "role": "o" }} , 
 	{ "name": "A_26_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_26", "role": "o_ap_vld" }} , 
 	{ "name": "A_27_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_27", "role": "i" }} , 
 	{ "name": "A_27_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_27", "role": "o" }} , 
 	{ "name": "A_27_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_27", "role": "o_ap_vld" }} , 
 	{ "name": "A_28_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_28", "role": "i" }} , 
 	{ "name": "A_28_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_28", "role": "o" }} , 
 	{ "name": "A_28_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_28", "role": "o_ap_vld" }} , 
 	{ "name": "A_29_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_29", "role": "i" }} , 
 	{ "name": "A_29_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_29", "role": "o" }} , 
 	{ "name": "A_29_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_29", "role": "o_ap_vld" }} , 
 	{ "name": "A_30_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_30", "role": "i" }} , 
 	{ "name": "A_30_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_30", "role": "o" }} , 
 	{ "name": "A_30_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_30", "role": "o_ap_vld" }} , 
 	{ "name": "A_31_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_31", "role": "i" }} , 
 	{ "name": "A_31_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_31", "role": "o" }} , 
 	{ "name": "A_31_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_31", "role": "o_ap_vld" }} , 
 	{ "name": "A_32_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_32", "role": "i" }} , 
 	{ "name": "A_32_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_32", "role": "o" }} , 
 	{ "name": "A_32_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_32", "role": "o_ap_vld" }} , 
 	{ "name": "A_33_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_33", "role": "i" }} , 
 	{ "name": "A_33_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_33", "role": "o" }} , 
 	{ "name": "A_33_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_33", "role": "o_ap_vld" }} , 
 	{ "name": "A_34_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_34", "role": "i" }} , 
 	{ "name": "A_34_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_34", "role": "o" }} , 
 	{ "name": "A_34_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_34", "role": "o_ap_vld" }} , 
 	{ "name": "A_35_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_35", "role": "i" }} , 
 	{ "name": "A_35_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_35", "role": "o" }} , 
 	{ "name": "A_35_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_35", "role": "o_ap_vld" }} , 
 	{ "name": "A_36_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_36", "role": "i" }} , 
 	{ "name": "A_36_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_36", "role": "o" }} , 
 	{ "name": "A_36_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_36", "role": "o_ap_vld" }} , 
 	{ "name": "A_37_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_37", "role": "i" }} , 
 	{ "name": "A_37_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_37", "role": "o" }} , 
 	{ "name": "A_37_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_37", "role": "o_ap_vld" }} , 
 	{ "name": "A_38_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_38", "role": "i" }} , 
 	{ "name": "A_38_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_38", "role": "o" }} , 
 	{ "name": "A_38_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_38", "role": "o_ap_vld" }} , 
 	{ "name": "A_39_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_39", "role": "i" }} , 
 	{ "name": "A_39_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_39", "role": "o" }} , 
 	{ "name": "A_39_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_39", "role": "o_ap_vld" }} , 
 	{ "name": "A_40_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_40", "role": "i" }} , 
 	{ "name": "A_40_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_40", "role": "o" }} , 
 	{ "name": "A_40_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_40", "role": "o_ap_vld" }} , 
 	{ "name": "A_41_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_41", "role": "i" }} , 
 	{ "name": "A_41_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_41", "role": "o" }} , 
 	{ "name": "A_41_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_41", "role": "o_ap_vld" }} , 
 	{ "name": "A_42_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_42", "role": "i" }} , 
 	{ "name": "A_42_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_42", "role": "o" }} , 
 	{ "name": "A_42_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_42", "role": "o_ap_vld" }} , 
 	{ "name": "A_43_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_43", "role": "i" }} , 
 	{ "name": "A_43_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_43", "role": "o" }} , 
 	{ "name": "A_43_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_43", "role": "o_ap_vld" }} , 
 	{ "name": "A_44_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_44", "role": "i" }} , 
 	{ "name": "A_44_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_44", "role": "o" }} , 
 	{ "name": "A_44_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_44", "role": "o_ap_vld" }} , 
 	{ "name": "A_45_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_45", "role": "i" }} , 
 	{ "name": "A_45_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_45", "role": "o" }} , 
 	{ "name": "A_45_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_45", "role": "o_ap_vld" }} , 
 	{ "name": "A_46_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_46", "role": "i" }} , 
 	{ "name": "A_46_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_46", "role": "o" }} , 
 	{ "name": "A_46_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_46", "role": "o_ap_vld" }} , 
 	{ "name": "A_47_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_47", "role": "i" }} , 
 	{ "name": "A_47_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_47", "role": "o" }} , 
 	{ "name": "A_47_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_47", "role": "o_ap_vld" }} , 
 	{ "name": "A_48_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_48", "role": "i" }} , 
 	{ "name": "A_48_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_48", "role": "o" }} , 
 	{ "name": "A_48_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_48", "role": "o_ap_vld" }} , 
 	{ "name": "A_49_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_49", "role": "i" }} , 
 	{ "name": "A_49_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_49", "role": "o" }} , 
 	{ "name": "A_49_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_49", "role": "o_ap_vld" }} , 
 	{ "name": "A_50_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_50", "role": "i" }} , 
 	{ "name": "A_50_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_50", "role": "o" }} , 
 	{ "name": "A_50_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_50", "role": "o_ap_vld" }} , 
 	{ "name": "A_51_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_51", "role": "i" }} , 
 	{ "name": "A_51_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_51", "role": "o" }} , 
 	{ "name": "A_51_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_51", "role": "o_ap_vld" }} , 
 	{ "name": "A_52_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_52", "role": "i" }} , 
 	{ "name": "A_52_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_52", "role": "o" }} , 
 	{ "name": "A_52_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_52", "role": "o_ap_vld" }} , 
 	{ "name": "A_53_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_53", "role": "i" }} , 
 	{ "name": "A_53_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_53", "role": "o" }} , 
 	{ "name": "A_53_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_53", "role": "o_ap_vld" }} , 
 	{ "name": "A_54_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_54", "role": "i" }} , 
 	{ "name": "A_54_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_54", "role": "o" }} , 
 	{ "name": "A_54_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_54", "role": "o_ap_vld" }} , 
 	{ "name": "A_55_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_55", "role": "i" }} , 
 	{ "name": "A_55_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_55", "role": "o" }} , 
 	{ "name": "A_55_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_55", "role": "o_ap_vld" }} , 
 	{ "name": "A_56_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_56", "role": "i" }} , 
 	{ "name": "A_56_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_56", "role": "o" }} , 
 	{ "name": "A_56_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_56", "role": "o_ap_vld" }} , 
 	{ "name": "A_57_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_57", "role": "i" }} , 
 	{ "name": "A_57_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_57", "role": "o" }} , 
 	{ "name": "A_57_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_57", "role": "o_ap_vld" }} , 
 	{ "name": "A_58_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_58", "role": "i" }} , 
 	{ "name": "A_58_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_58", "role": "o" }} , 
 	{ "name": "A_58_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_58", "role": "o_ap_vld" }} , 
 	{ "name": "A_59_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_59", "role": "i" }} , 
 	{ "name": "A_59_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_59", "role": "o" }} , 
 	{ "name": "A_59_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_59", "role": "o_ap_vld" }} , 
 	{ "name": "A_60_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_60", "role": "i" }} , 
 	{ "name": "A_60_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_60", "role": "o" }} , 
 	{ "name": "A_60_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_60", "role": "o_ap_vld" }} , 
 	{ "name": "A_61_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_61", "role": "i" }} , 
 	{ "name": "A_61_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_61", "role": "o" }} , 
 	{ "name": "A_61_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_61", "role": "o_ap_vld" }} , 
 	{ "name": "A_62_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_62", "role": "i" }} , 
 	{ "name": "A_62_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_62", "role": "o" }} , 
 	{ "name": "A_62_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_62", "role": "o_ap_vld" }} , 
 	{ "name": "A_63_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_63", "role": "i" }} , 
 	{ "name": "A_63_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_63", "role": "o" }} , 
 	{ "name": "A_63_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_63", "role": "o_ap_vld" }} , 
 	{ "name": "alpha", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "alpha", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "vs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
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
			{"Name" : "A_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "A_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_0_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U5", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U6", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U7", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U8", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U9", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U10", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U11", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U12", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U13", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U14", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U15", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U16", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U17", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U18", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U19", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U20", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U21", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U22", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U23", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U24", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U25", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U26", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U27", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U28", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U29", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U30", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U31", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U32", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U33", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U34", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U35", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U36", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U37", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U38", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U39", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U40", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U41", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U42", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U43", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U44", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U45", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U46", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U47", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U48", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U49", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U50", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U51", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U52", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U53", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U54", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U55", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U56", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U57", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U58", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U59", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U60", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U61", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U62", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U63", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U64", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vs {
		gmem_0 {Type IO LastRead 13 FirstWrite 12}
		A_0 {Type I LastRead 0 FirstWrite -1}
		A_1 {Type IO LastRead 9 FirstWrite 11}
		A_2 {Type IO LastRead 9 FirstWrite 11}
		A_3 {Type IO LastRead 9 FirstWrite 11}
		A_4 {Type IO LastRead 9 FirstWrite 11}
		A_5 {Type IO LastRead 9 FirstWrite 11}
		A_6 {Type IO LastRead 9 FirstWrite 11}
		A_7 {Type IO LastRead 9 FirstWrite 11}
		A_8 {Type IO LastRead 9 FirstWrite 11}
		A_9 {Type IO LastRead 9 FirstWrite 11}
		A_10 {Type IO LastRead 9 FirstWrite 11}
		A_11 {Type IO LastRead 9 FirstWrite 11}
		A_12 {Type IO LastRead 9 FirstWrite 11}
		A_13 {Type IO LastRead 9 FirstWrite 11}
		A_14 {Type IO LastRead 9 FirstWrite 11}
		A_15 {Type IO LastRead 9 FirstWrite 11}
		A_16 {Type IO LastRead 9 FirstWrite 11}
		A_17 {Type IO LastRead 9 FirstWrite 11}
		A_18 {Type IO LastRead 9 FirstWrite 11}
		A_19 {Type IO LastRead 9 FirstWrite 11}
		A_20 {Type IO LastRead 9 FirstWrite 11}
		A_21 {Type IO LastRead 9 FirstWrite 11}
		A_22 {Type IO LastRead 9 FirstWrite 11}
		A_23 {Type IO LastRead 9 FirstWrite 11}
		A_24 {Type IO LastRead 9 FirstWrite 11}
		A_25 {Type IO LastRead 9 FirstWrite 11}
		A_26 {Type IO LastRead 9 FirstWrite 11}
		A_27 {Type IO LastRead 9 FirstWrite 11}
		A_28 {Type IO LastRead 9 FirstWrite 11}
		A_29 {Type IO LastRead 9 FirstWrite 11}
		A_30 {Type IO LastRead 9 FirstWrite 11}
		A_31 {Type IO LastRead 9 FirstWrite 11}
		A_32 {Type IO LastRead 9 FirstWrite 11}
		A_33 {Type IO LastRead 9 FirstWrite 11}
		A_34 {Type IO LastRead 9 FirstWrite 11}
		A_35 {Type IO LastRead 9 FirstWrite 11}
		A_36 {Type IO LastRead 9 FirstWrite 11}
		A_37 {Type IO LastRead 9 FirstWrite 11}
		A_38 {Type IO LastRead 9 FirstWrite 11}
		A_39 {Type IO LastRead 9 FirstWrite 11}
		A_40 {Type IO LastRead 9 FirstWrite 11}
		A_41 {Type IO LastRead 9 FirstWrite 11}
		A_42 {Type IO LastRead 9 FirstWrite 11}
		A_43 {Type IO LastRead 9 FirstWrite 11}
		A_44 {Type IO LastRead 9 FirstWrite 11}
		A_45 {Type IO LastRead 9 FirstWrite 11}
		A_46 {Type IO LastRead 9 FirstWrite 11}
		A_47 {Type IO LastRead 9 FirstWrite 11}
		A_48 {Type IO LastRead 9 FirstWrite 11}
		A_49 {Type IO LastRead 9 FirstWrite 11}
		A_50 {Type IO LastRead 9 FirstWrite 11}
		A_51 {Type IO LastRead 9 FirstWrite 11}
		A_52 {Type IO LastRead 9 FirstWrite 11}
		A_53 {Type IO LastRead 9 FirstWrite 11}
		A_54 {Type IO LastRead 9 FirstWrite 11}
		A_55 {Type IO LastRead 9 FirstWrite 11}
		A_56 {Type IO LastRead 9 FirstWrite 11}
		A_57 {Type IO LastRead 9 FirstWrite 11}
		A_58 {Type IO LastRead 9 FirstWrite 11}
		A_59 {Type IO LastRead 9 FirstWrite 11}
		A_60 {Type IO LastRead 9 FirstWrite 11}
		A_61 {Type IO LastRead 9 FirstWrite 11}
		A_62 {Type IO LastRead 9 FirstWrite 11}
		A_63 {Type IO LastRead 9 FirstWrite 11}
		alpha {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_0 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 8 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 8 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	A_1 { ap_ovld {  { A_1_i in_data 0 32 }  { A_1_o out_data 1 32 }  { A_1_o_ap_vld out_vld 1 1 } } }
	A_2 { ap_ovld {  { A_2_i in_data 0 32 }  { A_2_o out_data 1 32 }  { A_2_o_ap_vld out_vld 1 1 } } }
	A_3 { ap_ovld {  { A_3_i in_data 0 32 }  { A_3_o out_data 1 32 }  { A_3_o_ap_vld out_vld 1 1 } } }
	A_4 { ap_ovld {  { A_4_i in_data 0 32 }  { A_4_o out_data 1 32 }  { A_4_o_ap_vld out_vld 1 1 } } }
	A_5 { ap_ovld {  { A_5_i in_data 0 32 }  { A_5_o out_data 1 32 }  { A_5_o_ap_vld out_vld 1 1 } } }
	A_6 { ap_ovld {  { A_6_i in_data 0 32 }  { A_6_o out_data 1 32 }  { A_6_o_ap_vld out_vld 1 1 } } }
	A_7 { ap_ovld {  { A_7_i in_data 0 32 }  { A_7_o out_data 1 32 }  { A_7_o_ap_vld out_vld 1 1 } } }
	A_8 { ap_ovld {  { A_8_i in_data 0 32 }  { A_8_o out_data 1 32 }  { A_8_o_ap_vld out_vld 1 1 } } }
	A_9 { ap_ovld {  { A_9_i in_data 0 32 }  { A_9_o out_data 1 32 }  { A_9_o_ap_vld out_vld 1 1 } } }
	A_10 { ap_ovld {  { A_10_i in_data 0 32 }  { A_10_o out_data 1 32 }  { A_10_o_ap_vld out_vld 1 1 } } }
	A_11 { ap_ovld {  { A_11_i in_data 0 32 }  { A_11_o out_data 1 32 }  { A_11_o_ap_vld out_vld 1 1 } } }
	A_12 { ap_ovld {  { A_12_i in_data 0 32 }  { A_12_o out_data 1 32 }  { A_12_o_ap_vld out_vld 1 1 } } }
	A_13 { ap_ovld {  { A_13_i in_data 0 32 }  { A_13_o out_data 1 32 }  { A_13_o_ap_vld out_vld 1 1 } } }
	A_14 { ap_ovld {  { A_14_i in_data 0 32 }  { A_14_o out_data 1 32 }  { A_14_o_ap_vld out_vld 1 1 } } }
	A_15 { ap_ovld {  { A_15_i in_data 0 32 }  { A_15_o out_data 1 32 }  { A_15_o_ap_vld out_vld 1 1 } } }
	A_16 { ap_ovld {  { A_16_i in_data 0 32 }  { A_16_o out_data 1 32 }  { A_16_o_ap_vld out_vld 1 1 } } }
	A_17 { ap_ovld {  { A_17_i in_data 0 32 }  { A_17_o out_data 1 32 }  { A_17_o_ap_vld out_vld 1 1 } } }
	A_18 { ap_ovld {  { A_18_i in_data 0 32 }  { A_18_o out_data 1 32 }  { A_18_o_ap_vld out_vld 1 1 } } }
	A_19 { ap_ovld {  { A_19_i in_data 0 32 }  { A_19_o out_data 1 32 }  { A_19_o_ap_vld out_vld 1 1 } } }
	A_20 { ap_ovld {  { A_20_i in_data 0 32 }  { A_20_o out_data 1 32 }  { A_20_o_ap_vld out_vld 1 1 } } }
	A_21 { ap_ovld {  { A_21_i in_data 0 32 }  { A_21_o out_data 1 32 }  { A_21_o_ap_vld out_vld 1 1 } } }
	A_22 { ap_ovld {  { A_22_i in_data 0 32 }  { A_22_o out_data 1 32 }  { A_22_o_ap_vld out_vld 1 1 } } }
	A_23 { ap_ovld {  { A_23_i in_data 0 32 }  { A_23_o out_data 1 32 }  { A_23_o_ap_vld out_vld 1 1 } } }
	A_24 { ap_ovld {  { A_24_i in_data 0 32 }  { A_24_o out_data 1 32 }  { A_24_o_ap_vld out_vld 1 1 } } }
	A_25 { ap_ovld {  { A_25_i in_data 0 32 }  { A_25_o out_data 1 32 }  { A_25_o_ap_vld out_vld 1 1 } } }
	A_26 { ap_ovld {  { A_26_i in_data 0 32 }  { A_26_o out_data 1 32 }  { A_26_o_ap_vld out_vld 1 1 } } }
	A_27 { ap_ovld {  { A_27_i in_data 0 32 }  { A_27_o out_data 1 32 }  { A_27_o_ap_vld out_vld 1 1 } } }
	A_28 { ap_ovld {  { A_28_i in_data 0 32 }  { A_28_o out_data 1 32 }  { A_28_o_ap_vld out_vld 1 1 } } }
	A_29 { ap_ovld {  { A_29_i in_data 0 32 }  { A_29_o out_data 1 32 }  { A_29_o_ap_vld out_vld 1 1 } } }
	A_30 { ap_ovld {  { A_30_i in_data 0 32 }  { A_30_o out_data 1 32 }  { A_30_o_ap_vld out_vld 1 1 } } }
	A_31 { ap_ovld {  { A_31_i in_data 0 32 }  { A_31_o out_data 1 32 }  { A_31_o_ap_vld out_vld 1 1 } } }
	A_32 { ap_ovld {  { A_32_i in_data 0 32 }  { A_32_o out_data 1 32 }  { A_32_o_ap_vld out_vld 1 1 } } }
	A_33 { ap_ovld {  { A_33_i in_data 0 32 }  { A_33_o out_data 1 32 }  { A_33_o_ap_vld out_vld 1 1 } } }
	A_34 { ap_ovld {  { A_34_i in_data 0 32 }  { A_34_o out_data 1 32 }  { A_34_o_ap_vld out_vld 1 1 } } }
	A_35 { ap_ovld {  { A_35_i in_data 0 32 }  { A_35_o out_data 1 32 }  { A_35_o_ap_vld out_vld 1 1 } } }
	A_36 { ap_ovld {  { A_36_i in_data 0 32 }  { A_36_o out_data 1 32 }  { A_36_o_ap_vld out_vld 1 1 } } }
	A_37 { ap_ovld {  { A_37_i in_data 0 32 }  { A_37_o out_data 1 32 }  { A_37_o_ap_vld out_vld 1 1 } } }
	A_38 { ap_ovld {  { A_38_i in_data 0 32 }  { A_38_o out_data 1 32 }  { A_38_o_ap_vld out_vld 1 1 } } }
	A_39 { ap_ovld {  { A_39_i in_data 0 32 }  { A_39_o out_data 1 32 }  { A_39_o_ap_vld out_vld 1 1 } } }
	A_40 { ap_ovld {  { A_40_i in_data 0 32 }  { A_40_o out_data 1 32 }  { A_40_o_ap_vld out_vld 1 1 } } }
	A_41 { ap_ovld {  { A_41_i in_data 0 32 }  { A_41_o out_data 1 32 }  { A_41_o_ap_vld out_vld 1 1 } } }
	A_42 { ap_ovld {  { A_42_i in_data 0 32 }  { A_42_o out_data 1 32 }  { A_42_o_ap_vld out_vld 1 1 } } }
	A_43 { ap_ovld {  { A_43_i in_data 0 32 }  { A_43_o out_data 1 32 }  { A_43_o_ap_vld out_vld 1 1 } } }
	A_44 { ap_ovld {  { A_44_i in_data 0 32 }  { A_44_o out_data 1 32 }  { A_44_o_ap_vld out_vld 1 1 } } }
	A_45 { ap_ovld {  { A_45_i in_data 0 32 }  { A_45_o out_data 1 32 }  { A_45_o_ap_vld out_vld 1 1 } } }
	A_46 { ap_ovld {  { A_46_i in_data 0 32 }  { A_46_o out_data 1 32 }  { A_46_o_ap_vld out_vld 1 1 } } }
	A_47 { ap_ovld {  { A_47_i in_data 0 32 }  { A_47_o out_data 1 32 }  { A_47_o_ap_vld out_vld 1 1 } } }
	A_48 { ap_ovld {  { A_48_i in_data 0 32 }  { A_48_o out_data 1 32 }  { A_48_o_ap_vld out_vld 1 1 } } }
	A_49 { ap_ovld {  { A_49_i in_data 0 32 }  { A_49_o out_data 1 32 }  { A_49_o_ap_vld out_vld 1 1 } } }
	A_50 { ap_ovld {  { A_50_i in_data 0 32 }  { A_50_o out_data 1 32 }  { A_50_o_ap_vld out_vld 1 1 } } }
	A_51 { ap_ovld {  { A_51_i in_data 0 32 }  { A_51_o out_data 1 32 }  { A_51_o_ap_vld out_vld 1 1 } } }
	A_52 { ap_ovld {  { A_52_i in_data 0 32 }  { A_52_o out_data 1 32 }  { A_52_o_ap_vld out_vld 1 1 } } }
	A_53 { ap_ovld {  { A_53_i in_data 0 32 }  { A_53_o out_data 1 32 }  { A_53_o_ap_vld out_vld 1 1 } } }
	A_54 { ap_ovld {  { A_54_i in_data 0 32 }  { A_54_o out_data 1 32 }  { A_54_o_ap_vld out_vld 1 1 } } }
	A_55 { ap_ovld {  { A_55_i in_data 0 32 }  { A_55_o out_data 1 32 }  { A_55_o_ap_vld out_vld 1 1 } } }
	A_56 { ap_ovld {  { A_56_i in_data 0 32 }  { A_56_o out_data 1 32 }  { A_56_o_ap_vld out_vld 1 1 } } }
	A_57 { ap_ovld {  { A_57_i in_data 0 32 }  { A_57_o out_data 1 32 }  { A_57_o_ap_vld out_vld 1 1 } } }
	A_58 { ap_ovld {  { A_58_i in_data 0 32 }  { A_58_o out_data 1 32 }  { A_58_o_ap_vld out_vld 1 1 } } }
	A_59 { ap_ovld {  { A_59_i in_data 0 32 }  { A_59_o out_data 1 32 }  { A_59_o_ap_vld out_vld 1 1 } } }
	A_60 { ap_ovld {  { A_60_i in_data 0 32 }  { A_60_o out_data 1 32 }  { A_60_o_ap_vld out_vld 1 1 } } }
	A_61 { ap_ovld {  { A_61_i in_data 0 32 }  { A_61_o out_data 1 32 }  { A_61_o_ap_vld out_vld 1 1 } } }
	A_62 { ap_ovld {  { A_62_i in_data 0 32 }  { A_62_o out_data 1 32 }  { A_62_o_ap_vld out_vld 1 1 } } }
	A_63 { ap_ovld {  { A_63_i in_data 0 32 }  { A_63_o out_data 1 32 }  { A_63_o_ap_vld out_vld 1 1 } } }
	alpha { ap_none {  { alpha in_data 0 32 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_0 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_0 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
