/*
 * LED_RGB.h
 *
 *  Created on: Jan 11, 2024
 *      Author: DUNG
 */

#ifndef INC_LED_RGB_H_
#define INC_LED_RGB_H_

#include"main.h"

typedef struct
{
	uint8_t red;
	uint8_t green;
	uint8_t blue;
} LED_RGB_t;

void LED_RGB_Init(void);
void LED_RGB_DeInit(void);
void LED_RGB_SetColor(LED_RGB_t * pRGB);


#endif /* INC_LED_RGB_H_ */
