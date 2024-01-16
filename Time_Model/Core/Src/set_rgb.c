#include "set_rgb.h"
extern TIM_HandleTypeDef htim2;
extern int arr_w_rgb[3];
extern int arr_r_rgb[3];
extern uint8_t duty_R;
extern uint8_t duty_G;
extern uint8_t duty_B;
extern uint8_t flag_update_rgb;
void setRGB(char **argv, uint8_t arg_num){
if (arg_num < 4)
	{
		response_print("[Error]: Not enough argument = %d\n", arg_num);
		return ;
	}
	if (arg_num > 4)
	{
		response_print("[Error]: too much argument = %d\n", arg_num);
		return ;
	}
	flag_update_rgb = 1;

	for(int i = 0; i < 3; i++){
	arr_w_rgb[i] = atoi(argv[i+1]);
	Flash_Erase(ADDRESS_DATA_RGB_STORAGE + 1024*i);
	 Flash_Write_Int( ADDRESS_DATA_RGB_STORAGE + 1024*i,arr_w_rgb[i]);
	}
	for( uint16_t i = 0; i < 3; i++){
	 arr_r_rgb[i] = Flash_Read_Int(ADDRESS_DATA_RGB_STORAGE + 1024*i);
	}
 duty_R = arr_r_rgb[0];
 duty_G = arr_r_rgb[1];
 duty_B = arr_r_rgb[2];
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,duty_R);
  __HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,duty_G);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,duty_B);
	response_print("RGB was changed succesfully\n");
	
	
}