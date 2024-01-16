#include "uart.h"
//#include "response_ci.h"
//#include "cli_command.h"






uint8_t uart_buff[MAX_DATA_UART];
uint8_t uart_len = 0;

UART_HandleTypeDef * pMainHuart;

static inline void uart_reponse(CMD_HandleState state)
{
	switch (state)
	{
		case CMD_PARAM_ERROR:
			HAL_UART_Transmit(pMainHuart, "Params Error\n", 13u, HAL_MAX_DELAY);
			break;
		case CMD_UNREGCONIZED:
			HAL_UART_Transmit(pMainHuart, "Unregconized CMD\n", 17u, HAL_MAX_DELAY);
			break;
		case CMD_SETRGB_OK:
			HAL_UART_Transmit(pMainHuart, "Set RGB OK\n", 11u, HAL_MAX_DELAY);
			break;
		case CMD_SET_TIME_OK:
			HAL_UART_Transmit(pMainHuart, "Set Time OK\n", 12u, HAL_MAX_DELAY);
			break;
	}
}

void uart_init(UART_HandleTypeDef *huart)
{
	pMainHuart = huart;
}


UART_ReceiveState recv_data(uint8_t data_rx)
{
	if (data_rx == '\n')
	{
		uart_buff[uart_len++] = '\0';
		return UART_RECEIVE_DONE;
	}
	else{
		uart_buff[uart_len++] = data_rx;
		return UART_RECEIVE_NOT_DONE;
	}
}
void uart_handle()
{
	uart_reponse(cmdHandler(&uart_buff, uart_len));
	uart_len = 0;
}



