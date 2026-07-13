// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xlfm_tdm_gen.h"

extern XLfm_tdm_gen_Config XLfm_tdm_gen_ConfigTable[];

#ifdef SDT
XLfm_tdm_gen_Config *XLfm_tdm_gen_LookupConfig(UINTPTR BaseAddress) {
	XLfm_tdm_gen_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XLfm_tdm_gen_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XLfm_tdm_gen_ConfigTable[Index].Ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XLfm_tdm_gen_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLfm_tdm_gen_Initialize(XLfm_tdm_gen *InstancePtr, UINTPTR BaseAddress) {
	XLfm_tdm_gen_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLfm_tdm_gen_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLfm_tdm_gen_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XLfm_tdm_gen_Config *XLfm_tdm_gen_LookupConfig(u16 DeviceId) {
	XLfm_tdm_gen_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLFM_TDM_GEN_NUM_INSTANCES; Index++) {
		if (XLfm_tdm_gen_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLfm_tdm_gen_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLfm_tdm_gen_Initialize(XLfm_tdm_gen *InstancePtr, u16 DeviceId) {
	XLfm_tdm_gen_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLfm_tdm_gen_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLfm_tdm_gen_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

