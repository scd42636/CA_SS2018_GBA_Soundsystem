################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../graphics/ansi_console/source/console.c 

OBJS += \
./graphics/ansi_console/source/console.o 

C_DEPS += \
./graphics/ansi_console/source/console.d 


# Each subdirectory must supply rules for building sources it contributes
graphics/ansi_console/source/%.o: ../graphics/ansi_console/source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/opt/devkitpro/devkitARM/include -I/opt/devkitpro/libgba/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


