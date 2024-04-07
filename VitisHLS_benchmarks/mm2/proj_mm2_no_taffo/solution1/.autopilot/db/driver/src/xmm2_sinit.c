// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmm2.h"

extern XMm2_Config XMm2_ConfigTable[];

XMm2_Config *XMm2_LookupConfig(u16 DeviceId) {
	XMm2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMM2_NUM_INSTANCES; Index++) {
		if (XMm2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMm2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMm2_Initialize(XMm2 *InstancePtr, u16 DeviceId) {
	XMm2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMm2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMm2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

