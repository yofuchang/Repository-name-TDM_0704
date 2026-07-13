// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xlfm_tdm_gen.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLfm_tdm_gen_CfgInitialize(XLfm_tdm_gen *InstancePtr, XLfm_tdm_gen_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLfm_tdm_gen_Start(XLfm_tdm_gen *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLfm_tdm_gen_ReadReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_AP_CTRL) & 0x80;
    XLfm_tdm_gen_WriteReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLfm_tdm_gen_IsDone(XLfm_tdm_gen *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLfm_tdm_gen_ReadReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLfm_tdm_gen_IsIdle(XLfm_tdm_gen *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLfm_tdm_gen_ReadReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLfm_tdm_gen_IsReady(XLfm_tdm_gen *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLfm_tdm_gen_ReadReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLfm_tdm_gen_EnableAutoRestart(XLfm_tdm_gen *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLfm_tdm_gen_WriteReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_AP_CTRL, 0x80);
}

void XLfm_tdm_gen_DisableAutoRestart(XLfm_tdm_gen *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLfm_tdm_gen_WriteReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_AP_CTRL, 0);
}

void XLfm_tdm_gen_InterruptGlobalEnable(XLfm_tdm_gen *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLfm_tdm_gen_WriteReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_GIE, 1);
}

void XLfm_tdm_gen_InterruptGlobalDisable(XLfm_tdm_gen *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLfm_tdm_gen_WriteReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_GIE, 0);
}

void XLfm_tdm_gen_InterruptEnable(XLfm_tdm_gen *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLfm_tdm_gen_ReadReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_IER);
    XLfm_tdm_gen_WriteReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_IER, Register | Mask);
}

void XLfm_tdm_gen_InterruptDisable(XLfm_tdm_gen *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLfm_tdm_gen_ReadReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_IER);
    XLfm_tdm_gen_WriteReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_IER, Register & (~Mask));
}

void XLfm_tdm_gen_InterruptClear(XLfm_tdm_gen *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLfm_tdm_gen_WriteReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_ISR, Mask);
}

u32 XLfm_tdm_gen_InterruptGetEnabled(XLfm_tdm_gen *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLfm_tdm_gen_ReadReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_IER);
}

u32 XLfm_tdm_gen_InterruptGetStatus(XLfm_tdm_gen *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLfm_tdm_gen_ReadReg(InstancePtr->Ctrl_BaseAddress, XLFM_TDM_GEN_CTRL_ADDR_ISR);
}

