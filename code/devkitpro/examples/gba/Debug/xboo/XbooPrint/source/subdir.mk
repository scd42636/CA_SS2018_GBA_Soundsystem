################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../xboo/XbooPrint/source/xbooprint.c 

OBJS += \
./xboo/XbooPrint/source/xbooprint.o 

C_DEPS += \
./xboo/XbooPrint/source/xbooprint.d 


# Each subdirectory must supply rules for building sources it contributes
xboo/XbooPrint/source/%.o: ../xboo/XbooPrint/source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/opt/devkitpro/devkitARM/include -I/opt/devkitpro/libgba/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


