// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xatax.h"

extern XAtax_Config XAtax_ConfigTable[];

XAtax_Config *XAtax_LookupConfig(u16 DeviceId) {
	XAtax_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XATAX_NUM_INSTANCES; Index++) {
		if (XAtax_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAtax_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAtax_Initialize(XAtax *InstancePtr, u16 DeviceId) {
	XAtax_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAtax_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAtax_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

