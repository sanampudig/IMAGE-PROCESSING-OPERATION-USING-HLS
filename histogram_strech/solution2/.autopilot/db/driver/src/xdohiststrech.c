// ==============================================================
// File generated on Mon Nov 28 22:07:43 +0530 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdohiststrech.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDohiststrech_CfgInitialize(XDohiststrech *InstancePtr, XDohiststrech_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Crtl_bus_BaseAddress = ConfigPtr->Crtl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDohiststrech_Start(XDohiststrech *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDohiststrech_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_AP_CTRL) & 0x80;
    XDohiststrech_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDohiststrech_IsDone(XDohiststrech *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDohiststrech_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDohiststrech_IsIdle(XDohiststrech *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDohiststrech_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDohiststrech_IsReady(XDohiststrech *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDohiststrech_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDohiststrech_EnableAutoRestart(XDohiststrech *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohiststrech_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_AP_CTRL, 0x80);
}

void XDohiststrech_DisableAutoRestart(XDohiststrech *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohiststrech_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_AP_CTRL, 0);
}

void XDohiststrech_Set_xMin(XDohiststrech *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohiststrech_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_XMIN_DATA, Data);
}

u32 XDohiststrech_Get_xMin(XDohiststrech *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDohiststrech_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_XMIN_DATA);
    return Data;
}

void XDohiststrech_Set_xMax(XDohiststrech *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohiststrech_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_XMAX_DATA, Data);
}

u32 XDohiststrech_Get_xMax(XDohiststrech *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDohiststrech_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_XMAX_DATA);
    return Data;
}

void XDohiststrech_InterruptGlobalEnable(XDohiststrech *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohiststrech_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_GIE, 1);
}

void XDohiststrech_InterruptGlobalDisable(XDohiststrech *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohiststrech_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_GIE, 0);
}

void XDohiststrech_InterruptEnable(XDohiststrech *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDohiststrech_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_IER);
    XDohiststrech_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_IER, Register | Mask);
}

void XDohiststrech_InterruptDisable(XDohiststrech *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDohiststrech_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_IER);
    XDohiststrech_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_IER, Register & (~Mask));
}

void XDohiststrech_InterruptClear(XDohiststrech *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDohiststrech_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_ISR, Mask);
}

u32 XDohiststrech_InterruptGetEnabled(XDohiststrech *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDohiststrech_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_IER);
}

u32 XDohiststrech_InterruptGetStatus(XDohiststrech *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDohiststrech_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDOHISTSTRECH_CRTL_BUS_ADDR_ISR);
}

