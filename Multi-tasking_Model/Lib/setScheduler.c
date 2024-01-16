#include "setScheduler.h"
#include "stdlib.h"
#include "flash.h"

void WRITE_FLASH(uint32_t address, int value)
{
	
	Flash_Write_Int(address, value);
}
void setScheduler(char **argv, uint8_t arg_num)
{
	if (arg_num < 14)
	{
		//response_print("[Error]: Not enough argument = %d", arg_num);
		return ;
	}
	if (arg_num > 14)
	{
		//response_print("[Error]: too much argument = %d", arg_num);
		return ;
	}
	Flash_Erase(ADDRESS_DATA_STORAGE_D1);
	
	
	WRITE_FLASH(ADDRESS_DATA_STORAGE_FLAG, atoi(argv[13]));
	
	
	WRITE_FLASH(ADDRESS_DATA_STORAGE_D1, atoi(argv[1]));
	WRITE_FLASH(ADDRESS_DATA_STORAGE_D2, atoi(argv[2]));
	WRITE_FLASH(ADDRESS_DATA_STORAGE_D3, atoi(argv[3]));
	WRITE_FLASH(ADDRESS_DATA_STORAGE_D4, atoi(argv[4]));
	
	WRITE_FLASH(ADDRESS_DATA_STORAGE_Ph1, atoi(argv[5]));
	WRITE_FLASH(ADDRESS_DATA_STORAGE_Ph2, atoi(argv[6]));
	WRITE_FLASH(ADDRESS_DATA_STORAGE_Ph3, atoi(argv[7]));
	WRITE_FLASH(ADDRESS_DATA_STORAGE_Ph4, atoi(argv[8]));
	
	WRITE_FLASH(ADDRESS_DATA_STORAGE_T1, atoi(argv[9]));
	WRITE_FLASH(ADDRESS_DATA_STORAGE_T2, atoi(argv[10]));
	WRITE_FLASH(ADDRESS_DATA_STORAGE_T3, atoi(argv[11]));
	WRITE_FLASH(ADDRESS_DATA_STORAGE_T4, atoi(argv[12]));
	
	NVIC_SystemReset();

}
