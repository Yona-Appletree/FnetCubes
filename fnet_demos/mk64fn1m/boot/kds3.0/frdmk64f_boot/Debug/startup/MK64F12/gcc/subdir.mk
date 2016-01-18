################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/startup/startup_mk64fn1/startup/MK64F12/gcc/startup_MK64F12.S 

OBJS += \
./startup/MK64F12/gcc/startup_MK64F12.o 

S_UPPER_DEPS += \
./startup/MK64F12/gcc/startup_MK64F12.d 


# Each subdirectory must supply rules for building sources it contributes
startup/MK64F12/gcc/startup_MK64F12.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/startup/startup_mk64fn1/startup/MK64F12/gcc/startup_MK64F12.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -x assembler-with-cpp -DDEBUG -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -MMD -MP -MF"startup/MK64F12/gcc/startup_MK64F12.d" -MT"startup/MK64F12/gcc/startup_MK64F12.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


