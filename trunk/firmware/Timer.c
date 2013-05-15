#include "Timer.h"
#include "HardwareTimer.h"
#include "Commands.h"
#include "Relay.h"

static BOOL onTimer = FALSE;
static DWORD startSeconds = 0;
static DWORD triggerSeconds = 0;
static DWORD lastSeconds = 0;
static BYTE timerTriggerState = TT_TOGGLE;

void timerTask(void)
{
	DWORD cs;

	if (onTimer)
	{
		if (htSecondsElapsed(startSeconds) >= triggerSeconds)
		{
			switch (timerTriggerState)
			{
				case TT_ON:
					turnOnRelay();
					break;
				case TT_OFF:
					turnOffRelay();
					break;
				default:
					toggleRelay();
					break;
			}
			onTimer = FALSE;
		} else {
			cs = htGetSecondsCount();
			if (cs != lastSeconds)
			{
				lastSeconds = cs;
				LED = !LED;
			}
		}
	}
}

void startTimer(void)
{
	startSeconds = htGetSecondsCount();
	lastSeconds = startSeconds;
	onTimer = TRUE;
}

void stopTimer(void)
{
	onTimer = FALSE;
}

void setTimerValue(DWORD seconds)
{
	triggerSeconds = seconds;
}

void setTimerTriggerState(BYTE trigger)
{
	timerTriggerState = trigger;
}