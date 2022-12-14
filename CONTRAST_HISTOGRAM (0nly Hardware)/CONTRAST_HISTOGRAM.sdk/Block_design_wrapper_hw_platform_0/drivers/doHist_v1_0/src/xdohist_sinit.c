// ==============================================================
// File generated on Thu Nov 17 19:59:22 +0530 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdohist.h"

extern XDohist_Config XDohist_ConfigTable[];

XDohist_Config *XDohist_LookupConfig(u16 DeviceId) {
	XDohist_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDOHIST_NUM_INSTANCES; Index++) {
		if (XDohist_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDohist_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDohist_Initialize(XDohist *InstancePtr, u16 DeviceId) {
	XDohist_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDohist_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDohist_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

