// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XRADAR_BEAMFORMER_H
#define XRADAR_BEAMFORMER_H

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
#include "xradar_beamformer_hw.h"

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
    u64 Control_BaseAddress;
} XRadar_beamformer_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XRadar_beamformer;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XRadar_beamformer_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XRadar_beamformer_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XRadar_beamformer_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XRadar_beamformer_ReadReg(BaseAddress, RegOffset) \
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
int XRadar_beamformer_Initialize(XRadar_beamformer *InstancePtr, UINTPTR BaseAddress);
XRadar_beamformer_Config* XRadar_beamformer_LookupConfig(UINTPTR BaseAddress);
#else
int XRadar_beamformer_Initialize(XRadar_beamformer *InstancePtr, u16 DeviceId);
XRadar_beamformer_Config* XRadar_beamformer_LookupConfig(u16 DeviceId);
#endif
int XRadar_beamformer_CfgInitialize(XRadar_beamformer *InstancePtr, XRadar_beamformer_Config *ConfigPtr);
#else
int XRadar_beamformer_Initialize(XRadar_beamformer *InstancePtr, const char* InstanceName);
int XRadar_beamformer_Release(XRadar_beamformer *InstancePtr);
#endif

void XRadar_beamformer_Start(XRadar_beamformer *InstancePtr);
u32 XRadar_beamformer_IsDone(XRadar_beamformer *InstancePtr);
u32 XRadar_beamformer_IsIdle(XRadar_beamformer *InstancePtr);
u32 XRadar_beamformer_IsReady(XRadar_beamformer *InstancePtr);
void XRadar_beamformer_EnableAutoRestart(XRadar_beamformer *InstancePtr);
void XRadar_beamformer_DisableAutoRestart(XRadar_beamformer *InstancePtr);


void XRadar_beamformer_InterruptGlobalEnable(XRadar_beamformer *InstancePtr);
void XRadar_beamformer_InterruptGlobalDisable(XRadar_beamformer *InstancePtr);
void XRadar_beamformer_InterruptEnable(XRadar_beamformer *InstancePtr, u32 Mask);
void XRadar_beamformer_InterruptDisable(XRadar_beamformer *InstancePtr, u32 Mask);
void XRadar_beamformer_InterruptClear(XRadar_beamformer *InstancePtr, u32 Mask);
u32 XRadar_beamformer_InterruptGetEnabled(XRadar_beamformer *InstancePtr);
u32 XRadar_beamformer_InterruptGetStatus(XRadar_beamformer *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
