################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_bench.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_dhcp.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_dns.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_fs.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_fs_image.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_fs_image_http09.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_http.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_llmnr.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_mem.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_params.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_ping.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_setget.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_telnet.c \
C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_tftp.c 

OBJS += \
./fnet_application/fapp.o \
./fnet_application/fapp_bench.o \
./fnet_application/fapp_dhcp.o \
./fnet_application/fapp_dns.o \
./fnet_application/fapp_fs.o \
./fnet_application/fapp_fs_image.o \
./fnet_application/fapp_fs_image_http09.o \
./fnet_application/fapp_http.o \
./fnet_application/fapp_llmnr.o \
./fnet_application/fapp_mem.o \
./fnet_application/fapp_params.o \
./fnet_application/fapp_ping.o \
./fnet_application/fapp_setget.o \
./fnet_application/fapp_telnet.o \
./fnet_application/fapp_tftp.o 

C_DEPS += \
./fnet_application/fapp.d \
./fnet_application/fapp_bench.d \
./fnet_application/fapp_dhcp.d \
./fnet_application/fapp_dns.d \
./fnet_application/fapp_fs.d \
./fnet_application/fapp_fs_image.d \
./fnet_application/fapp_fs_image_http09.d \
./fnet_application/fapp_http.d \
./fnet_application/fapp_llmnr.d \
./fnet_application/fapp_mem.d \
./fnet_application/fapp_params.d \
./fnet_application/fapp_ping.d \
./fnet_application/fapp_setget.d \
./fnet_application/fapp_telnet.d \
./fnet_application/fapp_tftp.d 


# Each subdirectory must supply rules for building sources it contributes
fnet_application/fapp.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp.d" -MT"fnet_application/fapp.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_bench.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_bench.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_bench.d" -MT"fnet_application/fapp_bench.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_dhcp.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_dhcp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_dhcp.d" -MT"fnet_application/fapp_dhcp.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_dns.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_dns.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_dns.d" -MT"fnet_application/fapp_dns.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_fs.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_fs.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_fs.d" -MT"fnet_application/fapp_fs.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_fs_image.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_fs_image.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_fs_image.d" -MT"fnet_application/fapp_fs_image.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_fs_image_http09.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_fs_image_http09.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_fs_image_http09.d" -MT"fnet_application/fapp_fs_image_http09.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_http.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_http.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_http.d" -MT"fnet_application/fapp_http.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_llmnr.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_llmnr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_llmnr.d" -MT"fnet_application/fapp_llmnr.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_mem.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_mem.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_mem.d" -MT"fnet_application/fapp_mem.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_params.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_params.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_params.d" -MT"fnet_application/fapp_params.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_ping.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_ping.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_ping.d" -MT"fnet_application/fapp_ping.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_setget.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_setget.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_setget.d" -MT"fnet_application/fapp_setget.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_telnet.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_telnet.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_telnet.d" -MT"fnet_application/fapp_telnet.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_application/fapp_tftp.o: C:/FNET/FNET\ 3.0.0/fnet_demos/common/fnet_application/fapp_tftp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_application/fapp_tftp.d" -MT"fnet_application/fapp_tftp.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


