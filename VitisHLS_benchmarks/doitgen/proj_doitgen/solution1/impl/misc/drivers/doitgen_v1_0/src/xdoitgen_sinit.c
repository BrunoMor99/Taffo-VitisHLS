// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdoitgen.h"

extern XDoitgen_Config XDoitgen_ConfigTable[];

XDoitgen_Config *XDoitgen_LookupConfig(u16 DeviceId) {
	XDoitgen_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDOITGEN_NUM_INSTANCES; Index++) {
		if (XDoitgen_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDoitgen_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDoitgen_Initialize(XDoitgen *InstancePtr, u16 DeviceId) {
	XDoitgen_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDoitgen_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDoitgen_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

