// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xarray_copy.h"

extern XArray_copy_Config XArray_copy_ConfigTable[];

XArray_copy_Config *XArray_copy_LookupConfig(u16 DeviceId) {
	XArray_copy_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XARRAY_COPY_NUM_INSTANCES; Index++) {
		if (XArray_copy_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XArray_copy_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XArray_copy_Initialize(XArray_copy *InstancePtr, u16 DeviceId) {
	XArray_copy_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XArray_copy_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XArray_copy_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

