################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../tm4c123gh6pm.cmd 

C_SRCS += \
../ADCSWTrigger.c \
../Addon.c \
../DAC.c \
../LCD.c \
../LED.c \
../PLL.c \
../ST7735.c \
../ST7735Addon.c \
../Sound.c \
../Switch.c \
../SysTick.c \
../Timer0.c \
../Timer1.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/board.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/device.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/driver.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/flowcont.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/fs.c \
../main.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/netapp.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/netcfg.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/nonos.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/socket.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/spawn.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/spi.c \
../startup_ccs.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/uart.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/uartstdio.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/ustdlib.c \
C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/wlan.c 

C_DEPS += \
./ADCSWTrigger.d \
./Addon.d \
./DAC.d \
./LCD.d \
./LED.d \
./PLL.d \
./ST7735.d \
./ST7735Addon.d \
./Sound.d \
./Switch.d \
./SysTick.d \
./Timer0.d \
./Timer1.d \
./board.d \
./device.d \
./driver.d \
./flowcont.d \
./fs.d \
./main.d \
./netapp.d \
./netcfg.d \
./nonos.d \
./socket.d \
./spawn.d \
./spi.d \
./startup_ccs.d \
./uart.d \
./uartstdio.d \
./ustdlib.d \
./wlan.d 

OBJS += \
./ADCSWTrigger.obj \
./Addon.obj \
./DAC.obj \
./LCD.obj \
./LED.obj \
./PLL.obj \
./ST7735.obj \
./ST7735Addon.obj \
./Sound.obj \
./Switch.obj \
./SysTick.obj \
./Timer0.obj \
./Timer1.obj \
./board.obj \
./device.obj \
./driver.obj \
./flowcont.obj \
./fs.obj \
./main.obj \
./netapp.obj \
./netcfg.obj \
./nonos.obj \
./socket.obj \
./spawn.obj \
./spi.obj \
./startup_ccs.obj \
./uart.obj \
./uartstdio.obj \
./ustdlib.obj \
./wlan.obj 

OBJS__QUOTED += \
"ADCSWTrigger.obj" \
"Addon.obj" \
"DAC.obj" \
"LCD.obj" \
"LED.obj" \
"PLL.obj" \
"ST7735.obj" \
"ST7735Addon.obj" \
"Sound.obj" \
"Switch.obj" \
"SysTick.obj" \
"Timer0.obj" \
"Timer1.obj" \
"board.obj" \
"device.obj" \
"driver.obj" \
"flowcont.obj" \
"fs.obj" \
"main.obj" \
"netapp.obj" \
"netcfg.obj" \
"nonos.obj" \
"socket.obj" \
"spawn.obj" \
"spi.obj" \
"startup_ccs.obj" \
"uart.obj" \
"uartstdio.obj" \
"ustdlib.obj" \
"wlan.obj" 

C_DEPS__QUOTED += \
"ADCSWTrigger.d" \
"Addon.d" \
"DAC.d" \
"LCD.d" \
"LED.d" \
"PLL.d" \
"ST7735.d" \
"ST7735Addon.d" \
"Sound.d" \
"Switch.d" \
"SysTick.d" \
"Timer0.d" \
"Timer1.d" \
"board.d" \
"device.d" \
"driver.d" \
"flowcont.d" \
"fs.d" \
"main.d" \
"netapp.d" \
"netcfg.d" \
"nonos.d" \
"socket.d" \
"spawn.d" \
"spi.d" \
"startup_ccs.d" \
"uart.d" \
"uartstdio.d" \
"ustdlib.d" \
"wlan.d" 

C_SRCS__QUOTED += \
"../ADCSWTrigger.c" \
"../Addon.c" \
"../DAC.c" \
"../LCD.c" \
"../LED.c" \
"../PLL.c" \
"../ST7735.c" \
"../ST7735Addon.c" \
"../Sound.c" \
"../Switch.c" \
"../SysTick.c" \
"../Timer0.c" \
"../Timer1.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/board.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/device.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/driver.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/flowcont.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/fs.c" \
"../main.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/netapp.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/netcfg.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/nonos.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/socket.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/spawn.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/spi.c" \
"../startup_ccs.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/uart.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/uartstdio.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/ustdlib.c" \
"C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/wlan.c" 


