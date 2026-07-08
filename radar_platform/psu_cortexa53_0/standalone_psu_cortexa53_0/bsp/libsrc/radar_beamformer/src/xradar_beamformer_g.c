#include "xradar_beamformer.h"

XRadar_beamformer_Config XRadar_beamformer_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,radar-beamformer-1.0", /* compatible */
		0xa0010000 /* reg */
	},
	 {
		 NULL
	}
};