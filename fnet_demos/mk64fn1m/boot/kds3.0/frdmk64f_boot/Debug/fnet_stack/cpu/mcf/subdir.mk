################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_cache.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_eth.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_flash.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_isr_inst.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_serial.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_stdlib.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_timer.c 

OBJS += \
./fnet_stack/cpu/mcf/fnet_mcf.o \
./fnet_stack/cpu/mcf/fnet_mcf_cache.o \
./fnet_stack/cpu/mcf/fnet_mcf_eth.o \
./fnet_stack/cpu/mcf/fnet_mcf_flash.o \
./fnet_stack/cpu/mcf/fnet_mcf_isr_inst.o \
./fnet_stack/cpu/mcf/fnet_mcf_serial.o \
./fnet_stack/cpu/mcf/fnet_mcf_stdlib.o \
./fnet_stack/cpu/mcf/fnet_mcf_timer.o 

C_DEPS += \
./fnet_stack/cpu/mcf/fnet_mcf.d \
./fnet_stack/cpu/mcf/fnet_mcf_cache.d \
./fnet_stack/cpu/mcf/fnet_mcf_eth.d \
./fnet_stack/cpu/mcf/fnet_mcf_flash.d \
./fnet_stack/cpu/mcf/fnet_mcf_isr_inst.d \
./fnet_stack/cpu/mcf/fnet_mcf_serial.d \
./fnet_stack/cpu/mcf/fnet_mcf_stdlib.d \
./fnet_stack/cpu/mcf/fnet_mcf_timer.d 


# Each subdirectory must supply rules for building sources it contributes
fnet_stack/cpu/mcf/fnet_mcf.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mcf/fnet_mcf.d" -MT"fnet_stack/cpu/mcf/fnet_mcf.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mcf/fnet_mcf_cache.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_cache.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mcf/fnet_mcf_cache.d" -MT"fnet_stack/cpu/mcf/fnet_mcf_cache.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mcf/fnet_mcf_eth.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_eth.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mcf/fnet_mcf_eth.d" -MT"fnet_stack/cpu/mcf/fnet_mcf_eth.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mcf/fnet_mcf_flash.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mcf/fnet_mcf_flash.d" -MT"fnet_stack/cpu/mcf/fnet_mcf_flash.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mcf/fnet_mcf_isr_inst.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_isr_inst.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mcf/fnet_mcf_isr_inst.d" -MT"fnet_stack/cpu/mcf/fnet_mcf_isr_inst.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mcf/fnet_mcf_serial.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_serial.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mcf/fnet_mcf_serial.d" -MT"fnet_stack/cpu/mcf/fnet_mcf_serial.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mcf/fnet_mcf_stdlib.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_stdlib.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mcf/fnet_mcf_stdlib.d" -MT"fnet_stack/cpu/mcf/fnet_mcf_stdlib.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mcf/fnet_mcf_timer.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mcf/fnet_mcf_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mcf/fnet_mcf_timer.d" -MT"fnet_stack/cpu/mcf/fnet_mcf_timer.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


