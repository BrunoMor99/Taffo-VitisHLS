// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xvs.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVs_CfgInitialize(XVs *InstancePtr, XVs_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVs_Set_A_0(XVs *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVs_WriteReg(InstancePtr->Control_BaseAddress, XVS_CONTROL_ADDR_A_0_DATA, (u32)(Data));
    XVs_WriteReg(InstancePtr->Control_BaseAddress, XVS_CONTROL_ADDR_A_0_DATA + 4, (u32)(Data >> 32));
}

u64 XVs_Get_A_0(XVs *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVs_ReadReg(InstancePtr->Control_BaseAddress, XVS_CONTROL_ADDR_A_0_DATA);
    Data += (u64)XVs_ReadReg(InstancePtr->Control_BaseAddress, XVS_CONTROL_ADDR_A_0_DATA + 4) << 32;
    return Data;
}

