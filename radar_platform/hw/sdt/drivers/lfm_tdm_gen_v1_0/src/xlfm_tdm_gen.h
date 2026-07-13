// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XLFM_TDM_GEN_H
#define XLFM_TDM_GEN_H

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
#include "xlfm_tdm_gen_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Ctrl_BaseAddress;
} XLfm_tdm_gen_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XLfm_tdm_gen;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLfm_tdm_gen_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLfm_tdm_gen_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLfm_tdm_gen_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLfm_tdm_gen_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XLfm_tdm_gen_Initialize(XLfm_tdm_gen *InstancePtr, UINTPTR BaseAddress);
XLfm_tdm_gen_Config* XLfm_tdm_gen_LookupConfig(UINTPTR BaseAddress);
#else
int XLfm_tdm_gen_Initialize(XLfm_tdm_gen *InstancePtr, u16 DeviceId);
XLfm_tdm_gen_Config* XLfm_tdm_gen_LookupConfig(u16 DeviceId);
#endif
int XLfm_tdm_gen_CfgInitialize(XLfm_tdm_gen *InstancePtr, XLfm_tdm_gen_Config *ConfigPtr);
#else
int XLfm_tdm_gen_Initialize(XLfm_tdm_gen *InstancePtr, const char* InstanceName);
int XLfm_tdm_gen_Release(XLfm_tdm_gen *InstancePtr);
#endif

void XLfm_tdm_gen_Start(XLfm_tdm_gen *InstancePtr);
u32 XLfm_tdm_gen_IsDone(XLfm_tdm_gen *InstancePtr);
u32 XLfm_tdm_gen_IsIdle(XLfm_tdm_gen *InstancePtr);
u32 XLfm_tdm_gen_IsReady(XLfm_tdm_gen *InstancePtr);
void XLfm_tdm_gen_EnableAutoRestart(XLfm_tdm_gen *InstancePtr);
void XLfm_tdm_gen_DisableAutoRestart(XLfm_tdm_gen *InstancePtr);


void XLfm_tdm_gen_InterruptGlobalEnable(XLfm_tdm_gen *InstancePtr);
void XLfm_tdm_gen_InterruptGlobalDisable(XLfm_tdm_gen *InstancePtr);
void XLfm_tdm_gen_InterruptEnable(XLfm_tdm_gen *InstancePtr, u32 Mask);
void XLfm_tdm_gen_InterruptDisable(XLfm_tdm_gen *InstancePtr, u32 Mask);
void XLfm_tdm_gen_InterruptClear(XLfm_tdm_gen *InstancePtr, u32 Mask);
u32 XLfm_tdm_gen_InterruptGetEnabled(XLfm_tdm_gen *InstancePtr);
u32 XLfm_tdm_gen_InterruptGetStatus(XLfm_tdm_gen *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
