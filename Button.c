#include "Button.h"

static BOOL issueButton = FALSE;

void buttonTask(void)
{
	if (!BTN)
	{
		// Debounce
		TMRDelayMs(50);
		
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