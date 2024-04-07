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
// 0x10 : Data signal of A
//        bit 31~0 - A[31:0] (Read/Write)
// 0x14 : Data signal of A
//        bit 31~0 - A[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of B
//        bit 31~0 - B[31:0] (Read/Write)
// 0x20 : Data signal of B
//        bit 31~0 - B[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of C
//        bit 31~0 - C[31:0] (Read/Write)
// 0x2c : Data signal of C
//        bit 31~0 - C[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of D
//        bit 31~0 - D[31:0] (Read/Write)
// 0x38 : Data signal of D
//        bit 31~0 - D[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of E
//        bit 31~0 - E[31:0] (Read/Write)
// 0x44 : Data signal of E
//        bit 31~0 - E[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of F
//        bit 31~0 - F[31:0] (Read/Write)
// 0x50 : Data signal of F
//        bit 31~0 - F[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of G
//        bit 31~0 - G[31:0] (Read/Write)
// 0x5c : Data signal of G
//        bit 31~0 - G[63:32] (Read/Write)
// 0x60 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMM3_CONTROL_ADDR_A_DATA 0x10
#define XMM3_CONTROL_BITS_A_DATA 64
#define XMM3_CONTROL_ADDR_B_DATA 0x1c
#define XMM3_CONTROL_BITS_B_DATA 64
#define XMM3_CONTROL_ADDR_C_DATA 0x28
#define XMM3_CONTROL_BITS_C_DATA 64
#define XMM3_CONTROL_ADDR_D_DATA 0x34
#define XMM3_CONTROL_BITS_D_DATA 64
#define XMM3_CONTROL_ADDR_E_DATA 0x40
#define XMM3_CONTROL_BITS_E_DATA 64
#define XMM3_CONTROL_ADDR_F_DATA 0x4c
#define XMM3_CONTROL_BITS_F_DATA 64
#define XMM3_CONTROL_ADDR_G_DATA 0x58
#define XMM3_CONTROL_BITS_G_DATA 64

