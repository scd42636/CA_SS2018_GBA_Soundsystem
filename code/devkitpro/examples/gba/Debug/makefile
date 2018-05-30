################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include xboo/XbooPrint/source/subdir.mk
-include xboo/XbooPrint/build/subdir.mk
-include xboo/XbooLoad/src/subdir.mk
-include xboo/XbooLoad/build/subdir.mk
-include utility/biosdumper/source/subdir.mk
-include utility/biosdumper/build/subdir.mk
-include template/source/subdir.mk
-include template/build/subdir.mk
-include mbv2/mbv2print/src/subdir.mk
-include mbv2/mbv2print/build/subdir.mk
-include graphics/ansi_console/source/subdir.mk
-include graphics/ansi_console/build/subdir.mk
-include graphics/SimpleBGScroll/source/subdir.mk
-include graphics/SimpleBGScroll/build/subdir.mk
-include graphics/PCXView/source/subdir.mk
-include graphics/PCXView/build/subdir.mk
-include audio/maxmod/basic_sound/source/subdir.mk
-include audio/maxmod/basic_sound/build/subdir.mk
-include audio/PlayBoyScout/source/subdir.mk
-include audio/PlayBoyScout/build/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: GBA_IDE

# Tool invocations
GBA_IDE: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C Linker'
	gcc  -o "GBA_IDE" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) GBA_IDE
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
