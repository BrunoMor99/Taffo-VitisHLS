// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmm3.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMm3_CfgInitialize(XMm3 *InstancePtr, XMm3_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMm3_Set_A(XMm3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_A_DATA, (u32)(Data));
    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XMm3_Get_A(XMm3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_A_DATA);
    Data += (u64)XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XMm3_Set_B(XMm3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_B_DATA, (u32)(Data));
    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XMm3_Get_B(XMm3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_B_DATA);
    Data += (u64)XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XMm3_Set_C(XMm3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_C_DATA, (u32)(Data));
    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XMm3_Get_C(XMm3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_C_DATA);
    Data += (u64)XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XMm3_Set_D(XMm3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_D_DATA, (u32)(Data));
    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_D_DATA + 4, (u32)(Data >> 32));
}

u64 XMm3_Get_D(XMm3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_D_DATA);
    Data += (u64)XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_D_DATA + 4) << 32;
    return Data;
}

void XMm3_Set_E(XMm3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_E_DATA, (u32)(Data));
    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_E_DATA + 4, (u32)(Data >> 32));
}

u64 XMm3_Get_E(XMm3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_E_DATA);
    Data += (u64)XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_E_DATA + 4) << 32;
    return Data;
}

void XMm3_Set_F(XMm3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_F_DATA, (u32)(Data));
    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_F_DATA + 4, (u32)(Data >> 32));
}

u64 XMm3_Get_F(XMm3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_F_DATA);
    Data += (u64)XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_F_DATA + 4) << 32;
    return Data;
}

void XMm3_Set_G(XMm3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_G_DATA, (u32)(Data));
    XMm3_WriteReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_G_DATA + 4, (u32)(Data >> 32));
}

u64 XMm3_Get_G(XMm3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_G_DATA);
    Data += (u64)XMm3_ReadReg(InstancePtr->Control_BaseAddress, XMM3_CONTROL_ADDR_G_DATA + 4) << 32;
    return Data;
}

