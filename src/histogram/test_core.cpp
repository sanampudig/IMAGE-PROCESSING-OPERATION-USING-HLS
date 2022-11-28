#include <stdio.h>
#include "core.h"
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>

#include  "hls_video.h"

#define INPUT_IMAGE_CORE "leenawithoutcontrast.bmp"
#define FILE_HISTOGRAM "Histogram.txt"
char outImage[320][240];
int histo[256];
int lutMult[256];

void saveImage(const std::string path, cv::InputArray inArr)
{
	double min;
	double max;
	cv::minMaxIdx(inArr, &min, &max);
	cv::Mat adjMap;
	cv::convertScaleAbs(inArr, adjMap, 255 / max);
	cv::imwrite(path,adjMap);
}



void saveHistogram(const char* filename, int *histPointer){

	FILE *pFile;
	pFile = fopen(filename,"w");
	if(pFile != NULL)
	{
		for (int idx=0; idx<256; idx++)
		{
			fprintf(pFile,"Bin[%d]=%d\n",idx, histPointer[idx]);
		}
	}

}

int main()
{

	printf("Load image %s\n",INPUT_IMAGE_CORE);
	cv::Mat imageSrc;
	imageSrc = cv::imread(INPUT_IMAGE_CORE);

	cv::cvtColor(imageSrc, imageSrc, CV_BGR2GRAY);
//	hls::CvtColor<HLS_BGR2GRAY>(imageSrc, imageSrc);

	printf("Image Rows:%d Cols:%d\n",imageSrc.rows,imageSrc.cols);

hls::stream<uint_8_side_channel>inputStream;

for(int idxRows=0; idxRows < imageSrc.rows;idxRows++){
	for(int idxCols=0;idxCols < imageSrc.cols; idxCols++){
		uint_8_side_channel valIn;
		valIn.data = imageSrc.at<unsigned char>(idxRows,idxCols);
		valIn.keep = 1; valIn.strb = 1; valIn.user =1; valIn.id = 0; valIn.dest = 0;
		inputStream << valIn;

	}
}
doHist(inputStream, histo);

saveHistogram(FILE_HISTOGRAM,histo);

return 0;
}
