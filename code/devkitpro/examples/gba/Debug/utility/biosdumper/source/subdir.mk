################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../utility/biosdumper/source/biosdumper.c 

OBJS += \
./utility/biosdumper/source/biosdumper.o 

C_DEPS += \
./utility/biosdumper/source/biosdumper.d 


# Each subdirectory must supply rules for building sources it contributes
utility/biosdumper/source/%.o: ../utility/biosdumper/source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/opt/devkitpro/devkitARM/include -I/opt/devkitpro/libgba/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


