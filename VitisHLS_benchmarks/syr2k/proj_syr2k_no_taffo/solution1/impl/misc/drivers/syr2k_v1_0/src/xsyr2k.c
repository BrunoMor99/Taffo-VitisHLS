// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsyr2k.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSyr2k_CfgInitialize(XSyr2k *InstancePtr, XSyr2k_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSyr2k_Set_A(XSyr2k *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSyr2k_WriteReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_A_DATA, (u32)(Data));
    XSyr2k_WriteReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XSyr2k_Get_A(XSyr2k *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSyr2k_ReadReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_A_DATA);
    Data += (u64)XSyr2k_ReadReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XSyr2k_Set_B(XSyr2k *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSyr2k_WriteReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_B_DATA, (u32)(Data));
    XSyr2k_WriteReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XSyr2k_Get_B(XSyr2k *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSyr2k_ReadReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_B_DATA);
    Data += (u64)XSyr2k_ReadReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XSyr2k_Set_C(XSyr2k *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSyr2k_WriteReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_C_DATA, (u32)(Data));
    XSyr2k_WriteReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XSyr2k_Get_C(XSyr2k *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSyr2k_ReadReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_C_DATA);
    Data += (u64)XSyr2k_ReadReg(InstancePtr->Control_BaseAddress, XSYR2K_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

