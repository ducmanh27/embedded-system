/*
 * command.c
 *
 *  Created on: Jan 12, 2024
 *      Author: DUNG
 */
#include"command.h"

CMD_HandleState cmdHandler(uint8_t* uart_buff, uint8_t len)
{
	uint8_t *argv[15];
	uint8_t arg_num = 0;
	uint8_t *token;
	token = strtok(uart_buff, " ");
	while (token != NULL)
	{
		argv[arg_num++] = token;
		token = strtok(NULL, " ");
	}
	if(strcmp(argv[0], CMD_SET_RGB) == 0)
	{
		if(arg_num != CMD_SET_RGB_PARAM_NUM)
		{
			return CMD_PARAM_ERROR;
		}
		else
		{
			LED_RGB_t tempRGB = {.red   = atoi(argv[1]),
			                     .green = atoi(argv[2]),
			                     .blue  = atoi(argv[3])
			                    };
			LED_RGB_SetColor(&tempRGB);
			return CMD_SETRGB_OK;
		}
	}
	else if(strcmp(argv[0], CMD_SET_TIME) == 0)
	{
		if(arg_num != CMD_SET_TIME_PARAM_NUM)
		{
			return CMD_PARAM_ERROR;
		}
		else
		{
			__disable_irq();
			Flash_EraseSector(CMD_TASK_TIME_SECTOR);
			for(uint32_t i = 0u; i < 12u; i++)
			{
				Flash_Write_Int((CMD_TASK_TIME_ADDR + i*4u), atoi(argv[i+1]));
			}
			__NVIC_SystemReset();

			return CMD_SET_TIME_OK;
		}
	}
	return CMD_UNREGCONIZED;
}

