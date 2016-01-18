################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_cache.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_eth.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_isr.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_isr_inst.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_serial.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_stdlib.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_timer.c 

OBJS += \
./fnet_stack/cpu/mpc/fnet_mpc.o \
./fnet_stack/cpu/mpc/fnet_mpc_cache.o \
./fnet_stack/cpu/mpc/fnet_mpc_eth.o \
./fnet_stack/cpu/mpc/fnet_mpc_isr.o \
./fnet_stack/cpu/mpc/fnet_mpc_isr_inst.o \
./fnet_stack/cpu/mpc/fnet_mpc_serial.o \
./fnet_stack/cpu/mpc/fnet_mpc_stdlib.o \
./fnet_stack/cpu/mpc/fnet_mpc_timer.o 

C_DEPS += \
./fnet_stack/cpu/mpc/fnet_mpc.d \
./fnet_stack/cpu/mpc/fnet_mpc_cache.d \
./fnet_stack/cpu/mpc/fnet_mpc_eth.d \
./fnet_stack/cpu/mpc/fnet_mpc_isr.d \
./fnet_stack/cpu/mpc/fnet_mpc_isr_inst.d \
./fnet_stack/cpu/mpc/fnet_mpc_serial.d \
./fnet_stack/cpu/mpc/fnet_mpc_stdlib.d \
./fnet_stack/cpu/mpc/fnet_mpc_timer.d 


# Each subdirectory must supply rules for building sources it contributes
fnet_stack/cpu/mpc/fnet_mpc.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mpc/fnet_mpc.d" -MT"fnet_stack/cpu/mpc/fnet_mpc.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mpc/fnet_mpc_cache.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_cache.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mpc/fnet_mpc_cache.d" -MT"fnet_stack/cpu/mpc/fnet_mpc_cache.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mpc/fnet_mpc_eth.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_eth.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mpc/fnet_mpc_eth.d" -MT"fnet_stack/cpu/mpc/fnet_mpc_eth.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mpc/fnet_mpc_isr.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_isr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mpc/fnet_mpc_isr.d" -MT"fnet_stack/cpu/mpc/fnet_mpc_isr.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mpc/fnet_mpc_isr_inst.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_isr_inst.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mpc/fnet_mpc_isr_inst.d" -MT"fnet_stack/cpu/mpc/fnet_mpc_isr_inst.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mpc/fnet_mpc_serial.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_serial.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mpc/fnet_mpc_serial.d" -MT"fnet_stack/cpu/mpc/fnet_mpc_serial.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mpc/fnet_mpc_stdlib.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_stdlib.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mpc/fnet_mpc_stdlib.d" -MT"fnet_stack/cpu/mpc/fnet_mpc_stdlib.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mpc/fnet_mpc_timer.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mpc/fnet_mpc_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mpc/fnet_mpc_timer.d" -MT"fnet_stack/cpu/mpc/fnet_mpc_timer.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


