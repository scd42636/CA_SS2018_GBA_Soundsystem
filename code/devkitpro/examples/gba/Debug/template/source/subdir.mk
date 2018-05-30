################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../template/source/template.c 

OBJS += \
./template/source/template.o 

C_DEPS += \
./template/source/template.d 


# Each subdirectory must supply rules for building sources it contributes
template/source/%.o: ../template/source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/opt/devkitpro/devkitARM/include -I/opt/devkitpro/libgba/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


