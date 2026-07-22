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
#include "xradar_beamformer.h"

extern XRadar_beamformer_Config XRadar_beamformer_ConfigTable[];

#ifdef SDT
XRadar_beamformer_Config *XRadar_beamformer_LookupConfig(UINTPTR BaseAddress) {
	XRadar_beamformer_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XRadar_beamformer_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XRadar_beamformer_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XRadar_beamformer_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRadar_beamformer_Initialize(XRadar_beamformer *InstancePtr, UINTPTR BaseAddress) {
	XRadar_beamformer_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRadar_beamformer_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRadar_beamformer_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XRadar_beamformer_Config *XRadar_beamformer_LookupConfig(u16 DeviceId) {
	XRadar_beamformer_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XRADAR_BEAMFORMER_NUM_INSTANCES; Index++) {
		if (XRadar_beamformer_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XRadar_beamformer_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRadar_beamformer_Initialize(XRadar_beamformer *InstancePtr, u16 DeviceId) {
	XRadar_beamformer_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRadar_beamformer_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRadar_beamformer_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

