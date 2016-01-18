################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_arp.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_checksum.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_error.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_eth.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_icmp.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_icmp6.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_igmp.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_inet.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_ip.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_ip6.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_isr.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_loop.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_mempool.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_mld.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_nd6.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_netbuf.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_netif.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_prot.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_raw.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_socket.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_stack.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_stdlib.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_tcp.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_timer.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_udp.c 

OBJS += \
./fnet_stack/stack/fnet_arp.o \
./fnet_stack/stack/fnet_checksum.o \
./fnet_stack/stack/fnet_error.o \
./fnet_stack/stack/fnet_eth.o \
./fnet_stack/stack/fnet_icmp.o \
./fnet_stack/stack/fnet_icmp6.o \
./fnet_stack/stack/fnet_igmp.o \
./fnet_stack/stack/fnet_inet.o \
./fnet_stack/stack/fnet_ip.o \
./fnet_stack/stack/fnet_ip6.o \
./fnet_stack/stack/fnet_isr.o \
./fnet_stack/stack/fnet_loop.o \
./fnet_stack/stack/fnet_mempool.o \
./fnet_stack/stack/fnet_mld.o \
./fnet_stack/stack/fnet_nd6.o \
./fnet_stack/stack/fnet_netbuf.o \
./fnet_stack/stack/fnet_netif.o \
./fnet_stack/stack/fnet_prot.o \
./fnet_stack/stack/fnet_raw.o \
./fnet_stack/stack/fnet_socket.o \
./fnet_stack/stack/fnet_stack.o \
./fnet_stack/stack/fnet_stdlib.o \
./fnet_stack/stack/fnet_tcp.o \
./fnet_stack/stack/fnet_timer.o \
./fnet_stack/stack/fnet_udp.o 

C_DEPS += \
./fnet_stack/stack/fnet_arp.d \
./fnet_stack/stack/fnet_checksum.d \
./fnet_stack/stack/fnet_error.d \
./fnet_stack/stack/fnet_eth.d \
./fnet_stack/stack/fnet_icmp.d \
./fnet_stack/stack/fnet_icmp6.d \
./fnet_stack/stack/fnet_igmp.d \
./fnet_stack/stack/fnet_inet.d \
./fnet_stack/stack/fnet_ip.d \
./fnet_stack/stack/fnet_ip6.d \
./fnet_stack/stack/fnet_isr.d \
./fnet_stack/stack/fnet_loop.d \
./fnet_stack/stack/fnet_mempool.d \
./fnet_stack/stack/fnet_mld.d \
./fnet_stack/stack/fnet_nd6.d \
./fnet_stack/stack/fnet_netbuf.d \
./fnet_stack/stack/fnet_netif.d \
./fnet_stack/stack/fnet_prot.d \
./fnet_stack/stack/fnet_raw.d \
./fnet_stack/stack/fnet_socket.d \
./fnet_stack/stack/fnet_stack.d \
./fnet_stack/stack/fnet_stdlib.d \
./fnet_stack/stack/fnet_tcp.d \
./fnet_stack/stack/fnet_timer.d \
./fnet_stack/stack/fnet_udp.d 


# Each subdirectory must supply rules for building sources it contributes
fnet_stack/stack/fnet_arp.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_arp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_arp.d" -MT"fnet_stack/stack/fnet_arp.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_checksum.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_checksum.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_checksum.d" -MT"fnet_stack/stack/fnet_checksum.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_error.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_error.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_error.d" -MT"fnet_stack/stack/fnet_error.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_eth.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_eth.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_eth.d" -MT"fnet_stack/stack/fnet_eth.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_icmp.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_icmp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_icmp.d" -MT"fnet_stack/stack/fnet_icmp.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_icmp6.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_icmp6.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_icmp6.d" -MT"fnet_stack/stack/fnet_icmp6.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_igmp.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_igmp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_igmp.d" -MT"fnet_stack/stack/fnet_igmp.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_inet.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_inet.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_inet.d" -MT"fnet_stack/stack/fnet_inet.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_ip.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_ip.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_ip.d" -MT"fnet_stack/stack/fnet_ip.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_ip6.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_ip6.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_ip6.d" -MT"fnet_stack/stack/fnet_ip6.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_isr.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_isr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_isr.d" -MT"fnet_stack/stack/fnet_isr.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_loop.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_loop.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_loop.d" -MT"fnet_stack/stack/fnet_loop.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_mempool.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_mempool.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_mempool.d" -MT"fnet_stack/stack/fnet_mempool.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_mld.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_mld.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_mld.d" -MT"fnet_stack/stack/fnet_mld.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_nd6.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_nd6.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_nd6.d" -MT"fnet_stack/stack/fnet_nd6.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_netbuf.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_netbuf.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_netbuf.d" -MT"fnet_stack/stack/fnet_netbuf.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_netif.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_netif.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_netif.d" -MT"fnet_stack/stack/fnet_netif.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_prot.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_prot.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_prot.d" -MT"fnet_stack/stack/fnet_prot.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_raw.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_raw.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_raw.d" -MT"fnet_stack/stack/fnet_raw.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_socket.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_socket.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_socket.d" -MT"fnet_stack/stack/fnet_socket.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_stack.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_stack.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_stack.d" -MT"fnet_stack/stack/fnet_stack.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_stdlib.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_stdlib.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_stdlib.d" -MT"fnet_stack/stack/fnet_stdlib.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_tcp.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_tcp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_tcp.d" -MT"fnet_stack/stack/fnet_tcp.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_timer.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_timer.d" -MT"fnet_stack/stack/fnet_timer.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/stack/fnet_udp.o: C:/FNET/FNET\ 3.0.0/fnet_stack/stack/fnet_udp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/stack/fnet_udp.d" -MT"fnet_stack/stack/fnet_udp.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


