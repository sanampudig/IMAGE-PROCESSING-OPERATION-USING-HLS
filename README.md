# IMAGE PROCESSING OPERATION USING HLS

# SOFTWARE HARDWARE CO-DESIGN TO PERFORM CONTRAST ADJUSTMENT OPERATION ON ZEDBOARD USING HLS AND XILINK SDK


![IIITB Silver Jubilee Logo](https://user-images.githubusercontent.com/110079648/204360431-1f394d1c-6847-4eae-95c8-1b9fc9d81fe6.png)

The histogram of an image is a function that maps each grey level of an image to the number of times it occurs in the image. From Histogram we extract maximum and minimum pixel value.

<img width="637" alt="image" src="https://user-images.githubusercontent.com/110079648/204360546-34871f0d-812b-4678-9331-415511b9fe24.png">

If histogram of image is not sparce or limited to small range of values then contrast of image is very poor. To such images we can perform histogram stretch to increase quality and visibility of image.

<img width="534" alt="image" src="https://user-images.githubusercontent.com/110079648/204360606-2a90af6c-4a33-4a52-a5d9-b1a80f942cbf.png">

<img width="595" alt="image" src="https://user-images.githubusercontent.com/110079648/204360637-99a0155e-bb7f-4795-99a5-eb656771bff9.png">

Formula to calculate Histogram Stretch:

<img width="219" alt="image" src="https://user-images.githubusercontent.com/110079648/204360710-5469a918-4c03-4ad2-ab4b-fda94d5e6e66.png">


Xmin/Xmax – Minimum/Maximum Value of Input Image
Ymax – Maximum Possible Value(i.e.255)


<img width="660" alt="image" src="https://user-images.githubusercontent.com/110079648/204360776-abd692ff-d028-475f-9080-ad35669cb484.png">

