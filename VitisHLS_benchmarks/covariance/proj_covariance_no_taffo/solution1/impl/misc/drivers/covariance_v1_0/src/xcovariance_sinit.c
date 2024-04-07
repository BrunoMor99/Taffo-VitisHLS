// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcovariance.h"

extern XCovariance_Config XCovariance_ConfigTable[];

XCovariance_Config *XCovariance_LookupConfig(u16 DeviceId) {
	XCovariance_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOVARIANCE_NUM_INSTANCES; Index++) {
		if (XCovariance_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCovariance_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCovariance_Initialize(XCovariance *InstancePtr, u16 DeviceId) {
	XCovariance_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCovariance_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCovariance_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

