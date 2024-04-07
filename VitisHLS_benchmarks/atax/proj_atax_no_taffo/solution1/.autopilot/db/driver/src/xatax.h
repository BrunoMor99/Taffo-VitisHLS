// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XATAX_H
#define XATAX_H

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
#include "xatax_hw.h"

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
} XAtax_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAtax;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAtax_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAtax_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAtax_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAtax_ReadReg(BaseAddress, RegOffset) \
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
int XAtax_Initialize(XAtax *InstancePtr, u16 DeviceId);
XAtax_Config* XAtax_LookupConfig(u16 DeviceId);
int XAtax_CfgInitialize(XAtax *InstancePtr, XAtax_Config *ConfigPtr);
#else
int XAtax_Initialize(XAtax *InstancePtr, const char* InstanceName);
int XAtax_Release(XAtax *InstancePtr);
#endif


void XAtax_Set_A(XAtax *InstancePtr, u64 Data);
u64 XAtax_Get_A(XAtax *InstancePtr);
void XAtax_Set_x(XAtax *InstancePtr, u64 Data);
u64 XAtax_Get_x(XAtax *InstancePtr);
void XAtax_Set_y(XAtax *InstancePtr, u64 Data);
u64 XAtax_Get_y(XAtax *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
