#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"

#include "PeriodMeasure.h"

extern int32_t U;

void initTach() {
	PeriodMeasure_Init();
}

int32_t getTach() {
	return U;
}
