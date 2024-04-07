// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcovariance.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCovariance_CfgInitialize(XCovariance *InstancePtr, XCovariance_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCovariance_Set_data(XCovariance *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCovariance_WriteReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_DATA_DATA, (u32)(Data));
    XCovariance_WriteReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XCovariance_Get_data(XCovariance *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCovariance_ReadReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_DATA_DATA);
    Data += (u64)XCovariance_ReadReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_DATA_DATA + 4) << 32;
    return Data;
}

void XCovariance_Set_cov(XCovariance *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCovariance_WriteReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_COV_DATA, (u32)(Data));
    XCovariance_WriteReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_COV_DATA + 4, (u32)(Data >> 32));
}

u64 XCovariance_Get_cov(XCovariance *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCovariance_ReadReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_COV_DATA);
    Data += (u64)XCovariance_ReadReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_COV_DATA + 4) << 32;
    return Data;
}

void XCovariance_Set_mean(XCovariance *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCovariance_WriteReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_MEAN_DATA, (u32)(Data));
    XCovariance_WriteReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_MEAN_DATA + 4, (u32)(Data >> 32));
}

u64 XCovariance_Get_mean(XCovariance *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCovariance_ReadReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_MEAN_DATA);
    Data += (u64)XCovariance_ReadReg(InstancePtr->Control_BaseAddress, XCOVARIANCE_CONTROL_ADDR_MEAN_DATA + 4) << 32;
    return Data;
}

