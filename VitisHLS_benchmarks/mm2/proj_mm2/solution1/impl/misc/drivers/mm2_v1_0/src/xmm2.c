// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmm2.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMm2_CfgInitialize(XMm2 *InstancePtr, XMm2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMm2_Set_A(XMm2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm2_WriteReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_A_DATA, (u32)(Data));
    XMm2_WriteReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XMm2_Get_A(XMm2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm2_ReadReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_A_DATA);
    Data += (u64)XMm2_ReadReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XMm2_Set_B(XMm2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm2_WriteReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_B_DATA, (u32)(Data));
    XMm2_WriteReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XMm2_Get_B(XMm2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm2_ReadReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_B_DATA);
    Data += (u64)XMm2_ReadReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XMm2_Set_C(XMm2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm2_WriteReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_C_DATA, (u32)(Data));
    XMm2_WriteReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XMm2_Get_C(XMm2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm2_ReadReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_C_DATA);
    Data += (u64)XMm2_ReadReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XMm2_Set_D(XMm2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm2_WriteReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_D_DATA, (u32)(Data));
    XMm2_WriteReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_D_DATA + 4, (u32)(Data >> 32));
}

u64 XMm2_Get_D(XMm2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm2_ReadReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_D_DATA);
    Data += (u64)XMm2_ReadReg(InstancePtr->Control_BaseAddress, XMM2_CONTROL_ADDR_D_DATA + 4) << 32;
    return Data;
}

