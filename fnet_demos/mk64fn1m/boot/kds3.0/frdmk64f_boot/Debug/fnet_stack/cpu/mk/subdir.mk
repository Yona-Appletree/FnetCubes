################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_cache.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_eth.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_flash.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_isr.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_isr_inst.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_serial.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_stdlib.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_timer.c 

S_UPPER_SRCS += \
C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_low.S 

OBJS += \
./fnet_stack/cpu/mk/fnet_mk.o \
./fnet_stack/cpu/mk/fnet_mk_cache.o \
./fnet_stack/cpu/mk/fnet_mk_eth.o \
./fnet_stack/cpu/mk/fnet_mk_flash.o \
./fnet_stack/cpu/mk/fnet_mk_isr.o \
./fnet_stack/cpu/mk/fnet_mk_isr_inst.o \
./fnet_stack/cpu/mk/fnet_mk_low.o \
./fnet_stack/cpu/mk/fnet_mk_serial.o \
./fnet_stack/cpu/mk/fnet_mk_stdlib.o \
./fnet_stack/cpu/mk/fnet_mk_timer.o 

C_DEPS += \
./fnet_stack/cpu/mk/fnet_mk.d \
./fnet_stack/cpu/mk/fnet_mk_cache.d \
./fnet_stack/cpu/mk/fnet_mk_eth.d \
./fnet_stack/cpu/mk/fnet_mk_flash.d \
./fnet_stack/cpu/mk/fnet_mk_isr.d \
./fnet_stack/cpu/mk/fnet_mk_isr_inst.d \
./fnet_stack/cpu/mk/fnet_mk_serial.d \
./fnet_stack/cpu/mk/fnet_mk_stdlib.d \
./fnet_stack/cpu/mk/fnet_mk_timer.d 

S_UPPER_DEPS += \
./fnet_stack/cpu/mk/fnet_mk_low.d 


# Each subdirectory must supply rules for building sources it contributes
fnet_stack/cpu/mk/fnet_mk.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mk/fnet_mk.d" -MT"fnet_stack/cpu/mk/fnet_mk.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mk/fnet_mk_cache.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_cache.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mk/fnet_mk_cache.d" -MT"fnet_stack/cpu/mk/fnet_mk_cache.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mk/fnet_mk_eth.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_eth.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mk/fnet_mk_eth.d" -MT"fnet_stack/cpu/mk/fnet_mk_eth.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mk/fnet_mk_flash.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mk/fnet_mk_flash.d" -MT"fnet_stack/cpu/mk/fnet_mk_flash.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mk/fnet_mk_isr.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_isr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mk/fnet_mk_isr.d" -MT"fnet_stack/cpu/mk/fnet_mk_isr.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mk/fnet_mk_isr_inst.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_isr_inst.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mk/fnet_mk_isr_inst.d" -MT"fnet_stack/cpu/mk/fnet_mk_isr_inst.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mk/fnet_mk_low.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_low.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -x assembler-with-cpp -DDEBUG -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -MMD -MP -MF"fnet_stack/cpu/mk/fnet_mk_low.d" -MT"fnet_stack/cpu/mk/fnet_mk_low.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mk/fnet_mk_serial.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_serial.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mk/fnet_mk_serial.d" -MT"fnet_stack/cpu/mk/fnet_mk_serial.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mk/fnet_mk_stdlib.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_stdlib.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mk/fnet_mk_stdlib.d" -MT"fnet_stack/cpu/mk/fnet_mk_stdlib.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/cpu/mk/fnet_mk_timer.o: C:/FNET/FNET\ 3.0.0/fnet_stack/cpu/mk/fnet_mk_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/cpu/mk/fnet_mk_timer.d" -MT"fnet_stack/cpu/mk/fnet_mk_timer.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


