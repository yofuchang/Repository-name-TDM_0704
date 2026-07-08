// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xradar_beamformer.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRadar_beamformer_CfgInitialize(XRadar_beamformer *InstancePtr, XRadar_beamformer_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRadar_beamformer_Start(XRadar_beamformer *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRadar_beamformer_ReadReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XRadar_beamformer_WriteReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRadar_beamformer_IsDone(XRadar_beamformer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRadar_beamformer_ReadReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRadar_beamformer_IsIdle(XRadar_beamformer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRadar_beamformer_ReadReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRadar_beamformer_IsReady(XRadar_beamformer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRadar_beamformer_ReadReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRadar_beamformer_EnableAutoRestart(XRadar_beamformer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRadar_beamformer_WriteReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XRadar_beamformer_DisableAutoRestart(XRadar_beamformer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRadar_beamformer_WriteReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_AP_CTRL, 0);
}

void XRadar_beamformer_InterruptGlobalEnable(XRadar_beamformer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRadar_beamformer_WriteReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_GIE, 1);
}

void XRadar_beamformer_InterruptGlobalDisable(XRadar_beamformer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRadar_beamformer_WriteReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_GIE, 0);
}

void XRadar_beamformer_InterruptEnable(XRadar_beamformer *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRadar_beamformer_ReadReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_IER);
    XRadar_beamformer_WriteReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_IER, Register | Mask);
}

void XRadar_beamformer_InterruptDisable(XRadar_beamformer *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRadar_beamformer_ReadReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_IER);
    XRadar_beamformer_WriteReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XRadar_beamformer_InterruptClear(XRadar_beamformer *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRadar_beamformer_WriteReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_ISR, Mask);
}

u32 XRadar_beamformer_InterruptGetEnabled(XRadar_beamformer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRadar_beamformer_ReadReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_IER);
}

u32 XRadar_beamformer_InterruptGetStatus(XRadar_beamformer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRadar_beamformer_ReadReg(InstancePtr->Control_BaseAddress, XRADAR_BEAMFORMER_CONTROL_ADDR_ISR);
}

