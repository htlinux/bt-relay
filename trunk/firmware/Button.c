#include "Button.h"
#include "HardwareTimer.h"
#include "Relay.h"

static BOOL issueButton = FALSE;

void buttonTask(void)
{
	if (!BTN)
	{
		// Debounce
		htDelayMs(50);
		
		if (!BTN)
		{
			issueButton = TRUE;
		}
	}

	if (BTN && issueButton)
	{
		toggleRelay();
		issueButton = FALSE;
	}
}