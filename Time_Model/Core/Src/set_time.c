#include "set_time.h"
extern uint32_t D1;
extern uint32_t D2 ;
extern uint32_t D3;
extern uint32_t D4;
extern uint32_t T1;
extern uint32_t T2;
extern uint32_t T3;
extern uint32_t T4;
extern uint32_t Phase_1;
extern uint32_t Phase_2;
extern uint32_t Phase_3;
extern uint32_t Phase_4;
extern uint8_t flag_update_time;

extern int arr_w[12];
void setTime(char **argv, uint8_t arg_num)
{
	if (arg_num < 13)
	{
		response_print("[Error]: Not enough argument = %d\n", arg_num);
		return ;
	}
	if (arg_num > 13)
	{
		response_print("[Error]: too much argument = %d\n", arg_num);
		return ;
	}
	flag_update_time = 1;

	for(int i = 0; i < 12; i++){
	arr_w[i] = atoi(argv[i+1]);
	Flash_Erase(ADDRESS_DATA_STORAGE + 1024*i);
	 Flash_Write_Int( ADDRESS_DATA_STORAGE + 1024*i,arr_w[i]);
	}
	
	response_print("Time was changed succesfully\n");
	
	NVIC_SystemReset();
}