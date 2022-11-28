#include <stdio.h>
#include "core.h"
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>

#define INPUT_IMAGE_CORE "Lennawithoutstr.bmp"
#define OUTPUT_IMAGE_CORE "LennaStr.bmp"
char outImage[320][240];

void saveImage(const std::string path, cv::InputArray inArr){
	double min;
	double max;
	cv::minMaxIdx(inArr, &min, &max);
	cv::Mat adjMap;
	cv::convertScaleAbs(inArr, adjMap, 255/ max);
	cv::imwrite(path,adjMap);
}

int main(){
printf("Load image %s\n",INPUT_IMAGE_CORE);
cv::Mat imageSrc;

imageSrc = cv::imread(INPUT_IMAGE_CORE);

cv::cvtColor(imageSrc, imageSrc, CV_BGR2GRAY);

printf("Image Rows:%d Cols:%d\n",imageSrc.rows,imageSrc.cols);

hls::stream<uint_8_side_channel>inputStream;
hls::stream<uint_8_side_channel>outputStream;

cv::Mat imgCvOut(cv::Size(imageSrc.cols, imageSrc.rows), CV_8UC1, outImage, cv::Mat::AUTO_STEP);


for(int idxRows=0; idxRows < imageSrc.rows;idxRows++){
	for(int idxCols=0;idxCols < imageSrc.cols; idxCols++){
		uint_8_side_channel valIn;
		valIn.data = imageSrc.at<unsigned char>(idxRows,idxCols);
		valIn.keep = 1; valIn.strb = 1; valIn.user =1; valIn.id = 0; valIn.dest = 0;
		inputStream << valIn;

	}
}


doHistStrech(inputStream, outputStream,40,111);

for(int idxRows=0; idxRows < imageSrc.rows;idxRows++){
	for(int idxCols=0;idxCols < imageSrc.cols; idxCols++){
		uint_8_side_channel valOut;
		outputStream.read(valOut);
		outImage[idxRows][idxCols] = valOut.data;
	}
}

saveImage(std::string(OUTPUT_IMAGE_CORE),imgCvOut);
return 0;

}
