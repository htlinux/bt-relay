#ifndef _TIMER_
#define _TIMER_

#include "HardwareProfile.h"

extern void timerTask(void);
extern void startTimer(void);
extern void stopTimer(void);
extern void setTimerValue(DWORD seconds);
extern void setTimerTriggerState(BYTE trigger);

#endif
