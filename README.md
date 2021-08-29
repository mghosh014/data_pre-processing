# Data pre-processing for computed tomography on FPGA


# Disclaimer
This is an academic master's course integrated project done at Otto von Guericke University, Germany. Without permission, this code should not be used for any kind of personal or industrial work.

# What is done by myself
In this file, I developed a software envirnment to evaluate the data pre-processing for different data type precision. For instance, floating point precision and arbitary fixed point precision. I used the flatiing point standard defined by IEEE-754. There are four different types of floating point abailable, for instance, half, single, double, and quad. The vivado HLS don't support quad precision. That's why we are able to evaluate first three floating point precisions. On the other hand, arbitary fixed precision is supported by the vivado HLS and I used only one fixed precision which is 128 bits precision.


# How to build
You have to open this project on Vivadol HLS, where if you tun C synthesis you will get the resource utilization results. After that, run the C simulation and my testbench file will open my input image binary format file. The testbench will send the stream data to my pre-processing core. Then, my pre-processing core will use the stream input and do the arithmatic operation. Lastly, if you want to see the outpur image result you can use ImageJ software. ImageJ will open the binary format image file and now you are able to observe the output image results.
