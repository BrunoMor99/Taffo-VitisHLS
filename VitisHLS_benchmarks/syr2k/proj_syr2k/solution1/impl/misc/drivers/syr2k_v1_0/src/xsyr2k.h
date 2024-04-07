// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSYR2K_H
#define XSYR2K_H

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
#include "xsyr2k_hw.h"

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
} XSyr2k_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSyr2k;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSyr2k_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSyr2k_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSyr2k_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSyr2k_ReadReg(BaseAddress, RegOffset) \
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
int XSyr2k_Initialize(XSyr2k *InstancePtr, u16 DeviceId);
XSyr2k_Config* XSyr2k_LookupConfig(u16 DeviceId);
int XSyr2k_CfgInitialize(XSyr2k *InstancePtr, XSyr2k_Config *ConfigPtr);
#else
int XSyr2k_Initialize(XSyr2k *InstancePtr, const char* InstanceName);
int XSyr2k_Release(XSyr2k *InstancePtr);
#endif


void XSyr2k_Set_A(XSyr2k *InstancePtr, u64 Data);
u64 XSyr2k_Get_A(XSyr2k *InstancePtr);
void XSyr2k_Set_B(XSyr2k *InstancePtr, u64 Data);
u64 XSyr2k_Get_B(XSyr2k *InstancePtr);
void XSyr2k_Set_C(XSyr2k *InstancePtr, u64 Data);
u64 XSyr2k_Get_C(XSyr2k *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
