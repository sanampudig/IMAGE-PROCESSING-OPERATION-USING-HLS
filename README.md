# IMAGE-PROCESSING-OPERATION-USING-HLS-


 
A PROJECT REPORT
ON
“IMAGE PROCESSING OPERATION USING HLS”
SOFTWARE HARDWARE CO-DESIGN TO PERFORM CONTRAST ADJUSTMENT OPERATION ON ZEDBOARD USING HLS AND XILINK SDK

Submitted By:

Gogireddy Ravi Kiran Reddy	(MT2022515)
Sanampudi Gopala Krishna Reddy	(MT2022527)

Under the Guidance of
Dr. Nanditha Rao
 Professor, IIIT-B
Bengaluru- 560100

INTERNATIONAL INSTITUTE OF INFORMATION TECHNOLOGY, BANGALORE.
26/C, Hosur Rd, 
Electronics City Phase 1, Electronic City, 
Bengaluru, Karnataka 560100
Academic Year 2022-23 




 
 













SOFTWARE HARDWARE CO-DESIGN TO PERFORM CONTRAST ADJUSTMENT OPERATION ON ZEDBOARD USING HLS AND XILINK SDK
The histogram of an image is a function that maps each grey level of an image to the number of times it occurs in the image. From Histogram we extract maximum and minimum pixel value.





If histogram of image is not sparce or limited to small range of values then contrast of image is very poor. To such images we can perform histogram stretch to increase quality and visibility of image.
EXAMPLE of Image with poor contrast and its histogram









EXAMPLE of Image with good contrast and its histogram

Formula to calculate Histogram Stretch:
Y=■( @ ) (X-Xmin)/(Xmax-Xmin)*Ymax
Xmin/Xmax – Minimum/Maximum Value of Input Image
Ymax – Maximum Possible Value(i.e.255)






UNDERSTANDING:
INPUTS/OUTPUTS of “doHist”- function which calculates histogram of given image.
	A image converted into pixel values stored in array(size:320*240=76800) which can be sent over AXI4 Stream.
	Output is array of 256 Values which can used to plot Histogram
From this array we calculate max and minimum pixel value in the image. These values can be used to perform Histogram Stretch Operation.
INPUTS/OUTPUTS of “doHistStreach”- function which is used to perform histogram stretch and adjust the contrast of image.
	A image converted into pixel values stored in array(size:320*240=76800) which can be sent over AXI4 Stream.
	Another input is minimum and maximum values of pixels intensity which are sent over AXI4-LITE
	Output is array of processed pixels transmitted of AXI4 Stream to PS(Which can extracted from DDR Memory and converted into enhanced image)

IMPLEMENTING AN IP TO CALCULATE HISTOGRAM OF AN IMAGE USING HLS
Protocol signals in AXI
	TLAST indicates the boundary of a packet.
	TKEEP is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as part of the data stream
	TUSER is user defined sideband information that can be transmitted alongside the data stream
	TID is the data stream identifier that indicates different streams of data

Code to generate IP and its functionality (in comments) is given below
Header File: 
#include <hls_stream.h>
// Use the axi stream side-channel (TLAST, TKEEP, TUSR, TID)
#include <ap_axi_sdata.h>
typedef ap_axiu<8,2,5,6> uint_8_side_channel;
void doHist(hls::stream<uint_8_side_channel> &inStream,int histo[256]);


Source Code:
#include "core.h"
void doHist(hls::stream<uint_8_side_channel> &inStream,int histo[256]){
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
#pragma HLS INTERFACE bram port=histo

// Assigning zeros to all vales in array so that even if we perform two histogram operations consequently, both histograms should not merge.
    for(int idxHist = 0;idxHist < 256; idxHist++)
    {
#pragma HLS PIPELINE
        histo[idxHist] = 0;
    }


//iterate on a stream of(320*240)
//MAIN LOGIC TO CALUCLATE HISTOGRAM. IT WILL ITERATES THROUGH ALL PIXEL VALUES AND INCREMENT COUNT CORROSPONDING THAT PARTICULAR PIXEL INTENSITY     
for(int idxPixel =0; idxPixel < (320*240); idxPixel++){

        uint_8_side_channel currPixelSideChannel = inStream.read();
        //uint_8_side_channel dataOutSideChannel;

 histo[currPixelSideChannel.data]+=1;

    }
}



Test Bench:
#include <stdio.h>
#include "core.h"
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>//To convert RGB Image to Grey Scale

#include  "hls_video.h"


#define INPUT_IMAGE_CORE "leenawithoutcontrast.bmp"//Input Image
#define FILE_HISTOGRAM "Histogram.txt"//
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
//  hls::CvtColor<HLS_BGR2GRAY>(imageSrc, imageSrc);

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

OUTPUT File:
 

Performance Estimate and Resource Estimate for Calculation of Histogram on Hardware
 









IMPLEMENTING AN IP TO PERFORM HISTOGRAM STRETCH TO IMPROVE CONTRAST OF IMAGE USING HLS
Header File:
#include <hls_stream.h>
#include <ap_axi_sdata.h>
typedef ap_axiu<8,2,5,6> uint_8_side_channel;
void doHistStrech(hls::stream<uint_8_side_channel>&inStream, hls::stream<uint_8_side_channel> &outStream,unsigned char xMin, unsigned char xMax);

Source Code:
#include "core.h"
void doHistStrech(hls::stream<uint_8_side_channel>&inStream, hls::stream<uint_8_side_channel> &outStream,unsigned char xMin, unsigned char xMax)
{
#pragma HLS INTERFACE axis port =inStream
#pragma HLS INTERFACE axis port =outStream
#pragma HLS INTERFACE s_axilite port =return bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port =xMin bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port =xMax bundle=CRTL_BUS
       float xMax_minus_xMin = xMax-xMin;
       for (int idxPixel = 0; idxPixel <(320*240); idxPixel++ ){
#pragma HLS PIPELINE

              uint_8_side_channel currPixelSideChannel =inStream.read();
              uint_8_side_channel dataOutSideChannel;
              unsigned char x_t = currPixelSideChannel.data;
              float y_t_float = ((x_t - xMin) / (xMax_minus_xMin)) * 255;
       unsigned char y_t = y_t_float;

       dataOutSideChannel.data = y_t;
       dataOutSideChannel.keep = currPixelSideChannel.keep ;
       dataOutSideChannel.strb = currPixelSideChannel.strb;
       dataOutSideChannel.user = currPixelSideChannel.user;
       dataOutSideChannel.last = currPixelSideChannel.last;
       dataOutSideChannel.id = currPixelSideChannel.id;
       dataOutSideChannel.dest = currPixelSideChannel.dest;
       outStream.write(dataOutSideChannel);
       }
       }

Test Bench:

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
cv::cvtColor(imageSrc, imageSrc, CV_BGR2GRAY)
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

Performance Estimate and Resource Estimate to perform HISTOGRAM STRETCH on Hardware

















OUTPUT
            INPUT							OUTPUT







The above two IP’s generated using HLS should be imported it to VIVADO.
























We need to create a block design to integrate these blocks with PS in Zed Board.




























BROADCAST BLOCK: This block is used to send AXI stream data to two IP’s parallelly or we can say it repeats the stream to two IP’ cores (stream is synchronised).
OVERALL SCHEMATIC









FLOOR PLAN














REPORT UTILIZATION
 
REPORT OF TIMING
 
After creating HDL Wrapper, we generated the bitstream and Exported hardware including bitstream then jumped to SDK. 
 
 
 
 
 
 
SDK PART:
We have to convert the image as header fine and include it in code. The process of converting image is included in MATLAB Section.
 

















INCLUDED EXTRA INFO:
MATLAB:
Code to Perform Histogram Stretch:
Save this file as .m file 
--------------------------------------------
function [imgOut] = strechHisto(imgIn)
yMax = single(255);
xMin = single(min(min(imgIn)));
xMax = single(max(max(imgIn)));
imgOut = imgIn;
for idx=1:numel(imgIn)
    x = single(imgIn(idx));
    imgOut(idx)=((x-xMin)/(xMax-xMin))*yMax;
end
end
--------------------------------------------

Commands:

Go to Working directory

To read image into variable 

>> img = imread('Lennawithoutstr.bmp') 
To see image stored in variable
>> imtool(img)
To find max and minimum pixel intensity of image
>> min(min(img))
>> max(max(img))
To check histogram
>> histogram(img)
To Perform histogram stretch 
>> imtool(strechHisto(img));
To Convert data into csv file which can in used as input (in header file format) in SDK
>> reshape(img,1,[])
>> csvwrite('grp.csv',ans)




 
 
![image](https://user-images.githubusercontent.com/110079648/204357339-c54430b1-0152-4970-9148-d16788ac71ad.png)
