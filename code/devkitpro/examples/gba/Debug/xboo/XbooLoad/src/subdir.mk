################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../xboo/XbooLoad/src/XbooLoad.c 

OBJS += \
./xboo/XbooLoad/src/XbooLoad.o 

C_DEPS += \
./xboo/XbooLoad/src/XbooLoad.d 


# Each subdirectory must supply rules for building sources it contributes
xboo/XbooLoad/src/%.o: ../xboo/XbooLoad/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/opt/devkitpro/devkitARM/include -I/opt/devkitpro/libgba/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


