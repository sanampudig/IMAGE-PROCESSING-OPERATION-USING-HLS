// ==============================================================
// File generated on Thu Nov 17 23:31:42 +0530 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdohiststrech.h"

extern XDohiststrech_Config XDohiststrech_ConfigTable[];

XDohiststrech_Config *XDohiststrech_LookupConfig(u16 DeviceId) {
	XDohiststrech_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDOHISTSTRECH_NUM_INSTANCES; Index++) {
		if (XDohiststrech_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDohiststrech_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDohiststrech_Initialize(XDohiststrech *InstancePtr, u16 DeviceId) {
	XDohiststrech_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDohiststrech_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDohiststrech_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

