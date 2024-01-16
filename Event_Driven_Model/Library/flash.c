/*
 * flash.c
 *
 *  Created on: Dec 24, 2023
 *      Author: Admin
 */

#include "flash.h"

// Erase flash memory

void Flash_EraseSector(uint32_t Sector){
	HAL_FLASH_Unlock();
	FLASH_EraseInitTypeDef EraseInitStruct;
	EraseInitStruct.Banks = 1;
	EraseInitStruct.TypeErase = FLASH_TYPEERASE_SECTORS;
	EraseInitStruct.Sector = Sector;
	EraseInitStruct.NbSectors = 1;
	uint32_t pageerr;
	HAL_FLASHEx_Erase(&EraseInitStruct, &pageerr);
	HAL_FLASH_Lock();
}

// Write on flash
void Flash_Write_Int( uint32_t address,uint32_t value){
	HAL_FLASH_Unlock();
	HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, address, value);
	HAL_FLASH_Lock();
}

/**
  Đây là hàm đọc ghi vào ô nhớ flash một số float
  */
void Flash_Write_Float(uint32_t address, float f){
	uint8_t data[4];
	*(float*)data =  f;
	HAL_FLASH_Unlock();
	HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, address, *(uint32_t*)data);
	HAL_FLASH_Lock();
}
void Flash_Write_Array(uint32_t address, uint8_t *arr, uint16_t len){
	HAL_FLASH_Unlock();
	uint16_t *pt = (uint16_t*)arr;
	for(uint16_t i = 0; i < (len+1)/2; i++){
		HAL_FLASH_Program(FLASH_TYPEPROGRAM_HALFWORD, address + 2*i,*pt);
		pt++;
	}

	HAL_FLASH_Lock();
}
void Flash_Write_Struct(uint32_t address, wifi_info_t dta){
	Flash_Write_Array(address, (uint8_t*)&dta, sizeof(dta));
}

// Read from flash
uint32_t Flash_Read_Int(uint32_t address){
  return (* (__IO uint32_t *)(address));
}


float Flash_Read_Float(uint32_t address){
	uint32_t data = *(__IO uint32_t *) (address);
	return *(float*)(&data);
}
void Flash_Read_Array(uint32_t address, uint8_t *arr, uint16_t len){
	uint16_t *pt = (uint16_t*)arr;
	for(uint16_t i = 0; i < (len+1)/2; i++){
		*pt = *(__IO uint16_t *)(address +2*i);
		pt++;
	}
}
void Flash_Read_Struct(uint32_t address, wifi_info_t *dta){
	Flash_Read_Array(address, (uint8_t* )dta, sizeof(wifi_info_t));
}

