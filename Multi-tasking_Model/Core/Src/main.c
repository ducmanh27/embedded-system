/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
	*Embedded Design System Project
	*Developer: Phan Duc Manh 20202452
	*
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/*
			Peripheral
*/
#include "sht2x.h"
#include "i2c-lcd.h"
#include "mpu6050.h"
#include "flash.h"
#include "setScheduler.h"

/*
			Command handle
*/
#include "uart.h"


/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
I2C_HandleTypeDef hi2c1;

TIM_HandleTypeDef htim3;

UART_HandleTypeDef huart2;

/* Definitions for Read_Sensor_MPU */
osThreadId_t Read_Sensor_MPUHandle;
const osThreadAttr_t Read_Sensor_MPU_attributes = {
  .name = "Read_Sensor_MPU",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for Read_Sensor_SHT */
osThreadId_t Read_Sensor_SHTHandle;
const osThreadAttr_t Read_Sensor_SHT_attributes = {
  .name = "Read_Sensor_SHT",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for Show_LCD1602 */
osThreadId_t Show_LCD1602Handle;
const osThreadAttr_t Show_LCD1602_attributes = {
  .name = "Show_LCD1602",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for Send_UART */
osThreadId_t Send_UARTHandle;
const osThreadAttr_t Send_UART_attributes = {
  .name = "Send_UART",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for UARTMutex */
osMutexId_t UARTMutexHandle;
const osMutexAttr_t UARTMutex_attributes = {
  .name = "UARTMutex"
};
/* Definitions for BinarySem_LCD_1 */
osSemaphoreId_t BinarySem_LCD_1Handle;
const osSemaphoreAttr_t BinarySem_LCD_1_attributes = {
  .name = "BinarySem_LCD_1"
};
/* Definitions for BinarySem_LCD_2 */
osSemaphoreId_t BinarySem_LCD_2Handle;
const osSemaphoreAttr_t BinarySem_LCD_2_attributes = {
  .name = "BinarySem_LCD_2"
};
/* Definitions for BinarySem_UART_1 */
osSemaphoreId_t BinarySem_UART_1Handle;
const osSemaphoreAttr_t BinarySem_UART_1_attributes = {
  .name = "BinarySem_UART_1"
};
/* Definitions for BinarySem_UART_2 */
osSemaphoreId_t BinarySem_UART_2Handle;
const osSemaphoreAttr_t BinarySem_UART_2_attributes = {
  .name = "BinarySem_UART_2"
};
/* Definitions for BinarySem_UART_3 */
osSemaphoreId_t BinarySem_UART_3Handle;
const osSemaphoreAttr_t BinarySem_UART_3_attributes = {
  .name = "BinarySem_UART_3"
};
/* USER CODE BEGIN PV */
MPU6050_t MPU6050;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_I2C1_Init(void);
static void MX_TIM3_Init(void);
void Read_Sensor_MPUTask_func(void *argument);
void Read_Sensor_SHT21Task_func(void *argument);
void Show_LCD1602_Task_func(void *argument);
void Send_UART_Task_func(void *argument);

/* USER CODE BEGIN PFP */
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

unsigned char temperature[30] = { 0 };
unsigned char position[16] = "Ax:0 Ay:0 Az:0";
unsigned char logs[30] = { 0 };
//unsigned char logs_para[100] = { 0 };
unsigned char data_tx[100] = { 0 };
uint8_t red = 0, green = 0, blue = 0;
static uint8_t dataRX;

/*  */

int flag_update;


#define ADDRESS_DATA_STORAGE_FLAG (0X800FFFE)

uint8_t D1 = 10, D2 = 100, D3 = 30 ,D4 = 20;
uint8_t Ph1 = 0, Ph2 = 0, Ph3 = 0, Ph4 = 0;
uint16_t T1 = 1000, T2 = 1000, T3 = 1000 ,T4 = 1000;



void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	if (huart->Instance == huart2.Instance)
	{
		
		recv_data(dataRX);
		HAL_UART_Receive_IT(&huart2, &dataRX,1);
	}
}
//void SendDataOverUART( char *data) {
//  if (osMutexAcquire(UARTMutexHandle, osWaitForever) == osOK) {
//    HAL_UART_Transmit(&huart2, (uint8_t*)data, strlen(data), HAL_MAX_DELAY);
//    osMutexRelease(UARTMutexHandle);
//  }
//}
void SendDataOverUART(char *data) {
  // Acquire the UART mutex before transmitting data
  if (osMutexAcquire(UARTMutexHandle, osWaitForever) == osOK) {
    // Calculate the length of the data
    uint16_t length = strlen(data);

    // Iterate through each character in the data
    for (uint16_t i = 0; i < length; i++) {
      // Wait until the transmit data register is empty
      while (!(USART2->SR & USART_SR_TXE));

      // Load the data into the transmit data register
      USART2->DR = (uint8_t)data[i];
    }

    // Wait until all data is transmitted
    while (!(USART2->SR & USART_SR_TC));

    // Release the UART mutex after data transmission is complete
    osMutexRelease(UARTMutexHandle);
  }
}


/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART2_UART_Init();
  MX_I2C1_Init();
  MX_TIM3_Init();
  /* USER CODE BEGIN 2 */
	
	flag_update =  Flash_Read_Int( ADDRESS_DATA_STORAGE_FLAG);
	
	if (flag_update != 0x0000FFFF)
	{
		D1 =  Flash_Read_Int( ADDRESS_DATA_STORAGE_D1);
		D2 =  Flash_Read_Int( ADDRESS_DATA_STORAGE_D2);
		D3 =  Flash_Read_Int( ADDRESS_DATA_STORAGE_D3);
		D4 =  Flash_Read_Int( ADDRESS_DATA_STORAGE_D4);

		Ph1 = Flash_Read_Int( ADDRESS_DATA_STORAGE_Ph1);
		Ph2 = Flash_Read_Int( ADDRESS_DATA_STORAGE_Ph2);
		Ph3 = Flash_Read_Int( ADDRESS_DATA_STORAGE_Ph3);
		Ph4 = Flash_Read_Int( ADDRESS_DATA_STORAGE_Ph4);
		
		
		T1 = Flash_Read_Int( ADDRESS_DATA_STORAGE_T1);
		T2 = Flash_Read_Int( ADDRESS_DATA_STORAGE_T2);
		T3 = Flash_Read_Int( ADDRESS_DATA_STORAGE_T3);
		T4 = Flash_Read_Int( ADDRESS_DATA_STORAGE_T4);
	}

	
	HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_2);
	HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_3);
	
	
	HAL_UART_Receive_IT(&huart2, &dataRX,1);
	
	/*  MPU 6050 Init  */
	while (MPU6050_Init(&hi2c1) == 1)
	{
		SendDataOverUART("Init MPU 6050 failed\n");
	}
	/*  SHT21 Init  */
	SHT2x_Init(&hi2c1);
	
	SHT2x_SetResolution(RES_14_12);
	
	/*  LCD 1602 Init  */
	lcd_init();
  /* USER CODE END 2 */

  /* Init scheduler */
  osKernelInitialize();
  /* Create the mutex(es) */
  /* creation of UARTMutex */
  UARTMutexHandle = osMutexNew(&UARTMutex_attributes);

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* Create the semaphores(s) */
  /* creation of BinarySem_LCD_1 */
  BinarySem_LCD_1Handle = osSemaphoreNew(1, 0, &BinarySem_LCD_1_attributes);

  /* creation of BinarySem_LCD_2 */
  BinarySem_LCD_2Handle = osSemaphoreNew(1, 0, &BinarySem_LCD_2_attributes);

  /* creation of BinarySem_UART_1 */
  BinarySem_UART_1Handle = osSemaphoreNew(1, 0, &BinarySem_UART_1_attributes);

  /* creation of BinarySem_UART_2 */
  BinarySem_UART_2Handle = osSemaphoreNew(1, 0, &BinarySem_UART_2_attributes);

  /* creation of BinarySem_UART_3 */
  BinarySem_UART_3Handle = osSemaphoreNew(1, 0, &BinarySem_UART_3_attributes);

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of Read_Sensor_MPU */
  Read_Sensor_MPUHandle = osThreadNew(Read_Sensor_MPUTask_func, NULL, &Read_Sensor_MPU_attributes);

  /* creation of Read_Sensor_SHT */
  Read_Sensor_SHTHandle = osThreadNew(Read_Sensor_SHT21Task_func, NULL, &Read_Sensor_SHT_attributes);

  /* creation of Show_LCD1602 */
  Show_LCD1602Handle = osThreadNew(Show_LCD1602_Task_func, NULL, &Show_LCD1602_attributes);

  /* creation of Send_UART */
  Send_UARTHandle = osThreadNew(Send_UART_Task_func, NULL, &Send_UART_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
	
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
//	osSemaphoreAcquire(BinarySem_LCD_1Handle, portMAX_DELAY);
//	osSemaphoreAcquire(BinarySem_LCD_2Handle, portMAX_DELAY);
//	osSemaphoreAcquire(BinarySem_UART_1Handle, portMAX_DELAY);
//	osSemaphoreAcquire(BinarySem_UART_2Handle, portMAX_DELAY);
//	osSemaphoreAcquire(BinarySem_UART_3Handle, portMAX_DELAY);
  /* USER CODE END RTOS_EVENTS */

  /* Start scheduler */
  osKernelStart();

  /* We should never get here as control is now taken by the scheduler */
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV4;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}


/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.ClockSpeed = 100000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}
/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */
//static void MX_TIM3_Init(void)
//{

//  /* USER CODE BEGIN TIM3_Init 0 */

//  /* USER CODE END TIM3_Init 0 */

//  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
//  TIM_MasterConfigTypeDef sMasterConfig = {0};
//  TIM_OC_InitTypeDef sConfigOC = {0};

//  /* USER CODE BEGIN TIM3_Init 1 */

//  /* USER CODE END TIM3_Init 1 */
//  htim3.Instance = TIM3;
//  htim3.Init.Prescaler = 7999;
//  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
//  htim3.Init.Period = 99;
//  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
//  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
//  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
//  {
//    Error_Handler();
//  }
//  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
//  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
//  {
//    Error_Handler();
//  }
//  if (HAL_TIM_PWM_Init(&htim3) != HAL_OK)
//  {
//    Error_Handler();
//  }
//  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
//  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
//  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
//  {
//    Error_Handler();
//  }
//  sConfigOC.OCMode = TIM_OCMODE_PWM1;
//  sConfigOC.Pulse = 0;
//  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
//  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
//  if (HAL_TIM_PWM_ConfigChannel(&htim3, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
//  {
//    Error_Handler();
//  }
//  if (HAL_TIM_PWM_ConfigChannel(&htim3, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
//  {
//    Error_Handler();
//  }
//  if (HAL_TIM_PWM_ConfigChannel(&htim3, &sConfigOC, TIM_CHANNEL_3) != HAL_OK)
//  {
//    Error_Handler();
//  }
//  /* USER CODE BEGIN TIM3_Init 2 */

//  /* USER CODE END TIM3_Init 2 */
//  HAL_TIM_MspPostInit(&htim3);

//}

void MX_TIM3_Init(void)
{
  // Enable TIM3 clock
  RCC->APB1ENR |= RCC_APB1ENR_TIM3EN;
  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM3_Init 1 */

  /* USER CODE END TIM3_Init 1 */
  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 7999;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 99;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }
	
  // Clear update flag
  

  // Set the prescaler and the ARR
  TIM3->PSC = 0x00001F3F; // Set PSC register
  TIM3->ARR = 0x00000063; // Set ARR register

  // Configure CCMR1 and CCMR2 registers
  TIM3->CCMR1 = 0x00006868;
  TIM3->CCMR2 = 0x00006868;

  // Clear other configuration registers
  TIM3->CR1 = 0;
  TIM3->CR2 = 0;
  TIM3->SMCR = 0;
  TIM3->DIER = 0;
  TIM3->EGR = 0;
  TIM3->CCER = 0;
  TIM3->CNT = 0;
  TIM3->CCR1 = 0;
  TIM3->CCR2 = 0;
  TIM3->CCR3 = 0;
  TIM3->CCR4 = 0;
  TIM3->DCR = 0;
  TIM3->DMAR = 0;
	HAL_TIM_MspPostInit(&htim3);
}
/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}



/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
/* USER CODE BEGIN MX_GPIO_Init_1 */
/* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_RESET);

  /*Configure GPIO pins : PB4 PB5 */
  GPIO_InitStruct.Pin = GPIO_PIN_4|GPIO_PIN_5;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */
/* USER CODE END 4 */

/* USER CODE BEGIN Header_Read_Sensor_MPUTask_func */
/**
  * @brief  Function implementing the Read_Sensor_MPU thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_Read_Sensor_MPUTask_func */
void Read_Sensor_MPUTask_func(void *argument)
{
  /* USER CODE BEGIN 5 */
  /* Infinite loop */
//	sprintf(logs_para, "D1: %d D2: %d D3: %d D4: %d Ph1: %d Ph2: %d Ph3: %d Ph4: %d, T1: %d, T2: %d, T3: %d, T4: %d",D1,D2,D3,D4,Ph1,Ph2,Ph3,Ph4,T1,T2,T3,T4);
//	SendDataOverUART(logs_para);
	/* Intial Phase of Task */
	osDelay(Ph1);
  for(;;)
  {
		/*	Get current tick of kernel	 */
		uint32_t previous_wake_time = osKernelGetTickCount();
		/* Read sensor MPU 6050 */

		MPU6050_Read_Accel(&hi2c1, &MPU6050);
//		/*	Update this  value of Ax, Ay, Az	*/
		sprintf((char *)position,
		"%0.1f %0.1f %0.1f", MPU6050.Ax,MPU6050.Ay,MPU6050.Az);
		
		
		
		
		/* Set up the period time */
		
		if (osMutexAcquire(UARTMutexHandle, osWaitForever) == osOK) 
		{
			sprintf((char *)logs, "@%d Task 1 is running\n", previous_wake_time);
			osMutexRelease(UARTMutexHandle);
		}
		/*	Print to serial monitor time which task 1 starts	*/
		SendDataOverUART((char *)logs);
		
		/*	Give 1 semaphore for synchronize LCD	*/
		osSemaphoreRelease(BinarySem_LCD_1Handle);
		
		/*	Give 1 semaphore for synchronize UART	*/
    osSemaphoreRelease(BinarySem_UART_1Handle);
		
		/*	Set precision time which task blocked	*/
		previous_wake_time += T1;
		osDelayUntil(previous_wake_time);
//    osDelay(T1);
  }
  /* USER CODE END 5 */
}

/* USER CODE BEGIN Header_Read_Sensor_SHT21Task_func */
/**
* @brief Function implementing the Read_Sensor_SHT thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_Read_Sensor_SHT21Task_func */
void Read_Sensor_SHT21Task_func(void *argument)
{
  /* USER CODE BEGIN Read_Sensor_SHT21Task_func */
  /* Infinite loop */
	
	/* Intial Phase of Task */
	osDelay(Ph2);
  for(;;)
  {
		uart_handle();
		/*	Get current tick of kernel	 */
		uint32_t previous_wake_time = osKernelGetTickCount();
		/* Set up the period time */
		/*	Print to serial monitor time which task 2 starts	*/
		if (osMutexAcquire(UARTMutexHandle, osWaitForever) == osOK) 
		{
			sprintf((char *)logs, "@%d Task 2 is running\n", previous_wake_time);
			osMutexRelease(UARTMutexHandle);
		}
		
		SendDataOverUART((char *)logs);
		
		/*	Read value temp and humidity in sensor	*/
		float cel = SHT2x_GetTemperature(1);
		float rh = SHT2x_GetRelativeHumidity(1);
		/*	The func which aim to receive command line in UART and execute this command	*/
		/*	Update this  value of temperature and humidity	*/
		sprintf((char *)temperature, "T:%d.%dC H:%d.%d%% RH", SHT2x_GetInteger(cel), SHT2x_GetDecimal(cel, 1), SHT2x_GetInteger(rh), SHT2x_GetDecimal(rh, 1));
		
		/*	Give 1 semaphore for synchronize LCD	*/
		osSemaphoreRelease(BinarySem_LCD_2Handle);
		
		/*	Give 1 semaphore for synchronize UART	*/
    osSemaphoreRelease(BinarySem_UART_2Handle);
		


		/*	Set precision time which task blocked	*/
		previous_wake_time += T2;
		osDelayUntil(previous_wake_time);
//    osDelay(T2);
  }
  /* USER CODE END Read_Sensor_SHT21Task_func */
}

/* USER CODE BEGIN Header_Show_LCD1602_Task_func */
/**
* @brief Function implementing the Show_LCD1602 thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_Show_LCD1602_Task_func */
void Show_LCD1602_Task_func(void *argument)
{
  /* USER CODE BEGIN Show_LCD1602_Task_func */
  /* Infinite loop */
	//lcd_init();
	/* Intial Phase of Task */ 
	osDelay(Ph3);
  for(;;)
  {
		/*	Waiting for two bianry semaphore for synchronize LCD from task 1 and task 2	*/
		if (osSemaphoreAcquire(BinarySem_LCD_1Handle, Ph1 + D1) == osOK		
		&& osSemaphoreAcquire(BinarySem_LCD_2Handle, Ph2 + D2) == osOK)
		{
			/*	Get current tick of kernel	 */
			uint32_t previous_wake_time = osKernelGetTickCount();

			sprintf((char *)logs, "@%d Task 3 is running\n", previous_wake_time);
			/*	Print to serial monitor time which task 3 starts	*/
			SendDataOverUART((char *)logs);
			
			/* LCD print temperature and humidity in first line your string */
			lcd_goto_XY(1,0);
			lcd_send_string((char *)temperature);
			/* LCD print Ax Ay Az of sensor MPU 6050 in second line your string */
			lcd_goto_XY(2,0);
			lcd_send_string((char *)position);
			
			/*	Give 1 semaphore for synchronize UART	*/
			osSemaphoreRelease(BinarySem_UART_3Handle);
			
			
			
			/*	Set precision time which task blocked	*/
			previous_wake_time += T3;
			osDelayUntil(previous_wake_time);		
		}
		
		

//		osDelay(T3);
  }
  /* USER CODE END Show_LCD1602_Task_func */
}

/* USER CODE BEGIN Header_Send_UART_Task_func */
/**
* @brief Function implementing the Send_UART thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_Send_UART_Task_func */
void Send_UART_Task_func(void *argument)
{
  /* USER CODE BEGIN Send_UART_Task_func */
  /* Infinite loop */
	
	/* Intial Phase of Task */
	osDelay(Ph4); 
  for(;;)
  {
		/*	Waiting for three bianry semaphore for synchronize UART from task 1, task 2 and task 3	*/
		if (osSemaphoreAcquire(BinarySem_UART_1Handle, osWaitForever) == osOK
    && osSemaphoreAcquire(BinarySem_UART_2Handle, osWaitForever) == osOK
    && osSemaphoreAcquire(BinarySem_UART_3Handle, osWaitForever) == osOK)
		{
			/*	Get current tick of kernel	 */
			uint32_t previous_wake_time = osKernelGetTickCount();
			
			sprintf((char *)logs, "@%d Task 4 is running\n", previous_wake_time);
			/*	Print to serial monitor time which task 3 starts	*/
			SendDataOverUART((char *)logs);
			
			/*		*/
			sprintf((char *)data_tx,
				"UART send to computer:\n%s \n%.1f %1.f %.1f \nred: %d green: %d blue: %d\n", temperature,  MPU6050.Ax, MPU6050.Ay, MPU6050.Az, red, green, blue);	
			SendDataOverUART((char *)data_tx);
			

			/*	Set precision time which task blocked	*/
			previous_wake_time += T4;
			osDelayUntil(previous_wake_time);	
		}

		

//    osDelay(T4);
  }
  /* USER CODE END Send_UART_Task_func */
}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM4 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM4) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
