#ifndef _HARDWARE_TIMER_H_
#define _HARDWARE_TIMER_H_

#include "HardwareProfile.h"

#define TMR_PRELOAD 65379

extern void htInit(void);
extern void htServeInt(void);
extern void htDelayMs(DWORD milliseconds);
extern DWORD htGetMsCount(void);
extern DWORD htMsElapsed(DWORD start);
extern DWORD htGetSecondsCount(void);
extern DWORD htSecondsElapsed(DWORD start);

#endif
