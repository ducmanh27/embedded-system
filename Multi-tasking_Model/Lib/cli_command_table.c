#include "cli_command_table.h"
#include "cli_types.h"
#include "setRGB.h"
#include "setScheduler.h"
const cli_command_info_t command_info_set_RGB =
{
	setRGB,
	"Set color for led RGB" 
};
const cli_command_info_t command_info_config_set_scheduler =
{
	setScheduler,
	"Set deadline , phase, period for all tasks in program" 
};
const cli_command_entry_t command_entry_talbe[] = 
{
//	{"getTemp", &command_info_gettemp},
//	{"setTempWarning",&command_info_settemp_max},
//	{"setDateTime",&command_info_setdate_time},
		{"setRGB",&command_info_set_RGB},
		{"setScheduler",&command_info_config_set_scheduler},
		{NULL, NULL}
	
};
