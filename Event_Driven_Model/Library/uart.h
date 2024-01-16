#ifndef UART_H
#define UART_H

#include "string.h"
#include "stdint.h"
#include "command.h"


#define MAX_DATA_UART 100



typedef enum{
	UART_RECEIVE_NOT_DONE = 0u,
	UART_RECEIVE_DONE =     1u
} UART_ReceiveState;




UART_ReceiveState recv_data(uint8_t data_rx);
void uart_handle(void);
void uart_init(UART_HandleTypeDef *huart);


#endif
