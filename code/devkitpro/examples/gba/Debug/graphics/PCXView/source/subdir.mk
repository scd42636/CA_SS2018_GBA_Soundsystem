################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../graphics/PCXView/source/pcx_view.c 

OBJS += \
./graphics/PCXView/source/pcx_view.o 

C_DEPS += \
./graphics/PCXView/source/pcx_view.d 


# Each subdirectory must supply rules for building sources it contributes
graphics/PCXView/source/%.o: ../graphics/PCXView/source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/opt/devkitpro/devkitARM/include -I/opt/devkitpro/libgba/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


