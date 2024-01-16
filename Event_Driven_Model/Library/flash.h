/*
 * flash.h
 *
 *  Created on: Dec 24, 2023
 *      Author: Admin
 */

#ifndef INC_FLASH_H_
#define INC_FLASH_H_
#include <stdint.h>
#include <string.h>
#include "main.h"
#pragma pack(1)
typedef struct{
	uint8_t no;
	uint8_t ssid[30];
	uint8_t pass[30];
}wifi_info_t;
#pragma pack()

// Erase flash memory
void Flash_EraseSector(uint32_t sector);

// Write on flash
void Flash_Write_Int( uint32_t address,uint32_t value);
void Flash_Write_Float(uint32_t address, float f);
void Flash_Write_Array(uint32_t address, uint8_t *arr, uint16_t len);
void Flash_Write_Struct(uint32_t address, wifi_info_t dta);

// Read from flash
uint32_t Flash_Read_Int(uint32_t address);
float Flash_Read_Float(uint32_t address);
void Flash_Read_Array(uint32_t address, uint8_t *arr, uint16_t len);
void Flash_Read_Struct(uint32_t address, wifi_info_t *dta);



#endif /* INC_FLASH_H_ */
