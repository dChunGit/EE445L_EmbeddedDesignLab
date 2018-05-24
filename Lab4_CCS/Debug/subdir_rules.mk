################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
ADCSWTrigger.obj: ../ADCSWTrigger.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="ADCSWTrigger.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Addon.obj: ../Addon.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="Addon.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

DAC.obj: ../DAC.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="DAC.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

LCD.obj: ../LCD.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="LCD.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

LED.obj: ../LED.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="LED.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

PLL.obj: ../PLL.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="PLL.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

ST7735.obj: ../ST7735.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="ST7735.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

ST7735Addon.obj: ../ST7735Addon.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="ST7735Addon.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Sound.obj: ../Sound.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="Sound.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Switch.obj: ../Switch.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="Switch.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

SysTick.obj: ../SysTick.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="SysTick.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Timer0.obj: ../Timer0.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="Timer0.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Timer1.obj: ../Timer1.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="Timer1.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

board.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/board.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="board.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

device.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/device.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="device.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

driver.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/driver.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="driver.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

flowcont.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/flowcont.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="flowcont.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

fs.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/fs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="fs.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="main.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

netapp.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/netapp.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="netapp.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

netcfg.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/netcfg.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="netcfg.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

nonos.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/nonos.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="nonos.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

socket.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/socket.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="socket.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

spawn.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/spawn.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="spawn.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

spi.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/spi.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="spi.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

startup_ccs.obj: ../startup_ccs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="startup_ccs.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

uart.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/uart.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="uart.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

uartstdio.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/uartstdio.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="uartstdio.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

ustdlib.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/platform/ek-tm4c123gxl/ustdlib.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="ustdlib.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

wlan.obj: C:/Users/dwsch/code/Embedded/Help/CC3100/simplelink/source/wlan.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.6.LTS/include" --include_path="C:/Users/dwsch/workspace_v7/inc" --include_path="C:/Users/dwsch/workspace_v7" --include_path="C:/Users/dwsch/workspace_v7/utils" --include_path="C:/Users/dwsch/workspace_v7/cc3100" --include_path="C:/Users/dwsch/workspace_v7/cc3100/platform/ek-tm4c123gxl" --include_path="C:/Users/dwsch/workspace_v7/CC3100/simplelink/include" --include_path="C:/Users/dwsch/workspace_v7/cc3100/simplelink/source" -g --c99 --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="wlan.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


