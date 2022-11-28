#include "xaxidma.h"
#include "xdohist.h"
#include "xdohiststrech.h"
#include "LenaOnCode.h"
#include "xtime_l.h"
#include "xil_printf.h"
#include "xparameters.h"
#define SIZE_ARR (320*240)

#define MEM_BASE_ADDR 0x01000000
#define TX_BUFFER_BASE (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR + 0x00300000)

unsigned char *m_dma_buffer_TX = (unsigned char*)TX_BUFFER_BASE;
unsigned char *m_dma_buffer_RX = (unsigned char*)RX_BUFFER_BASE;

unsigned int hist_sw[256];
unsigned char imgOut[SIZE_ARR];
unsigned char imgIn_HW[SIZE_ARR];

unsigned int *hist_hw = (unsigned int*) 0x40000000;


XAxiDma axiDma;
int status;
int initDMA()
{
	XAxiDma_Config *CfgPtr;
	CfgPtr = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_DEVICE_ID);
	status = XAxiDma_CfgInitialize(&axiDma,CfgPtr);
	if(status != XST_SUCCESS){
		xil_printf("DMA config failed to initialize\r\n");
		return status;
	}
	xil_printf("Initialized DMA config\r\n");

	XAxiDma_IntrDisable(&axiDma,XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&axiDma,XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DMA_TO_DEVICE);
	return XST_SUCCESS;
}


XDohist doHist;
XDohiststrech doHistStrech;

int initDoHist(){
	int status;
	XDohist_Config *doHist_cfg;
	doHist_cfg=XDohist_LookupConfig(XPAR_DOHIST_0_DEVICE_ID);
	if(!doHist_cfg){
		xil_printf("Error loading config for doHist_cfg\n");

	}
	status =XDohist_CfgInitialize(&doHist,doHist_cfg);
	if(status!= XST_SUCCESS){
		xil_printf("Error initializing for doHist\n");
	}
	return status;

}


int initDoHistStrech()
{
	int status;
	XDohiststrech_Config *doHistStrech_cfg;
	doHistStrech_cfg = XDohiststrech_LookupConfig(XPAR_DOHISTSTRECH_0_DEVICE_ID);
	if(!doHistStrech_cfg){
			xil_printf("Error loading config for doHistStrech_cfg\n");

		}
		status =XDohiststrech_CfgInitialize(&doHistStrech,doHistStrech_cfg);
		if(status!= XST_SUCCESS){
			xil_printf("Error initializing for doHistStrech_cfg\n");
		}
		return status;

}

void doHistSW(unsigned char *img,unsigned int *hist){
	for(int idx=0;idx<256;idx++){
		hist[idx]=0;

	}


	for(int idxImg=0;idxImg<(320*240);idxImg++){
		hist[img[idxImg]]=hist[img[idxImg]]+1;
	}
}


void doHistStrechSW(unsigned char *imgIn,unsigned char *imgOut,unsigned char xMin,unsigned char xMax)
{
	float xMax_minus_xMin = xMax-xMin;
	for(int idxImg =0; idxImg < (320*240);idxImg++){
		float y_t_float = ((imgIn[idxImg]-xMin)/(xMax_minus_xMin))*255;

	}
}

int main(){
	initDMA();
	initDoHist();
	initDoHistStrech();
	int c=0;

	xil_printf("Doing histogram on SW\n");

	doHistSW(img,hist_sw);

	xil_printf("software part done\n");

	unsigned char xMin;
		for(int idxMin=0;idxMin<256;idxMin++){
			xMin=idxMin;
			if(hist_sw[idxMin]){
				break;
			}
		}
		unsigned char xMax;
			for(int idxMax=0;idxMax<256;idxMax++){
				xMax=idxMax;
				if(hist_sw[idxMax]){
					break;
				}
			}
			xil_printf("(SW)xMin=%d xMax=%d\n",xMin,xMax);

			xil_printf("Doing histogram strech SW\n");

			doHistStrechSW(img,imgOut,xMin,xMax);


			for(int idx=0;idx< SIZE_ARR;idx++){
						imgIn_HW[idx]=img[idx];
					}

					XDohist_Start(&doHist);
					XDohiststrech_Set_xMax(&doHistStrech,255);
					XDohiststrech_Set_xMin(&doHistStrech,0);
					XDohiststrech_Start(&doHistStrech);
					Xil_DCacheFlushRange((u32)imgIn_HW,SIZE_ARR*sizeof(unsigned char));
					Xil_DCacheFlushRange((u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char));
					XAxiDma_SimpleTransfer(&axiDma,(u32)imgIn_HW,SIZE_ARR*sizeof(unsigned char),XAXIDMA_DMA_TO_DEVICE);
					XAxiDma_SimpleTransfer(&axiDma,(u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char),XAXIDMA_DEVICE_TO_DMA);
					while(XAxiDma_Busy(&axiDma,XAXIDMA_DMA_TO_DEVICE));
				    while(XAxiDma_Busy(&axiDma,XAXIDMA_DEVICE_TO_DMA));
				    //Xil_DCacheInvaliddateRange((u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char));

				    for(int idxMin=0;idxMin<256;idxMin++){
				    			xMin=idxMin;
				    			if(hist_hw[idxMin]){
				    				break;
				    			}
				    		}

				    		for(int idxMax=256;idxMax>=0;idxMax--){
				    			xMax=idxMax;
				    			if(hist_hw[idxMax])
				    				break;
				    		}
				    		xil_printf("(HW)xMin=%d xMax =%d\n",xMin,xMax);
				    		XDohist_Start(&doHist);
				    		XDohiststrech_Set_xMax(&doHistStrech,xMax);
				    		XDohiststrech_Set_xMin(&doHistStrech,xMin);
				    		XDohiststrech_Start(&doHistStrech);
				    		Xil_DCacheFlushRange((u32)imgIn_HW,SIZE_ARR*sizeof(unsigned char));
				    		Xil_DCacheFlushRange((u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char));

				    		XAxiDma_SimpleTransfer(&axiDma,(u32)imgIn_HW,SIZE_ARR*sizeof(unsigned char),XAXIDMA_DMA_TO_DEVICE);
				    		XAxiDma_SimpleTransfer(&axiDma,(u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char),XAXIDMA_DEVICE_TO_DMA);

				    		while(XAxiDma_Busy(&axiDma,XAXIDMA_DMA_TO_DEVICE));
				    	    while(XAxiDma_Busy(&axiDma,XAXIDMA_DEVICE_TO_DMA));
				    	    //Xil_DCacheInvaliddateRange((u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char));

				    	    xil_printf("DMA out address :%X\n",m_dma_buffer_RX);
				    	    	    int imgMismatch=0;
				    	    	    for(int idxComp =0; idxComp < SIZE_ARR;idxComp++){
				    	    	    	if(imgOut[idxComp]!=m_dma_buffer_RX[idxComp]){

                                            c++;
				    	    	    		imgMismatch =1;
				    	    	    	}
				    	    	    }
				    	    	    xil_printf("no of mismatches: %d\n",c);
				    	    	    if(!imgMismatch){
				    	    	    	xil_printf("SW and HW are same\n");
				    	    	    }

				    	    	return 0;

}











