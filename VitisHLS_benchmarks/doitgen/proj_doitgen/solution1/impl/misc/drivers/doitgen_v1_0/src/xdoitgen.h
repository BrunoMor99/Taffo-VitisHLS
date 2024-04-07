// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDOITGEN_H
#define XDOITGEN_H

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
#include "xdoitgen_hw.h"

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
} XDoitgen_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDoitgen;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDoitgen_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDoitgen_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDoitgen_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDoitgen_ReadReg(BaseAddress, RegOffset) \
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
int XDoitgen_Initialize(XDoitgen *InstancePtr, u16 DeviceId);
XDoitgen_Config* XDoitgen_LookupConfig(u16 DeviceId);
int XDoitgen_CfgInitialize(XDoitgen *InstancePtr, XDoitgen_Config *ConfigPtr);
#else
int XDoitgen_Initialize(XDoitgen *InstancePtr, const char* InstanceName);
int XDoitgen_Release(XDoitgen *InstancePtr);
#endif


void XDoitgen_Set_A(XDoitgen *InstancePtr, u64 Data);
u64 XDoitgen_Get_A(XDoitgen *InstancePtr);
void XDoitgen_Set_C(XDoitgen *InstancePtr, u64 Data);
u64 XDoitgen_Get_C(XDoitgen *InstancePtr);
void XDoitgen_Set_sum(XDoitgen *InstancePtr, u64 Data);
u64 XDoitgen_Get_sum(XDoitgen *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
