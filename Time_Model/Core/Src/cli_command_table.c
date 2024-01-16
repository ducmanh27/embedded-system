#include "cli_command_table.h"
#include "cli_types.h"
#include "set_time.h"
#include "set_rgb.h"



const cli_command_info_t command_set_time =
{
	setTime,
	"set time "
};
const cli_command_info_t command_set_RGB =
{
	setRGB,
	"set RGB from computer"
};
const cli_command_entry_t command_entry_talbe[] = 
{
	{"setTime", &command_set_time},
	{"setRGB",&command_set_RGB},
	{NULL, NULL}
};
