#include "setRGB.h"
#include "response_ci.h"
#include "stdlib.h"
// setTempWarning {room_id} {node_id} {temp_set}
extern uint8_t D1, D2, D3 ,D4;
extern uint8_t Ph1, Ph2, Ph3, Ph4;
extern uint16_t T1 , T2 , T3  ,T4 ;

void setRealTime(char **argv, uint8_t arg_num)
{
	if (arg_num < 13)
	{
		response_print("[Error]: Not enough argument = %d", arg_num);
		return ;
	}
	if (arg_num > 13)
	{
		response_print("[Error]: too much argument = %d", arg_num);
		return ;
	}
	D1 = atoi(argv[1]);
	D2 = atoi(argv[2]);
	D3 = atoi(argv[3]);
	D4 = atoi(argv[4]);
	Ph1 = atoi(argv[5]);
	Ph2 = atoi(argv[6]);
	Ph3 = atoi(argv[7]);
	Ph4 = atoi(argv[8]);
	T1 = atoi(argv[9]);
	T2 = atoi(argv[10]);
	T3 = atoi(argv[11]);
	T4 = atoi(argv[12]);
	response_print("Inistallization sucessfully\n");
} 
