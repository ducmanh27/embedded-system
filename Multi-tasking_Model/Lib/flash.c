#include "flash.h"

void Flash_Erase(uint32_t address)
	
{
	HAL_FLASH_Unlock();
	FLASH_EraseInitTypeDef EraseIniStruct;
	EraseIniStruct.Banks = 1;
	EraseIniStruct.NbPages = 1;
	EraseIniStruct.PageAddress = address;
	EraseIniStruct.TypeErase = FLASH_TYPEERASE_PAGES;
	uint32_t err;
	HAL_FLASHEx_Erase(&EraseIniStruct, &err);
	HAL_FLASH_Lock();
}

void Flash_Write_Int(uint32_t address, int value)
{
	HAL_FLASH_Unlock();
	HAL_FLASH_Program(FLASH_TYPEPROGRAM_HALFWORD, address, value);
	HAL_FLASH_Lock();
}
int Flash_Read_Int(uint32_t address)
{
	return *(__IO uint16_t*) (address);
}


