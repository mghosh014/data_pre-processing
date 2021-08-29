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
