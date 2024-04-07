// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xvs.h"

extern XVs_Config XVs_ConfigTable[];

XVs_Config *XVs_LookupConfig(u16 DeviceId) {
	XVs_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVS_NUM_INSTANCES; Index++) {
		if (XVs_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVs_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVs_Initialize(XVs *InstancePtr, u16 DeviceId) {
	XVs_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVs_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVs_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

