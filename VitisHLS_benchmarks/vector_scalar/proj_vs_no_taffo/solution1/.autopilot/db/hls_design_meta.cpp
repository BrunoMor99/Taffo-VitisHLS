#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("m_axi_gmem_0_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem_0_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem_0_AWADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem_0_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem_0_AWLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem_0_AWSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem_0_AWBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem_0_AWLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem_0_AWCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem_0_AWPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem_0_AWQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem_0_AWREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem_0_AWUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem_0_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem_0_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem_0_WDATA", 32, hls_out, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem_0_WSTRB", 4, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_gmem_0_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem_0_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem_0_WUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem_0_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem_0_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem_0_ARADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem_0_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem_0_ARLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem_0_ARSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem_0_ARBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem_0_ARLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem_0_ARCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem_0_ARPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem_0_ARQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem_0_ARREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem_0_ARUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem_0_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem_0_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem_0_RDATA", 32, hls_in, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem_0_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem_0_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem_0_RUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem_0_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem_0_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem_0_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem_0_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem_0_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem_0_BUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("A_1_i", 32, hls_in, 2, "ap_ovld", "in_data", 1),
	Port_Property("A_1_o", 32, hls_out, 2, "ap_ovld", "out_data", 1),
	Port_Property("A_1_o_ap_vld", 1, hls_out, 2, "ap_ovld", "out_vld", 1),
	Port_Property("A_2_i", 32, hls_in, 3, "ap_ovld", "in_data", 1),
	Port_Property("A_2_o", 32, hls_out, 3, "ap_ovld", "out_data", 1),
	Port_Property("A_2_o_ap_vld", 1, hls_out, 3, "ap_ovld", "out_vld", 1),
	Port_Property("A_3_i", 32, hls_in, 4, "ap_ovld", "in_data", 1),
	Port_Property("A_3_o", 32, hls_out, 4, "ap_ovld", "out_data", 1),
	Port_Property("A_3_o_ap_vld", 1, hls_out, 4, "ap_ovld", "out_vld", 1),
	Port_Property("A_4_i", 32, hls_in, 5, "ap_ovld", "in_data", 1),
	Port_Property("A_4_o", 32, hls_out, 5, "ap_ovld", "out_data", 1),
	Port_Property("A_4_o_ap_vld", 1, hls_out, 5, "ap_ovld", "out_vld", 1),
	Port_Property("A_5_i", 32, hls_in, 6, "ap_ovld", "in_data", 1),
	Port_Property("A_5_o", 32, hls_out, 6, "ap_ovld", "out_data", 1),
	Port_Property("A_5_o_ap_vld", 1, hls_out, 6, "ap_ovld", "out_vld", 1),
	Port_Property("A_6_i", 32, hls_in, 7, "ap_ovld", "in_data", 1),
	Port_Property("A_6_o", 32, hls_out, 7, "ap_ovld", "out_data", 1),
	Port_Property("A_6_o_ap_vld", 1, hls_out, 7, "ap_ovld", "out_vld", 1),
	Port_Property("A_7_i", 32, hls_in, 8, "ap_ovld", "in_data", 1),
	Port_Property("A_7_o", 32, hls_out, 8, "ap_ovld", "out_data", 1),
	Port_Property("A_7_o_ap_vld", 1, hls_out, 8, "ap_ovld", "out_vld", 1),
	Port_Property("A_8_i", 32, hls_in, 9, "ap_ovld", "in_data", 1),
	Port_Property("A_8_o", 32, hls_out, 9, "ap_ovld", "out_data", 1),
	Port_Property("A_8_o_ap_vld", 1, hls_out, 9, "ap_ovld", "out_vld", 1),
	Port_Property("A_9_i", 32, hls_in, 10, "ap_ovld", "in_data", 1),
	Port_Property("A_9_o", 32, hls_out, 10, "ap_ovld", "out_data", 1),
	Port_Property("A_9_o_ap_vld", 1, hls_out, 10, "ap_ovld", "out_vld", 1),
	Port_Property("A_10_i", 32, hls_in, 11, "ap_ovld", "in_data", 1),
	Port_Property("A_10_o", 32, hls_out, 11, "ap_ovld", "out_data", 1),
	Port_Property("A_10_o_ap_vld", 1, hls_out, 11, "ap_ovld", "out_vld", 1),
	Port_Property("A_11_i", 32, hls_in, 12, "ap_ovld", "in_data", 1),
	Port_Property("A_11_o", 32, hls_out, 12, "ap_ovld", "out_data", 1),
	Port_Property("A_11_o_ap_vld", 1, hls_out, 12, "ap_ovld", "out_vld", 1),
	Port_Property("A_12_i", 32, hls_in, 13, "ap_ovld", "in_data", 1),
	Port_Property("A_12_o", 32, hls_out, 13, "ap_ovld", "out_data", 1),
	Port_Property("A_12_o_ap_vld", 1, hls_out, 13, "ap_ovld", "out_vld", 1),
	Port_Property("A_13_i", 32, hls_in, 14, "ap_ovld", "in_data", 1),
	Port_Property("A_13_o", 32, hls_out, 14, "ap_ovld", "out_data", 1),
	Port_Property("A_13_o_ap_vld", 1, hls_out, 14, "ap_ovld", "out_vld", 1),
	Port_Property("A_14_i", 32, hls_in, 15, "ap_ovld", "in_data", 1),
	Port_Property("A_14_o", 32, hls_out, 15, "ap_ovld", "out_data", 1),
	Port_Property("A_14_o_ap_vld", 1, hls_out, 15, "ap_ovld", "out_vld", 1),
	Port_Property("A_15_i", 32, hls_in, 16, "ap_ovld", "in_data", 1),
	Port_Property("A_15_o", 32, hls_out, 16, "ap_ovld", "out_data", 1),
	Port_Property("A_15_o_ap_vld", 1, hls_out, 16, "ap_ovld", "out_vld", 1),
	Port_Property("A_16_i", 32, hls_in, 17, "ap_ovld", "in_data", 1),
	Port_Property("A_16_o", 32, hls_out, 17, "ap_ovld", "out_data", 1),
	Port_Property("A_16_o_ap_vld", 1, hls_out, 17, "ap_ovld", "out_vld", 1),
	Port_Property("A_17_i", 32, hls_in, 18, "ap_ovld", "in_data", 1),
	Port_Property("A_17_o", 32, hls_out, 18, "ap_ovld", "out_data", 1),
	Port_Property("A_17_o_ap_vld", 1, hls_out, 18, "ap_ovld", "out_vld", 1),
	Port_Property("A_18_i", 32, hls_in, 19, "ap_ovld", "in_data", 1),
	Port_Property("A_18_o", 32, hls_out, 19, "ap_ovld", "out_data", 1),
	Port_Property("A_18_o_ap_vld", 1, hls_out, 19, "ap_ovld", "out_vld", 1),
	Port_Property("A_19_i", 32, hls_in, 20, "ap_ovld", "in_data", 1),
	Port_Property("A_19_o", 32, hls_out, 20, "ap_ovld", "out_data", 1),
	Port_Property("A_19_o_ap_vld", 1, hls_out, 20, "ap_ovld", "out_vld", 1),
	Port_Property("A_20_i", 32, hls_in, 21, "ap_ovld", "in_data", 1),
	Port_Property("A_20_o", 32, hls_out, 21, "ap_ovld", "out_data", 1),
	Port_Property("A_20_o_ap_vld", 1, hls_out, 21, "ap_ovld", "out_vld", 1),
	Port_Property("A_21_i", 32, hls_in, 22, "ap_ovld", "in_data", 1),
	Port_Property("A_21_o", 32, hls_out, 22, "ap_ovld", "out_data", 1),
	Port_Property("A_21_o_ap_vld", 1, hls_out, 22, "ap_ovld", "out_vld", 1),
	Port_Property("A_22_i", 32, hls_in, 23, "ap_ovld", "in_data", 1),
	Port_Property("A_22_o", 32, hls_out, 23, "ap_ovld", "out_data", 1),
	Port_Property("A_22_o_ap_vld", 1, hls_out, 23, "ap_ovld", "out_vld", 1),
	Port_Property("A_23_i", 32, hls_in, 24, "ap_ovld", "in_data", 1),
	Port_Property("A_23_o", 32, hls_out, 24, "ap_ovld", "out_data", 1),
	Port_Property("A_23_o_ap_vld", 1, hls_out, 24, "ap_ovld", "out_vld", 1),
	Port_Property("A_24_i", 32, hls_in, 25, "ap_ovld", "in_data", 1),
	Port_Property("A_24_o", 32, hls_out, 25, "ap_ovld", "out_data", 1),
	Port_Property("A_24_o_ap_vld", 1, hls_out, 25, "ap_ovld", "out_vld", 1),
	Port_Property("A_25_i", 32, hls_in, 26, "ap_ovld", "in_data", 1),
	Port_Property("A_25_o", 32, hls_out, 26, "ap_ovld", "out_data", 1),
	Port_Property("A_25_o_ap_vld", 1, hls_out, 26, "ap_ovld", "out_vld", 1),
	Port_Property("A_26_i", 32, hls_in, 27, "ap_ovld", "in_data", 1),
	Port_Property("A_26_o", 32, hls_out, 27, "ap_ovld", "out_data", 1),
	Port_Property("A_26_o_ap_vld", 1, hls_out, 27, "ap_ovld", "out_vld", 1),
	Port_Property("A_27_i", 32, hls_in, 28, "ap_ovld", "in_data", 1),
	Port_Property("A_27_o", 32, hls_out, 28, "ap_ovld", "out_data", 1),
	Port_Property("A_27_o_ap_vld", 1, hls_out, 28, "ap_ovld", "out_vld", 1),
	Port_Property("A_28_i", 32, hls_in, 29, "ap_ovld", "in_data", 1),
	Port_Property("A_28_o", 32, hls_out, 29, "ap_ovld", "out_data", 1),
	Port_Property("A_28_o_ap_vld", 1, hls_out, 29, "ap_ovld", "out_vld", 1),
	Port_Property("A_29_i", 32, hls_in, 30, "ap_ovld", "in_data", 1),
	Port_Property("A_29_o", 32, hls_out, 30, "ap_ovld", "out_data", 1),
	Port_Property("A_29_o_ap_vld", 1, hls_out, 30, "ap_ovld", "out_vld", 1),
	Port_Property("A_30_i", 32, hls_in, 31, "ap_ovld", "in_data", 1),
	Port_Property("A_30_o", 32, hls_out, 31, "ap_ovld", "out_data", 1),
	Port_Property("A_30_o_ap_vld", 1, hls_out, 31, "ap_ovld", "out_vld", 1),
	Port_Property("A_31_i", 32, hls_in, 32, "ap_ovld", "in_data", 1),
	Port_Property("A_31_o", 32, hls_out, 32, "ap_ovld", "out_data", 1),
	Port_Property("A_31_o_ap_vld", 1, hls_out, 32, "ap_ovld", "out_vld", 1),
	Port_Property("A_32_i", 32, hls_in, 33, "ap_ovld", "in_data", 1),
	Port_Property("A_32_o", 32, hls_out, 33, "ap_ovld", "out_data", 1),
	Port_Property("A_32_o_ap_vld", 1, hls_out, 33, "ap_ovld", "out_vld", 1),
	Port_Property("A_33_i", 32, hls_in, 34, "ap_ovld", "in_data", 1),
	Port_Property("A_33_o", 32, hls_out, 34, "ap_ovld", "out_data", 1),
	Port_Property("A_33_o_ap_vld", 1, hls_out, 34, "ap_ovld", "out_vld", 1),
	Port_Property("A_34_i", 32, hls_in, 35, "ap_ovld", "in_data", 1),
	Port_Property("A_34_o", 32, hls_out, 35, "ap_ovld", "out_data", 1),
	Port_Property("A_34_o_ap_vld", 1, hls_out, 35, "ap_ovld", "out_vld", 1),
	Port_Property("A_35_i", 32, hls_in, 36, "ap_ovld", "in_data", 1),
	Port_Property("A_35_o", 32, hls_out, 36, "ap_ovld", "out_data", 1),
	Port_Property("A_35_o_ap_vld", 1, hls_out, 36, "ap_ovld", "out_vld", 1),
	Port_Property("A_36_i", 32, hls_in, 37, "ap_ovld", "in_data", 1),
	Port_Property("A_36_o", 32, hls_out, 37, "ap_ovld", "out_data", 1),
	Port_Property("A_36_o_ap_vld", 1, hls_out, 37, "ap_ovld", "out_vld", 1),
	Port_Property("A_37_i", 32, hls_in, 38, "ap_ovld", "in_data", 1),
	Port_Property("A_37_o", 32, hls_out, 38, "ap_ovld", "out_data", 1),
	Port_Property("A_37_o_ap_vld", 1, hls_out, 38, "ap_ovld", "out_vld", 1),
	Port_Property("A_38_i", 32, hls_in, 39, "ap_ovld", "in_data", 1),
	Port_Property("A_38_o", 32, hls_out, 39, "ap_ovld", "out_data", 1),
	Port_Property("A_38_o_ap_vld", 1, hls_out, 39, "ap_ovld", "out_vld", 1),
	Port_Property("A_39_i", 32, hls_in, 40, "ap_ovld", "in_data", 1),
	Port_Property("A_39_o", 32, hls_out, 40, "ap_ovld", "out_data", 1),
	Port_Property("A_39_o_ap_vld", 1, hls_out, 40, "ap_ovld", "out_vld", 1),
	Port_Property("A_40_i", 32, hls_in, 41, "ap_ovld", "in_data", 1),
	Port_Property("A_40_o", 32, hls_out, 41, "ap_ovld", "out_data", 1),
	Port_Property("A_40_o_ap_vld", 1, hls_out, 41, "ap_ovld", "out_vld", 1),
	Port_Property("A_41_i", 32, hls_in, 42, "ap_ovld", "in_data", 1),
	Port_Property("A_41_o", 32, hls_out, 42, "ap_ovld", "out_data", 1),
	Port_Property("A_41_o_ap_vld", 1, hls_out, 42, "ap_ovld", "out_vld", 1),
	Port_Property("A_42_i", 32, hls_in, 43, "ap_ovld", "in_data", 1),
	Port_Property("A_42_o", 32, hls_out, 43, "ap_ovld", "out_data", 1),
	Port_Property("A_42_o_ap_vld", 1, hls_out, 43, "ap_ovld", "out_vld", 1),
	Port_Property("A_43_i", 32, hls_in, 44, "ap_ovld", "in_data", 1),
	Port_Property("A_43_o", 32, hls_out, 44, "ap_ovld", "out_data", 1),
	Port_Property("A_43_o_ap_vld", 1, hls_out, 44, "ap_ovld", "out_vld", 1),
	Port_Property("A_44_i", 32, hls_in, 45, "ap_ovld", "in_data", 1),
	Port_Property("A_44_o", 32, hls_out, 45, "ap_ovld", "out_data", 1),
	Port_Property("A_44_o_ap_vld", 1, hls_out, 45, "ap_ovld", "out_vld", 1),
	Port_Property("A_45_i", 32, hls_in, 46, "ap_ovld", "in_data", 1),
	Port_Property("A_45_o", 32, hls_out, 46, "ap_ovld", "out_data", 1),
	Port_Property("A_45_o_ap_vld", 1, hls_out, 46, "ap_ovld", "out_vld", 1),
	Port_Property("A_46_i", 32, hls_in, 47, "ap_ovld", "in_data", 1),
	Port_Property("A_46_o", 32, hls_out, 47, "ap_ovld", "out_data", 1),
	Port_Property("A_46_o_ap_vld", 1, hls_out, 47, "ap_ovld", "out_vld", 1),
	Port_Property("A_47_i", 32, hls_in, 48, "ap_ovld", "in_data", 1),
	Port_Property("A_47_o", 32, hls_out, 48, "ap_ovld", "out_data", 1),
	Port_Property("A_47_o_ap_vld", 1, hls_out, 48, "ap_ovld", "out_vld", 1),
	Port_Property("A_48_i", 32, hls_in, 49, "ap_ovld", "in_data", 1),
	Port_Property("A_48_o", 32, hls_out, 49, "ap_ovld", "out_data", 1),
	Port_Property("A_48_o_ap_vld", 1, hls_out, 49, "ap_ovld", "out_vld", 1),
	Port_Property("A_49_i", 32, hls_in, 50, "ap_ovld", "in_data", 1),
	Port_Property("A_49_o", 32, hls_out, 50, "ap_ovld", "out_data", 1),
	Port_Property("A_49_o_ap_vld", 1, hls_out, 50, "ap_ovld", "out_vld", 1),
	Port_Property("A_50_i", 32, hls_in, 51, "ap_ovld", "in_data", 1),
	Port_Property("A_50_o", 32, hls_out, 51, "ap_ovld", "out_data", 1),
	Port_Property("A_50_o_ap_vld", 1, hls_out, 51, "ap_ovld", "out_vld", 1),
	Port_Property("A_51_i", 32, hls_in, 52, "ap_ovld", "in_data", 1),
	Port_Property("A_51_o", 32, hls_out, 52, "ap_ovld", "out_data", 1),
	Port_Property("A_51_o_ap_vld", 1, hls_out, 52, "ap_ovld", "out_vld", 1),
	Port_Property("A_52_i", 32, hls_in, 53, "ap_ovld", "in_data", 1),
	Port_Property("A_52_o", 32, hls_out, 53, "ap_ovld", "out_data", 1),
	Port_Property("A_52_o_ap_vld", 1, hls_out, 53, "ap_ovld", "out_vld", 1),
	Port_Property("A_53_i", 32, hls_in, 54, "ap_ovld", "in_data", 1),
	Port_Property("A_53_o", 32, hls_out, 54, "ap_ovld", "out_data", 1),
	Port_Property("A_53_o_ap_vld", 1, hls_out, 54, "ap_ovld", "out_vld", 1),
	Port_Property("A_54_i", 32, hls_in, 55, "ap_ovld", "in_data", 1),
	Port_Property("A_54_o", 32, hls_out, 55, "ap_ovld", "out_data", 1),
	Port_Property("A_54_o_ap_vld", 1, hls_out, 55, "ap_ovld", "out_vld", 1),
	Port_Property("A_55_i", 32, hls_in, 56, "ap_ovld", "in_data", 1),
	Port_Property("A_55_o", 32, hls_out, 56, "ap_ovld", "out_data", 1),
	Port_Property("A_55_o_ap_vld", 1, hls_out, 56, "ap_ovld", "out_vld", 1),
	Port_Property("A_56_i", 32, hls_in, 57, "ap_ovld", "in_data", 1),
	Port_Property("A_56_o", 32, hls_out, 57, "ap_ovld", "out_data", 1),
	Port_Property("A_56_o_ap_vld", 1, hls_out, 57, "ap_ovld", "out_vld", 1),
	Port_Property("A_57_i", 32, hls_in, 58, "ap_ovld", "in_data", 1),
	Port_Property("A_57_o", 32, hls_out, 58, "ap_ovld", "out_data", 1),
	Port_Property("A_57_o_ap_vld", 1, hls_out, 58, "ap_ovld", "out_vld", 1),
	Port_Property("A_58_i", 32, hls_in, 59, "ap_ovld", "in_data", 1),
	Port_Property("A_58_o", 32, hls_out, 59, "ap_ovld", "out_data", 1),
	Port_Property("A_58_o_ap_vld", 1, hls_out, 59, "ap_ovld", "out_vld", 1),
	Port_Property("A_59_i", 32, hls_in, 60, "ap_ovld", "in_data", 1),
	Port_Property("A_59_o", 32, hls_out, 60, "ap_ovld", "out_data", 1),
	Port_Property("A_59_o_ap_vld", 1, hls_out, 60, "ap_ovld", "out_vld", 1),
	Port_Property("A_60_i", 32, hls_in, 61, "ap_ovld", "in_data", 1),
	Port_Property("A_60_o", 32, hls_out, 61, "ap_ovld", "out_data", 1),
	Port_Property("A_60_o_ap_vld", 1, hls_out, 61, "ap_ovld", "out_vld", 1),
	Port_Property("A_61_i", 32, hls_in, 62, "ap_ovld", "in_data", 1),
	Port_Property("A_61_o", 32, hls_out, 62, "ap_ovld", "out_data", 1),
	Port_Property("A_61_o_ap_vld", 1, hls_out, 62, "ap_ovld", "out_vld", 1),
	Port_Property("A_62_i", 32, hls_in, 63, "ap_ovld", "in_data", 1),
	Port_Property("A_62_o", 32, hls_out, 63, "ap_ovld", "out_data", 1),
	Port_Property("A_62_o_ap_vld", 1, hls_out, 63, "ap_ovld", "out_vld", 1),
	Port_Property("A_63_i", 32, hls_in, 64, "ap_ovld", "in_data", 1),
	Port_Property("A_63_o", 32, hls_out, 64, "ap_ovld", "out_data", 1),
	Port_Property("A_63_o_ap_vld", 1, hls_out, 64, "ap_ovld", "out_vld", 1),
	Port_Property("alpha", 32, hls_in, 65, "ap_none", "in_data", 1),
	Port_Property("ap_return", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "vs";