#include "setRGB.h"
#include "main.h"
#include "stdlib.h"
// setTempWarning {room_id} {node_id} {temp_set}
extern uint8_t red, green, blue;
extern TIM_HandleTypeDef htim3;
void setRGB(char **argv, uint8_t arg_num)
{
	if (arg_num < 4)
	{
		//response_print("[Error]: Not enough argument = %d", arg_num);
		return ;
	}
	if (arg_num > 4)
	{
		//response_print("[Error]: too much argument = %d", arg_num);
		return ;
	}
	
	red = atoi(argv[1]);
	green = atoi(argv[2]);
	blue = atoi(argv[3]);
	
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,red);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,green);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,blue);
	//response_print("Value Red %d, Green: %d, Blue: %d\n", red, green, blue);
} 
