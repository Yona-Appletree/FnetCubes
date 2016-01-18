################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/common/fnet_fec.c 

OBJS += \
./fnet_stack/cpu/common/fnet_fec.o 

C_DEPS += \
./fnet_stack/cpu/common/fnet_fec.d 


# Each subdirectory must supply rules for building sources it contributes
fnet_stack/cpu/common/fnet_fec.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/common/fnet_fec.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/common/fnet_fec.d" -MT"fnet_stack/cpu/common/fnet_fec.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


