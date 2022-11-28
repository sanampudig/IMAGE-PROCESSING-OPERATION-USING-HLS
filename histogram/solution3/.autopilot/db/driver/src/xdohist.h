// ==============================================================
// File generated on Sun Nov 27 13:58:03 +0530 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDOHIST_H
#define XDOHIST_H

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
#include "xdohist_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XDohist_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XDohist;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDohist_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDohist_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDohist_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDohist_ReadReg(BaseAddress, RegOffset) \
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
int XDohist_Initialize(XDohist *InstancePtr, u16 DeviceId);
XDohist_Config* XDohist_LookupConfig(u16 DeviceId);
int XDohist_CfgInitialize(XDohist *InstancePtr, XDohist_Config *ConfigPtr);
#else
int XDohist_Initialize(XDohist *InstancePtr, const char* InstanceName);
int XDohist_Release(XDohist *InstancePtr);
#endif

void XDohist_Start(XDohist *InstancePtr);
u32 XDohist_IsDone(XDohist *InstancePtr);
u32 XDohist_IsIdle(XDohist *InstancePtr);
u32 XDohist_IsReady(XDohist *InstancePtr);
void XDohist_EnableAutoRestart(XDohist *InstancePtr);
void XDohist_DisableAutoRestart(XDohist *InstancePtr);


void XDohist_InterruptGlobalEnable(XDohist *InstancePtr);
void XDohist_InterruptGlobalDisable(XDohist *InstancePtr);
void XDohist_InterruptEnable(XDohist *InstancePtr, u32 Mask);
void XDohist_InterruptDisable(XDohist *InstancePtr, u32 Mask);
void XDohist_InterruptClear(XDohist *InstancePtr, u32 Mask);
u32 XDohist_InterruptGetEnabled(XDohist *InstancePtr);
u32 XDohist_InterruptGetStatus(XDohist *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
