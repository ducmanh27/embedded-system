/*
 * LED_RGB.c
 *
 *  Created on: Jan 11, 2024
 *      Author: DUNG
 */

#include "LED_RGB.h"

extern TIM_HandleTypeDef htim1;

void LED_RGB_Init(void)
{
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_1, 0);
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_2, 0);
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_3, 0);

	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2);
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_3);
}
void LED_RGB_DeInit(void)
{
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_1, 0);
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_2, 0);
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_3, 0);

	HAL_TIM_PWM_Stop(&htim1, TIM_CHANNEL_1);
	HAL_TIM_PWM_Stop(&htim1, TIM_CHANNEL_2);
	HAL_TIM_PWM_Stop(&htim1, TIM_CHANNEL_3);
}
void LED_RGB_SetColor(LED_RGB_t * pRGB)
{
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_1, pRGB->red);
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_2, pRGB->green);
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_3, pRGB->blue);
}
