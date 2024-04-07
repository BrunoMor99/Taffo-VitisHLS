// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xatax.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAtax_CfgInitialize(XAtax *InstancePtr, XAtax_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAtax_Set_A(XAtax *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtax_WriteReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_A_DATA, (u32)(Data));
    XAtax_WriteReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XAtax_Get_A(XAtax *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtax_ReadReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_A_DATA);
    Data += (u64)XAtax_ReadReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XAtax_Set_x(XAtax *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtax_WriteReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_X_DATA, (u32)(Data));
    XAtax_WriteReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_X_DATA + 4, (u32)(Data >> 32));
}

u64 XAtax_Get_x(XAtax *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtax_ReadReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_X_DATA);
    Data += (u64)XAtax_ReadReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_X_DATA + 4) << 32;
    return Data;
}

void XAtax_Set_y(XAtax *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtax_WriteReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_Y_DATA, (u32)(Data));
    XAtax_WriteReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_Y_DATA + 4, (u32)(Data >> 32));
}

u64 XAtax_Get_y(XAtax *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtax_ReadReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_Y_DATA);
    Data += (u64)XAtax_ReadReg(InstancePtr->Control_BaseAddress, XATAX_CONTROL_ADDR_Y_DATA + 4) << 32;
    return Data;
}

