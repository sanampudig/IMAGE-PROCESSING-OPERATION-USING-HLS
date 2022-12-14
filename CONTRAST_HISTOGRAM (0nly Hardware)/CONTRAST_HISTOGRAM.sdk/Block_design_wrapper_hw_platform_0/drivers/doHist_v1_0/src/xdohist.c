// ==============================================================
// File generated on Thu Nov 17 19:59:22 +0530 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdohist.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDohist_CfgInitialize(XDohist *InstancePtr, XDohist_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDohist_Start(XDohist *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDohist_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XDohist_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDohist_IsDone(XDohist *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDohist_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDohist_IsIdle(XDohist *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDohist_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDohist_IsReady(XDohist *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDohist_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDohist_EnableAutoRestart(XDohist *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohist_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XDohist_DisableAutoRestart(XDohist *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohist_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XDohist_InterruptGlobalEnable(XDohist *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohist_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_GIE, 1);
}

void XDohist_InterruptGlobalDisable(XDohist *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohist_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_GIE, 0);
}

void XDohist_InterruptEnable(XDohist *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDohist_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_IER);
    XDohist_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XDohist_InterruptDisable(XDohist *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDohist_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_IER);
    XDohist_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XDohist_InterruptClear(XDohist *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohist_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XDohist_InterruptGetEnabled(XDohist *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDohist_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_IER);
}

u32 XDohist_InterruptGetStatus(XDohist *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDohist_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOHIST_CTRL_BUS_ADDR_ISR);
}

