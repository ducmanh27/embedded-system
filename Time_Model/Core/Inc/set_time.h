#ifndef SETTIME_H
#define SETTIME_H
#include "response_ci.h"
#include "stdlib.h"
#include "stdint.h"
#include "flash.h"
#define ADDRESS_DATA_STORAGE (0X800A000) // page 40
void setTime(char **argv, uint8_t arg_num);
#endif