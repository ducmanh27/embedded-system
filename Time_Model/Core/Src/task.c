
#include "task.h"


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
		sprintf((char*)buffer2,"Acceleration = {Ax = %f, Ay = %f, Az = %f}\n\n", MPU6050.Ax,MPU6050.Ay,MPU6050.Az );
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