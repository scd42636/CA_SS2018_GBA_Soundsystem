################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../audio/PlayBoyScout/source/PlayBoyScout.c 

OBJS += \
./audio/PlayBoyScout/source/PlayBoyScout.o 

C_DEPS += \
./audio/PlayBoyScout/source/PlayBoyScout.d 


# Each subdirectory must supply rules for building sources it contributes
audio/PlayBoyScout/source/%.o: ../audio/PlayBoyScout/source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/opt/devkitpro/devkitARM/include -I/opt/devkitpro/libgba/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


