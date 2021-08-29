# Data pre-processing for computed tomography on FPGA


# Disclaimer
This is an academic master's course integrated project done at Otto von Guericke University, Germany. Without permission, this code should not be used for any kind of personal or industrial work.

# What is done by myself
In this file, I developed a software envirnment to evaluate the data pre-processing for different data type precision. For instance, floating point precision and arbitary fixed point precision. I used the flatiing point standard defined by IEEE-754. There are four different types of floating point abailable, for instance, half, single, double, and quad. The vivado HLS don't support quad precision. That's why we are able to evaluate first three floating point precisions. On the other hand, arbitary fixed precision is supported by the vivado HLS and I used only one fixed precision which is 128 bits precision.   
