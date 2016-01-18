################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http_auth.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http_cgi.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http_get.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http_post.c \
C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http_ssi.c 

OBJS += \
./fnet_stack/services/http/fnet_http.o \
./fnet_stack/services/http/fnet_http_auth.o \
./fnet_stack/services/http/fnet_http_cgi.o \
./fnet_stack/services/http/fnet_http_get.o \
./fnet_stack/services/http/fnet_http_post.o \
./fnet_stack/services/http/fnet_http_ssi.o 

C_DEPS += \
./fnet_stack/services/http/fnet_http.d \
./fnet_stack/services/http/fnet_http_auth.d \
./fnet_stack/services/http/fnet_http_cgi.d \
./fnet_stack/services/http/fnet_http_get.d \
./fnet_stack/services/http/fnet_http_post.d \
./fnet_stack/services/http/fnet_http_ssi.d 


# Each subdirectory must supply rules for building sources it contributes
fnet_stack/services/http/fnet_http.o: C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/services/http/fnet_http.d" -MT"fnet_stack/services/http/fnet_http.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/services/http/fnet_http_auth.o: C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http_auth.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/services/http/fnet_http_auth.d" -MT"fnet_stack/services/http/fnet_http_auth.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/services/http/fnet_http_cgi.o: C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http_cgi.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/services/http/fnet_http_cgi.d" -MT"fnet_stack/services/http/fnet_http_cgi.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/services/http/fnet_http_get.o: C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http_get.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/services/http/fnet_http_get.d" -MT"fnet_stack/services/http/fnet_http_get.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/services/http/fnet_http_post.o: C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http_post.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/services/http/fnet_http_post.d" -MT"fnet_stack/services/http/fnet_http_post.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fnet_stack/services/http/fnet_http_ssi.o: C:/FNET/FNET\ 3.0.0/fnet_stack/services/http/fnet_http_ssi.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DKDS -DFRDM_K64F120M -DFREEDOM -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include -I../../../../../common/startup/startup_mk64fn1/CMSIS/Include/device -I../../../../../common/startup/startup_mk64fn1/startup/MK64F12 -I../../../../../common/fnet_application -I../../../../../../fnet_stack -I/ -I../../src -std=gnu99 -MMD -MP -MF"fnet_stack/services/http/fnet_http_ssi.d" -MT"fnet_stack/services/http/fnet_http_ssi.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


