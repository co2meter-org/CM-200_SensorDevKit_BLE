################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_gap_aci.c \
C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_gatt_aci.c \
C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_hal_aci.c \
C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_hci_le.c \
C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_l2cap_aci.c \
C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/template/osal.c 

OBJS += \
./Middlewares/STM32_WPAN/ble/core/ble_gap_aci.o \
./Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.o \
./Middlewares/STM32_WPAN/ble/core/ble_hal_aci.o \
./Middlewares/STM32_WPAN/ble/core/ble_hci_le.o \
./Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.o \
./Middlewares/STM32_WPAN/ble/core/osal.o 

C_DEPS += \
./Middlewares/STM32_WPAN/ble/core/ble_gap_aci.d \
./Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.d \
./Middlewares/STM32_WPAN/ble/core/ble_hal_aci.d \
./Middlewares/STM32_WPAN/ble/core/ble_hci_le.d \
./Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.d \
./Middlewares/STM32_WPAN/ble/core/osal.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_WPAN/ble/core/ble_gap_aci.o: C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_gap_aci.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DDEBUG -DSTM32WB55xx -c -I../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../Middlewares/ST/STM32_WPAN -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../Middlewares/ST/STM32_WPAN/ble/core -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/STM32_WPAN/ble/menu -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/ble -I../../Core/Inc -I../../STM32_WPAN/App -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.o: C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_gatt_aci.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DDEBUG -DSTM32WB55xx -c -I../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../Middlewares/ST/STM32_WPAN -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../Middlewares/ST/STM32_WPAN/ble/core -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/STM32_WPAN/ble/menu -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/ble -I../../Core/Inc -I../../STM32_WPAN/App -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_WPAN/ble/core/ble_hal_aci.o: C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_hal_aci.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DDEBUG -DSTM32WB55xx -c -I../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../Middlewares/ST/STM32_WPAN -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../Middlewares/ST/STM32_WPAN/ble/core -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/STM32_WPAN/ble/menu -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/ble -I../../Core/Inc -I../../STM32_WPAN/App -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_WPAN/ble/core/ble_hci_le.o: C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_hci_le.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DDEBUG -DSTM32WB55xx -c -I../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../Middlewares/ST/STM32_WPAN -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../Middlewares/ST/STM32_WPAN/ble/core -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/STM32_WPAN/ble/menu -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/ble -I../../Core/Inc -I../../STM32_WPAN/App -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.o: C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_l2cap_aci.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DDEBUG -DSTM32WB55xx -c -I../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../Middlewares/ST/STM32_WPAN -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../Middlewares/ST/STM32_WPAN/ble/core -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/STM32_WPAN/ble/menu -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/ble -I../../Core/Inc -I../../STM32_WPAN/App -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_WPAN/ble/core/osal.o: C:/Users/robert.miller/STM32CubeIDE/workspace_1.12.1/BLE_CableReplacement/Middlewares/ST/STM32_WPAN/ble/core/template/osal.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DDEBUG -DSTM32WB55xx -c -I../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../Middlewares/ST/STM32_WPAN -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../Middlewares/ST/STM32_WPAN/ble/core -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/STM32_WPAN/ble/menu -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/ble -I../../Core/Inc -I../../STM32_WPAN/App -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_WPAN-2f-ble-2f-core

clean-Middlewares-2f-STM32_WPAN-2f-ble-2f-core:
	-$(RM) ./Middlewares/STM32_WPAN/ble/core/ble_gap_aci.cyclo ./Middlewares/STM32_WPAN/ble/core/ble_gap_aci.d ./Middlewares/STM32_WPAN/ble/core/ble_gap_aci.o ./Middlewares/STM32_WPAN/ble/core/ble_gap_aci.su ./Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.cyclo ./Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.d ./Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.o ./Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.su ./Middlewares/STM32_WPAN/ble/core/ble_hal_aci.cyclo ./Middlewares/STM32_WPAN/ble/core/ble_hal_aci.d ./Middlewares/STM32_WPAN/ble/core/ble_hal_aci.o ./Middlewares/STM32_WPAN/ble/core/ble_hal_aci.su ./Middlewares/STM32_WPAN/ble/core/ble_hci_le.cyclo ./Middlewares/STM32_WPAN/ble/core/ble_hci_le.d ./Middlewares/STM32_WPAN/ble/core/ble_hci_le.o ./Middlewares/STM32_WPAN/ble/core/ble_hci_le.su ./Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.cyclo ./Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.d ./Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.o ./Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.su ./Middlewares/STM32_WPAN/ble/core/osal.cyclo ./Middlewares/STM32_WPAN/ble/core/osal.d ./Middlewares/STM32_WPAN/ble/core/osal.o ./Middlewares/STM32_WPAN/ble/core/osal.su

.PHONY: clean-Middlewares-2f-STM32_WPAN-2f-ble-2f-core

