// ==============================================================
// File generated on Mon Nov 28 22:07:43 +0530 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDOHISTSTRECH_H
#define XDOHISTSTRECH_H

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
#include "xdohiststrech_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Crtl_bus_BaseAddress;
} XDohiststrech_Config;
#endif

typedef struct {
    u32 Crtl_bus_BaseAddress;
    u32 IsReady;
} XDohiststrech;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDohiststrech_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDohiststrech_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDohiststrech_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDohiststrech_ReadReg(BaseAddress, RegOffset) \
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
int XDohiststrech_Initialize(XDohiststrech *InstancePtr, u16 DeviceId);
XDohiststrech_Config* XDohiststrech_LookupConfig(u16 DeviceId);
int XDohiststrech_CfgInitialize(XDohiststrech *InstancePtr, XDohiststrech_Config *ConfigPtr);
#else
int XDohiststrech_Initialize(XDohiststrech *InstancePtr, const char* InstanceName);
int XDohiststrech_Release(XDohiststrech *InstancePtr);
#endif

void XDohiststrech_Start(XDohiststrech *InstancePtr);
u32 XDohiststrech_IsDone(XDohiststrech *InstancePtr);
u32 XDohiststrech_IsIdle(XDohiststrech *InstancePtr);
u32 XDohiststrech_IsReady(XDohiststrech *InstancePtr);
void XDohiststrech_EnableAutoRestart(XDohiststrech *InstancePtr);
void XDohiststrech_DisableAutoRestart(XDohiststrech *InstancePtr);

void XDohiststrech_Set_xMin(XDohiststrech *InstancePtr, u32 Data);
u32 XDohiststrech_Get_xMin(XDohiststrech *InstancePtr);
void XDohiststrech_Set_xMax(XDohiststrech *InstancePtr, u32 Data);
u32 XDohiststrech_Get_xMax(XDohiststrech *InstancePtr);

void XDohiststrech_InterruptGlobalEnable(XDohiststrech *InstancePtr);
void XDohiststrech_InterruptGlobalDisable(XDohiststrech *InstancePtr);
void XDohiststrech_InterruptEnable(XDohiststrech *InstancePtr, u32 Mask);
void XDohiststrech_InterruptDisable(XDohiststrech *InstancePtr, u32 Mask);
void XDohiststrech_InterruptClear(XDohiststrech *InstancePtr, u32 Mask);
u32 XDohiststrech_InterruptGetEnabled(XDohiststrech *InstancePtr);
u32 XDohiststrech_InterruptGetStatus(XDohiststrech *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
