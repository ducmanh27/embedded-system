#include "uart.h"
#include "response_ci.h"
//#include "cli_command.h"


#define MAX_DATA_UART 100



char uart_buff[MAX_DATA_UART];
static uint8_t uart_len = 0;
uint8_t uart_flag = 0;
void recv_data(uint8_t data_rx)
{
	if (data_rx == '\n')
	{
		uart_buff[uart_len++] = '\0';
		uart_flag = 1;
	}
	else{
		uart_buff[uart_len++] = data_rx;
	}
}
void uart_handle()
{
	if (uart_flag)
	{
		// HANDLE STRING
		//setRGB 10 20 30
		response_print("Data receiver: %s\n",uart_buff);
		// commandHandle(uart_buff, uart_len);
		// setRGB, R = 10, G = 20, B =30
		// setTime paraD_1 paraD_2 parD_3 parD_4, para_Phase_1 para_Phase_2 para_Phase_3 para_Phase_4, paraT_1 paraT_2 parT_3 parT_4
		uart_flag = 0;
		uart_len = 0;
	}
}
void uart_init()	
{
	
}
