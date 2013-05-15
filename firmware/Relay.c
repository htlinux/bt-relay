#include "Relay.h"

void toggleRelay(void)
{
	RELAY = !RELAY;
	LED = RELAY;
}

void turnOnRelay(void)
{
	RELAY = 1;
	LED = RELAY;
}

void turnOffRelay(void)
{
	RELAY = 0;
	LED = RELAY;
}
