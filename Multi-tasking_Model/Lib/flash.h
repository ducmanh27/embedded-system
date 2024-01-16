#ifndef __FLASH_H
#define __FLASH_H
#include "stm32f1xx.h"  
void Flash_Erase(uint32_t address);
void Flash_Write_Int(uint32_t address, int value);
int Flash_Read_Int(uint32_t address);

#endif
