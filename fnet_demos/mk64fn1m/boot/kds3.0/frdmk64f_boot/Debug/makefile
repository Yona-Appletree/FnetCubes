################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/MK64F12/gcc/subdir.mk
-include startup/MK64F12/subdir.mk
-include startup/subdir.mk
-include fnet_stack/stack/subdir.mk
-include fnet_stack/services/tftp/subdir.mk
-include fnet_stack/services/telnet/subdir.mk
-include fnet_stack/services/shell/subdir.mk
-include fnet_stack/services/serial/subdir.mk
-include fnet_stack/services/poll/subdir.mk
-include fnet_stack/services/ping/subdir.mk
-include fnet_stack/services/llmnr/subdir.mk
-include fnet_stack/services/http/subdir.mk
-include fnet_stack/services/fs/subdir.mk
-include fnet_stack/services/flash/subdir.mk
-include fnet_stack/services/dns/subdir.mk
-include fnet_stack/services/dhcp/subdir.mk
-include fnet_stack/os/ucosIII/subdir.mk
-include fnet_stack/os/freertos/subdir.mk
-include fnet_stack/os/brtos/subdir.mk
-include fnet_stack/cpu/mpc/subdir.mk
-include fnet_stack/cpu/mk/subdir.mk
-include fnet_stack/cpu/mcf/subdir.mk
-include fnet_stack/cpu/common/subdir.mk
-include fnet_stack/cpu/subdir.mk
-include fnet_application/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
frdmk64f_boot.srec \


# All Target
all: frdmk64f_boot.elf secondary-outputs

# Tool invocations
frdmk64f_boot.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -T ../../config_files/MK64FN1M0xxx12_flash.ld -Xlinker --gc-sections -Wl,-Map,"frdmk64f_boot.map" -Xlinker --defsym=__stack_size__=0x2000  -Xlinker --defsym=__heap_size__=0x2000 -o "frdmk64f_boot.elf" -Xlinker --start-group $(OBJS) $(USER_OBJS) $(LIBS) -Xlinker --end-group
	@echo 'Finished building target: $@'
	@echo ' '

frdmk64f_boot.srec: frdmk64f_boot.elf
	@echo 'Invoking: Cross ARM GNU Create Flash Image'
	arm-none-eabi-objcopy -O srec "frdmk64f_boot.elf"  "frdmk64f_boot.srec"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(ASM_DEPS)$(SECONDARY_FLASH)$(S_UPPER_DEPS) frdmk64f_boot.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
