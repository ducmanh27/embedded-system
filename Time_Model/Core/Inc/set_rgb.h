#ifndef SET_RGB_H
#define SET_RGB_H
#include "response_ci.h"
#include "stdlib.h"
#include "stdint.h"
#include "flash.h"
#include "main.h"


#define ADDRESS_DATA_RGB_STORAGE (0X800DC00) // page 55
void setTime(char **argv, uint8_t arg_num);
void setRGB(char **argv, uint8_t arg_num);
#endif