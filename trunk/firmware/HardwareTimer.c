#include "HardwareTimer.h"

static volatile DWORD msCount;
static volatile DWORD secondsCount;

void htInit(void)
{
	T0CONbits.T08BIT = 1;			// 16-bit Mode Clock
	T0CONbits.T0CS = 0;				// Internal Instruction Clock
	T0CONbits.PSA = 0;				// Prescaler Assigned
	T0CONbits.T0PS = 0b100;			// 1:32 Prescaler Selection

	TMR0 = TMR_PRELOAD;				// Preload Timer 0 for about 1ms Overflow

	msCount = 0;
	secondsCount = 0;

	INTCONbits.T0IE = 1;			// Enable Timer 0 Interrupt
	T0CONbits.TMR0ON = 1;			// Enable Timer 0
}

void htServeInt(void)
{
	INTCONbits.T0IF = 0;			// Clear TMR0 Interrupt Flag
	TMR0 = TMR_PRELOAD;				// Preload Timer 0 for 1ms Overflow
	msCount++;					// Increment Ticks Counter
	
	if (msCount % 1000 == 0)
		secondsCount++;
}

void htDelayMs(DWORD milliseconds)
{
	DWORD currentMs = msCount;
	DWORD count;

	do
	{
		count = msCount - currentMs;
	}
	while (count < milliseconds);
}

DWORD htGetMsCount(void)
{
	return msCount;
}

DWORD htGetSecondsCount(void)
{
	return secondsCount;
}

DWORD htMsElapsed(DWORD start)
{
	return (msCount - start);
}

DWORD htSecondsElapsed(DWORD start)
{
	return (secondsCount - start);
}
