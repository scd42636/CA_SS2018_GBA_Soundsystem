################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbv2/mbv2print/src/mbv2print.c 

OBJS += \
./mbv2/mbv2print/src/mbv2print.o 

C_DEPS += \
./mbv2/mbv2print/src/mbv2print.d 


# Each subdirectory must supply rules for building sources it contributes
mbv2/mbv2print/src/%.o: ../mbv2/mbv2print/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/opt/devkitpro/devkitARM/include -I/opt/devkitpro/libgba/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


