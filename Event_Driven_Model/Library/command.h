/*
 * command.h
 *
 *  Created on: Jan 12, 2024
 *      Author: DUNG
 */

#ifndef COMMAND_H_
#define COMMAND_H_

#include "main.h"

#define CMD_SET_RGB   "setRGB"
#define CMD_SET_TIME  "setTime"

#define CMD_SET_RGB_PARAM_NUM    (4u)
#define CMD_SET_TIME_PARAM_NUM   (13u)

#define CMD_TASK_TIME_SECTOR     		(3u)
#define CMD_TASK_TIME_ADDR       		(0x0800C000u)
#define CMD_TASK_TIME_PHASE_OFFSET     	(16u)
#define CMD_TASK_TIME_PERIOD_OFFSET     (32u)


typedef enum
{
	CMD_UNREGCONIZED  = 0u,
	CMD_PARAM_ERROR,
	CMD_SETRGB_OK,
	CMD_SET_TIME_OK,
} CMD_HandleState;

CMD_HandleState cmdHandler(uint8_t* uart_buff, uint8_t len);


#endif /* COMMAND_H_ */
