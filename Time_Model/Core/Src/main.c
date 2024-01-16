/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
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

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "sht2x.h"
#include <stdio.h>
#include <string.h>
#include "mpu6050.h"
#include "stdint.h"
#include "response_ci.h"
// Command hanlde
#include "uart.h"
#include "i2c-lcd.h"
#include "set_time.h"
#include "set_rgb.h"
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

TIM_HandleTypeDef htim2;

UART_HandleTypeDef huart1;

/* USER CODE BEGIN PV */
// 
unsigned char buffer1[100] = { 0 }; 
unsigned char* buffer2[100] = { 0 };
float tem = 0;
float hum = 0;

uint32_t elapsed_time1;
uint32_t elapsed_time2;
uint32_t elapsed_time3;
uint32_t elapsed_time4;
uint32_t elapsed_time5 = 0;
uint8_t flag = 0;
	
MPU6050_t MPU6050;
	
uint32_t P = 6000;
int arr_w[12] ={0};
int arr_r[12] = {0};
uint32_t D1 = 1000;
uint32_t D2 = 1000;
uint32_t D3 = 1000;
uint32_t D4 = 1000;
uint32_t T1 = 500;
uint32_t T2 = 500;
uint32_t T3 = 500;
uint32_t T4 = 500;
uint32_t Phase_1 = 1;
uint32_t Phase_2 = 2;
uint32_t Phase_3 = 3;
uint32_t Phase_4 = 4;
uint8_t flag_update_time = 0;

int arr_w_rgb[3] = {0};
int arr_r_rgb[3] = {0};
uint8_t duty_R = 50;
uint8_t duty_G = 50;
uint8_t duty_B = 50;
uint8_t flag_update_rgb = 0;
static uint8_t dataRX;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_I2C1_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_TIM2_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
// ham ngat uart
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	uint32_t start_time = HAL_GetTick();
	
	if (huart->Instance == huart1.Instance)
	{
		recv_data(dataRX);
		HAL_UART_Receive_IT(&huart1, &dataRX,1);
		uart_handle();
		uint32_t end_time = HAL_GetTick();
		elapsed_time5 = end_time - start_time;
	}
}

// Task1: doc nhiet do va do am tu cam bien SHT21
void Task1(){
		response_print("Task read temperature & relative humidity is running\n\n");
		uint32_t start_time = HAL_GetTick();

		/* Gets current temperature & relative humidity. */
		float cel = SHT2x_GetTemperature(1);
		tem = cel;
		float rh = SHT2x_GetRelativeHumidity(1);
		hum = rh;
		/* May show warning below. Ignore and proceed. */
		sprintf((char*)buffer1,
		"%d.%dºC, relative humidity = %d.%d%% RH\n",
		SHT2x_GetInteger(cel), SHT2x_GetDecimal(cel, 1),
		SHT2x_GetInteger(rh), SHT2x_GetDecimal(rh, 1));
		uint32_t end_time = HAL_GetTick();
		elapsed_time1 = end_time - start_time;
		HAL_Delay(T1);
}


// Task2: do gia toc tu cam bien MPU6050
void Task2(){
		response_print("Task read acceleration is running\n\n");
		uint32_t start_time = HAL_GetTick();
		MPU6050_Read_All(&hi2c1, &MPU6050);
		sprintf((char*)buffer2,"Acceleration = {Ax = %f, Ay = %f, Az = %f}\n\n", MPU6050.Ax,MPU6050.Ay,MPU6050.Az);
		uint32_t end_time = HAL_GetTick();
		elapsed_time2 = end_time - start_time;
		HAL_Delay(T2);
}

//Task3: Hien thi du lieu len LCD bang giao tiep I2C
void Task3(){
		uint32_t start_time = HAL_GetTick();
		unsigned char buffer3[100] = { 0 };
		unsigned char buffer5[100] = { 0 };
		unsigned char buffer4[100] = { 0 };
		sprintf((char*)buffer3, "Te=%.1f Hu=%.1f", tem, hum);
		sprintf((char*)buffer4, "%.2f %.2f %0.2f", MPU6050.Ax, MPU6050.Ay, MPU6050.Az);
		sprintf((char*)buffer5, "Z=%.1f",MPU6050.Az);
		lcd_goto_XY (1,0);
		lcd_send_string ((char*)buffer3);
		lcd_goto_XY (0,0);
		lcd_send_string ((char*)buffer4);
		uint32_t end_time = HAL_GetTick();
		elapsed_time3 = end_time - start_time;
		HAL_Delay(T3);
}

// Truyen du lieu len may tinh bang UART
void Task4(){
		uint32_t start_time = HAL_GetTick();
		response_print("Task Send UART is running\n");
		HAL_UART_Transmit(&huart1, buffer1, strlen((char*)buffer1), 1000);
		HAL_UART_Transmit(&huart1,(uint8_t*)buffer2, strlen((char*)buffer2), 1000);
		uint32_t end_time = HAL_GetTick();
		elapsed_time4 = end_time - start_time;
		HAL_Delay(T4);
}
	
void(*task_Point_Array[4])(void) = {Task1, Task2, Task3, Task4};



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
	SHT2x_Init(&hi2c1);
	SHT2x_SetResolution(RES_14_12);
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_I2C1_Init();
  MX_USART1_UART_Init();
  MX_TIM2_Init();
  /* USER CODE BEGIN 2 */
	MPU6050_Init(&hi2c1);
	HAL_UART_Receive_IT(&huart1, &dataRX,1);
	response_init(&huart1);
	// initialize the library by associating any needed LCD interface pin
	lcd_init ();
	response_init(&huart1);
	
	if (!MPU6050_Init(&hi2c1))
	{
		response_print("Successful connecting to MPU 6050 sensor\n");
	}
	else
	{
		response_print("Failed connecting to MPU 6050 sensor\n");
	}

	// doc du lieu thoi gian tu bo nho Flash
	for( uint16_t i = 0; i < 12; i++){
	 arr_r[i] = Flash_Read_Int(ADDRESS_DATA_STORAGE + 1024*i);
	}
	
 D1 = arr_r[0];
 D2 = arr_r[1];
 D3 = arr_r[2];
 D4 = arr_r[3];
 Phase_1 = arr_r[4];
 Phase_2 = arr_r[5];
 Phase_3 = arr_r[6];
 Phase_4 = arr_r[7];
 T1 = arr_r[8];
 T2 = arr_r[9];
 T3 = arr_r[10];
 T4 = arr_r[11];
 
	// tao xung pwm cho led RGB
	
	for( uint16_t i = 0; i < 3; i++){
	 arr_r_rgb[i] = Flash_Read_Int(ADDRESS_DATA_RGB_STORAGE + 1024*i);
	}
	HAL_TIM_PWM_Start(&htim2,TIM_CHANNEL_1);
  HAL_TIM_PWM_Start(&htim2,TIM_CHANNEL_2);
	HAL_TIM_PWM_Start(&htim2,TIM_CHANNEL_3);
	duty_R = arr_r_rgb[0];
  duty_G = arr_r_rgb[1];
  duty_B = arr_r_rgb[2];
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,duty_R);
  __HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,duty_G);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,duty_B);
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	 uwTick = 0;
	 
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
		if(uwTick%P == 100){
		for	(uint16_t i = 0; i < 4; i++)
			task_Point_Array[i]();
		}
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
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

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
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 71;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 99;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_PWM_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_3) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_4) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */
  HAL_TIM_MspPostInit(&htim2);

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

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
  HAL_GPIO_WritePin(GPIOB, GREEN_Pin|GPIO_PIN_15, GPIO_PIN_RESET);

  /*Configure GPIO pin : BLU_Pin */
  GPIO_InitStruct.Pin = BLU_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  HAL_GPIO_Init(BLU_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : GREEN_Pin PB15 */
  GPIO_InitStruct.Pin = GREEN_Pin|GPIO_PIN_15;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

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
