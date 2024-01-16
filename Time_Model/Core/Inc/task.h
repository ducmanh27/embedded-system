#ifndef TASK_H
#define TASK_H

#include "string.h"
#include "stdint.h"
#include "sht2x.h"
#include <stdio.h>
#include <string.h>
#include "mpu6050.h"
#include "stdint.h"
#include "response_ci.h"
// Command hanlde
#include "uart.h"
#include "main.h"
#include "i2c-lcd.h"
#include "stm32f1xx_hal_uart.h"
#include "stm32f1xx_hal_i2c.h"


extern unsigned char buffer1[100]; 
extern unsigned char* buffer2[100];
extern float tem;
extern float hum ;

extern uint32_t elapsed_time1;
extern uint32_t elapsed_time2;
extern uint32_t elapsed_time3;
extern uint32_t elapsed_time4;
	
extern MPU6050_t MPU6050;
	
extern uint32_t P ;
extern uint32_t D1 ;
extern uint32_t D2 ;
extern uint32_t D3 ;
extern uint32_t D4 ;
extern uint32_t T1 ;
extern uint32_t T2 ;
extern uint32_t T3 ;
extern uint32_t T4 ;
extern uint32_t Phase_1 ;
extern uint32_t Phase_2 ;
extern uint32_t Phase_3 ;
extern uint32_t Phase_4 ;
extern uint8_t flag_update_time;

I2C_HandleTypeDef hi2c1;

TIM_HandleTypeDef htim1;

UART_HandleTypeDef huart1;
void Task1();
void Task2();
void Task3();
void Task4();
void(*task_Point)(void);
void(*task_Point_Array[4])(void);
#endif
