#include "core.h"

void doHist(hls::stream<uint_8_side_channel> &inStream,int histo[256]){
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
#pragma HLS INTERFACE bram port=histo

	for(int idxHist = 0;idxHist < 256; idxHist++)
	{
#pragma HLS PIPELINE
		histo[idxHist] = 0;
	}

	//iterate on a stream of(320*240) image
	for(int idxPixel =0; idxPixel < (320*240); idxPixel++){

		uint_8_side_channel currPixelSideChannel = inStream.read();
		//uint_8_side_channel dataOutSideChannel;

		histo[currPixelSideChannel.data]+=1;


	}
}
