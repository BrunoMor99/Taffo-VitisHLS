// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xarray_copy.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XArray_copy_CfgInitialize(XArray_copy *InstancePtr, XArray_copy_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XArray_copy_Set_y(XArray_copy *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XArray_copy_WriteReg(InstancePtr->Control_BaseAddress, XARRAY_COPY_CONTROL_ADDR_Y_DATA, (u32)(Data));
    XArray_copy_WriteReg(InstancePtr->Control_BaseAddress, XARRAY_COPY_CONTROL_ADDR_Y_DATA + 4, (u32)(Data >> 32));
}

u64 XArray_copy_Get_y(XArray_copy *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XArray_copy_ReadReg(InstancePtr->Control_BaseAddress, XARRAY_COPY_CONTROL_ADDR_Y_DATA);
    Data += (u64)XArray_copy_ReadReg(InstancePtr->Control_BaseAddress, XARRAY_COPY_CONTROL_ADDR_Y_DATA + 4) << 32;
    return Data;
}

