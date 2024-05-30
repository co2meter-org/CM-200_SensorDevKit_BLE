/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    crs_app.c
  * @author  MCD Application Team
  * @brief   Cable Replacement Service Application
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2019-2021 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "app_common.h"
#include "dbg_trace.h"
#include "ble.h"
#include "crs_app.h"
#include "stm32_seq.h"
#include "DispTools.h"
#include "stm_queue.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private defines -----------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define RX_BUFFER_SIZE                                                        64
#define CR                                                                  0x0d
#define LF                                                                  0x0a
#define POSXRX                                                                10
#define POSYRX                                                                10
#define XSIZE                                                                 10
#define POSXTX                                                                10
#define POSYTX                                                                30
#define YSIZE                                                                 10
#define MAX_STRING_SIZE                                                       20
/* USER CODE END PD */

/* Private macros ------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */
/**
 * START of Section BLE_APP_CONTEXT
 */

/**
 * END of Section BLE_APP_CONTEXT
 */
static uint8_t InputCharFromUart; 
static queue_t RxQueue;
static uint8_t a_RxQueueBuffer[RX_BUFFER_SIZE];  
static uint8_t PosXTx, PosYTx, PosXRx, PosYRx;
static char a_SzString[MAX_STRING_SIZE+1];
static uint8_t idx;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
static void CRSAPP_Terminal_UART_RxCpltCallback( void );
static void CRSAPP_Terminal_Init(void);
static void CRSAPP_Transmit(void);
/* USER CODE END PFP */

/* Functions Definition ------------------------------------------------------*/
void CRSAPP_Init(void)
{
  UTIL_SEQ_RegTask( 1<< CFG_TASK_CRS_TX_REQ_ID, UTIL_SEQ_RFU, CRSAPP_Transmit );

/* USER CODE BEGIN CRSAPP_Init */
  PosXRx = POSXRX;
  PosYRx = POSYRX + 2;
  PosXTx = POSXTX;
  PosYTx = POSYTX + 2;
  idx = 0;
  
  CRSAPP_Terminal_Init();

  ClearScreen();

/* USER CODE END HRSAPP_Init */
  return;
}

void CRS_STM_Notification(CRS_STM_Notification_evt_t *p_Notification)
{
/* USER CODE BEGIN CRS_STM_Notification */

/* USER CODE END CRS_STM_Notification */
  switch(p_Notification->CRS_Evt_Opcode)
  {
/* USER CODE BEGIN CRS_STM_Notification_CRS_Evt_Opcode */

/* USER CODE END CRS_STM_Notification_CRS_Evt_Opcode */
    case CRS_WRITE_EVT:
      {
/* USER CODE BEGIN CRS_WRITE_EVT */
        APP_DBG_MSG("CRS_WRITE_EVT: Data received: %s \n", p_Notification->DataTransfered.pPayload);
        p_Notification->DataTransfered.pPayload[p_Notification->DataTransfered.Length] = '\0';
        //PrintPcCrt(PosXRx, PosYRx, "%s", p_Notification->DataTransfered.pPayload);
        UartTransmitStrSz(p_Notification->DataTransfered.pPayload, p_Notification->DataTransfered.Length);

        PosXRx += p_Notification->DataTransfered.Length;
        if((PosXRx >= XSIZE) || (p_Notification->DataTransfered.Length < MAX_STRING_SIZE))
        {
          PosXRx = POSXRX;
          PosYRx++;
          if(PosYRx > POSYRX + YSIZE + 2)
          PosYRx = POSYRX + 2;
          //ClearLines(PosYRx, 1);
        }
        //PrintPcCrt(PosXTx, PosYTx, "");
/* USER CODE END CRS_WRITE_EVT */
      }
      break;
      
    case CRS_NOTIFY_ENABLED_EVT:
      {
/* USER CODE BEGIN CRS_NOTIFY_ENABLED_EVT */
        APP_DBG_MSG("CRS_NOTIFY_ENABLED_EVT\n");
        ClearScreen();
        PrintPcCrt(POSXRX, POSXRX, "Receive:");
        PrintPcCrt(POSXTX, POSYTX, "Transmit:");
        PrintPcCrt(PosXTx, PosYTx, "");
/* USER CODE END CRS_NOTIFY_ENABLED_EVT */
      }
      break;

    case CRS_NOTIFY_DISABLED_EVT:
      {
/* USER CODE BEGIN CRS_NOTIFY_DISABLED_EVT */
        APP_DBG_MSG("CRS_NOTIFY_DISABLED_EVT\n");
        ClearScreen();
/* USER CODE END CRS_NOTIFY_DISABLED_EVT */
      }
      break;

   default:
      break;
  }
/* USER CODE BEGIN CRS_Notification_2 */

/* USER CODE END CRS_Notification_2 */
  return;
}

static void CRSAPP_Transmit()
{
  //CRS_STM_Update_Char(CRS_RX_CHAR_UUID, (uint8_t *)&a_SzString[0]);
	CRS_STM_Update_Char_Len(CRS_RX_CHAR_UUID, (uint8_t *)&a_SzString[0], idx);
	memset(a_SzString, 0, sizeof(a_SzString));
	idx = 0;
}

// Compute the MODBUS RTU CRC
uint16_t ModRTU_CRC(const unsigned char * buf, int len)
{
	uint16_t crc = 0xFFFF;

  for (int pos = 0; pos < len; pos++) {
	uint16_t nbyte = (uint16_t)buf[pos];          // XOR byte into least sig. byte of crc
    crc ^= nbyte;

    for (int i = 8; i != 0; i--) {    // Loop over each bit
      if ((crc & 0x0001) != 0) {      // If the LSB is set
        crc >>= 1;                    // Shift right and XOR 0xA001
        crc ^= 0xA001;
      }
      else                            // Else LSB is not set
        crc >>= 1;                    // Just shift right
    }
  }
  // Note, this number has low and high bytes swapped, so use it accordingly (or swap bytes)
  return crc;
}

static uint8_t check_crc()
{
	if (idx < 7)
		return 0;

	unsigned char a_SzString_CPY[idx - 2];
	memcpy(a_SzString_CPY, a_SzString, idx - 2);
	uint16_t modbus_crc = ModRTU_CRC(a_SzString_CPY, idx - 2);
	uint8_t modbus_crc_lo = (uint8_t)((modbus_crc & 0xff00) >> 8);
	uint8_t modbus_crc_hi = (uint8_t)(modbus_crc & 0xff);

	if (a_SzString[idx - 2] == modbus_crc_hi && a_SzString[idx - 1] == modbus_crc_lo)
		return 1;

	return 0;
}


/**
  * @brief  This function handles USARTx interrupt request.
  * @param  None
  * @retval None
  */
static void CRSAPP_Terminal_UART_RxCpltCallback( void )
{
	a_SzString[idx++] = InputCharFromUart;
	if(InputCharFromUart == LF && a_SzString[0] != 0xFE)
	{
		UTIL_SEQ_SetTask(1 << CFG_TASK_CRS_TX_REQ_ID, CFG_SCH_PRIO_0);
	}
	else if (check_crc() == 1)
	{
		UTIL_SEQ_SetTask(1 << CFG_TASK_CRS_TX_REQ_ID, CFG_SCH_PRIO_0);
	}
	else
	{
		if(idx > MAX_STRING_SIZE - 1)
		{
			UTIL_SEQ_SetTask(1 << CFG_TASK_CRS_TX_REQ_ID, CFG_SCH_PRIO_0);
		}
	}

	HW_UART_Receive_IT(CFG_CONSOLE_MENU, &InputCharFromUart, 1, CRSAPP_Terminal_UART_RxCpltCallback);
	return;
}

/**
  * @brief  This function initialize terminal
  * @param  None
  * @retval None
  */
static void CRSAPP_Terminal_Init(void)
{
  HW_UART_Init(CFG_CONSOLE_MENU);

  CircularQueue_Init(&RxQueue, a_RxQueueBuffer, RX_BUFFER_SIZE, 1, CIRCULAR_QUEUE_NO_WRAP_FLAG); 
  
  HW_UART_Receive_IT(CFG_CONSOLE_MENU, &InputCharFromUart, 1, CRSAPP_Terminal_UART_RxCpltCallback);

  return;
}


/* USER CODE BEGIN FD */

/* USER CODE END FD */
