// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCOVARIANCE_H
#define XCOVARIANCE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcovariance_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XCovariance_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCovariance;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCovariance_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCovariance_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCovariance_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCovariance_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCovariance_Initialize(XCovariance *InstancePtr, u16 DeviceId);
XCovariance_Config* XCovariance_LookupConfig(u16 DeviceId);
int XCovariance_CfgInitialize(XCovariance *InstancePtr, XCovariance_Config *ConfigPtr);
#else
int XCovariance_Initialize(XCovariance *InstancePtr, const char* InstanceName);
int XCovariance_Release(XCovariance *InstancePtr);
#endif


void XCovariance_Set_data(XCovariance *InstancePtr, u64 Data);
u64 XCovariance_Get_data(XCovariance *InstancePtr);
void XCovariance_Set_cov(XCovariance *InstancePtr, u64 Data);
u64 XCovariance_Get_cov(XCovariance *InstancePtr);
void XCovariance_Set_mean(XCovariance *InstancePtr, u64 Data);
u64 XCovariance_Get_mean(XCovariance *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
