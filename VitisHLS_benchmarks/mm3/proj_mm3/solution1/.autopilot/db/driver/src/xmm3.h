// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMM3_H
#define XMM3_H

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
#include "xmm3_hw.h"

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
} XMm3_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMm3;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMm3_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMm3_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMm3_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMm3_ReadReg(BaseAddress, RegOffset) \
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
int XMm3_Initialize(XMm3 *InstancePtr, u16 DeviceId);
XMm3_Config* XMm3_LookupConfig(u16 DeviceId);
int XMm3_CfgInitialize(XMm3 *InstancePtr, XMm3_Config *ConfigPtr);
#else
int XMm3_Initialize(XMm3 *InstancePtr, const char* InstanceName);
int XMm3_Release(XMm3 *InstancePtr);
#endif


void XMm3_Set_A(XMm3 *InstancePtr, u64 Data);
u64 XMm3_Get_A(XMm3 *InstancePtr);
void XMm3_Set_B(XMm3 *InstancePtr, u64 Data);
u64 XMm3_Get_B(XMm3 *InstancePtr);
void XMm3_Set_C(XMm3 *InstancePtr, u64 Data);
u64 XMm3_Get_C(XMm3 *InstancePtr);
void XMm3_Set_D(XMm3 *InstancePtr, u64 Data);
u64 XMm3_Get_D(XMm3 *InstancePtr);
void XMm3_Set_E(XMm3 *InstancePtr, u64 Data);
u64 XMm3_Get_E(XMm3 *InstancePtr);
void XMm3_Set_F(XMm3 *InstancePtr, u64 Data);
u64 XMm3_Get_F(XMm3 *InstancePtr);
void XMm3_Set_G(XMm3 *InstancePtr, u64 Data);
u64 XMm3_Get_G(XMm3 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
