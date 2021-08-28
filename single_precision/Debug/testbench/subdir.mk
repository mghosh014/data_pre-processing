################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../test_core.cpp 

OBJS += \
./testbench/test_core.o 

CPP_DEPS += \
./testbench/test_core.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/test_core.o: C:/Users/Mukesh/AppData/Roaming/Xilinx/Vivado/FS/test_core.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -IC:/Xilinx/Vivado/2019.2/include -IC:/Xilinx/Vivado/2019.2/include/etc -IC:/Xilinx/Vivado/2019.2/win64/tools/systemc/include -IC:/Users/Mukesh/AppData/Roaming/Xilinx/Vivado -IC:/Xilinx/Vivado/2019.2/include/ap_sysc -IC:/Xilinx/Vivado/2019.2/win64/tools/auto_cc/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/test_core.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


