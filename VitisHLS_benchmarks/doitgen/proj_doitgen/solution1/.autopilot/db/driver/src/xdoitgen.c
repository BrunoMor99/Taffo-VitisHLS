// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdoitgen.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDoitgen_CfgInitialize(XDoitgen *InstancePtr, XDoitgen_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDoitgen_Set_A(XDoitgen *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDoitgen_WriteReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_A_DATA, (u32)(Data));
    XDoitgen_WriteReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XDoitgen_Get_A(XDoitgen *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDoitgen_ReadReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_A_DATA);
    Data += (u64)XDoitgen_ReadReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XDoitgen_Set_C(XDoitgen *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDoitgen_WriteReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_C_DATA, (u32)(Data));
    XDoitgen_WriteReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XDoitgen_Get_C(XDoitgen *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDoitgen_ReadReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_C_DATA);
    Data += (u64)XDoitgen_ReadReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XDoitgen_Set_sum(XDoitgen *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDoitgen_WriteReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_SUM_DATA, (u32)(Data));
    XDoitgen_WriteReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_SUM_DATA + 4, (u32)(Data >> 32));
}

u64 XDoitgen_Get_sum(XDoitgen *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDoitgen_ReadReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_SUM_DATA);
    Data += (u64)XDoitgen_ReadReg(InstancePtr->Control_BaseAddress, XDOITGEN_CONTROL_ADDR_SUM_DATA + 4) << 32;
    return Data;
}

