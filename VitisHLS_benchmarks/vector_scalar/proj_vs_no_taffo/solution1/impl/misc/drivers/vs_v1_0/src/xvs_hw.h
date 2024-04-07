// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of A_0
//        bit 31~0 - A_0[31:0] (Read/Write)
// 0x14 : Data signal of A_0
//        bit 31~0 - A_0[63:32] (Read/Write)
// 0x18 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XVS_CONTROL_ADDR_A_0_DATA 0x10
#define XVS_CONTROL_BITS_A_0_DATA 64

