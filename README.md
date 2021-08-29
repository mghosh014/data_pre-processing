# Data pre-processing for computed tomography on FPGA


# Disclaimer
This is an academic master's course-integrated project done at Otto von Guericke University, Germany. Without permission, this code should not be used for any kind of personal or industrial work.

# What is done by myself?
In this file, I developed a software environment to evaluate the data pre-processing for different data type precision. For instance, floating-point precision and arbitrary fixed point precision. I used the floating-point standard defined by IEEE-754. There are four different types of floating points available, for instance, half, single, double, and quad. The vivado HLS doesn't support quad precision. That's why we are able to evaluate the first three floating-point precisions. On the other hand, arbitrary fixed precision is supported by the vivado HLS and I used only one fixed precision which is 128 bits precision.

# How to build
You have to open this project on Vivadol HLS, where if you tun C synthesis you will get the resource utilization results. After that, run the C simulation and my testbench file will open my input image binary format file. The testbench will send the stream data to my pre-processing core. Then, my pre-processing core will use the stream input and do the arithmetic operation. Lastly, if you want to see the output image result you can use ImageJ software. ImageJ will open the binary format image file and now you are able to observe the output image results.

# Software requirement
Make sure you have installed Vivado Design Suite - HLx. I used 2019.2 editions, you can use any edition you want but not too old editions. The software download links are given below,

* Vivado Design Suite - HLx 2019.2 Editions, [Software download link](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html)
* ImageJ, [Software download link](https://imagej.nih.gov/ij/download.html)

# How to clone the repository
In the git bash terminal use the following command to close the repository
   $ git clone https://github.com/mghosh014/data_pre-processing.git
   

# How this code works
Open vivado HLS tool and import this project to the vivadol HLS. Afterward, run the C synthesis and wait until the simulation is finished. Later, open the raw input image as a binary file and pre-processed the output image into ImageJ software, and observe the pre-processed effect, file location: solution1/csim/build.

# FPGA resource utilization
If we take a look at DSP, flip-flop, LUT, and latency comparison bar graph then we can get an idea that is half-precision is the most cost-effective design solution while it has a high latency compare to single precision.

![dsp](https://user-images.githubusercontent.com/71605277/131260448-86809682-4587-4dd6-afbc-af253f8d2656.jpg)

![ff](https://user-images.githubusercontent.com/71605277/131260535-54c140b0-da89-4b85-a7a9-d2d100e13685.jpg)

![LUT](https://user-images.githubusercontent.com/71605277/131260684-35118264-5812-4744-b3b9-c494b6a9357f.jpg)

![latency](https://user-images.githubusercontent.com/71605277/131260682-7517f221-1866-4a8d-9f24-8ca22c017ebc.jpg)


# Mean Absolute Percentage Error and Mean Squared Error 
The error we got, is a negligible error and it has no impact on our output image.

![mape](https://user-images.githubusercontent.com/71605277/131260685-0640b8c6-5c7c-4b12-8edb-68dad5e07b55.jpg)

![mse](https://user-images.githubusercontent.com/71605277/131260686-b851638f-62ca-40ba-a8cd-2534c863551d.jpg)

