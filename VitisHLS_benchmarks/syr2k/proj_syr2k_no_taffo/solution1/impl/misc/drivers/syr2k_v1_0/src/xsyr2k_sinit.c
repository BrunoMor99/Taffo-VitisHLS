// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsyr2k.h"

extern XSyr2k_Config XSyr2k_ConfigTable[];

XSyr2k_Config *XSyr2k_LookupConfig(u16 DeviceId) {
	XSyr2k_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSYR2K_NUM_INSTANCES; Index++) {
		if (XSyr2k_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSyr2k_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSyr2k_Initialize(XSyr2k *InstancePtr, u16 DeviceId) {
	XSyr2k_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSyr2k_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSyr2k_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

