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
testbench/test_core.o: D:/HLS_PROJECT/histogram/test_core.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/HLS_PROJECT -IC:/Xilinx/Vivado/2018.3/include -IC:/Xilinx/Vivado/2018.3/win64/tools/auto_cc/include -IC:/Xilinx/Vivado/2018.3/include/ap_sysc -IC:/Xilinx/Vivado/2018.3/win64/tools/systemc/include -IC:/Xilinx/Vivado/2018.3/include/etc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


