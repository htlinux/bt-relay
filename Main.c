#include "HardwareProfile.h"
#include "Timer.h"
#include "FIFO.h"
#include "UART.h"
#include "Relay.h"
#include "Button.h"

// Configuration Bits
#pragma config OSC	= HS
#pragma config OSCS	= OFF
#pragma config PWRT	= OFF
#pragma config BOR	= OFF
#pragma config WDT	= OFF
#pragma config STVR	= ON
#pragma config LVP	= OFF

#define LINE_TIMEOUT	5000

static BYTE line[128];
BOOL onTimer = FALSE;
DWORD startSeconds = 0;
DWORD triggerSeconds = 0;
DWORD lastSeconds = 0;
BYTE timerTriggerState = 'T';

void executeTasks(void);
void timerTask(void);

// Default Interrupt Service Routine
void interrupt isr(void)
{
	if (RCIE && RCIF) {
		UARTServeInt();
	}

	if (TMR0IE && TMR0IF) {	
		TMRServeInt();
	}
}

// Main Function
int main(void)
{
	WORD num;

	BoardInit();
	TMRInit();
	FIFOInit();
	UARTOpen(31);
	
	while (TRUE)
	{
		if (UARTReadLine(line, &executeTasks))
		{
			// AT command
			if (strcmp(line, "AT") == 0)
			{
				UARTWriteLine("\r\nOK\r\n");
				continue;
			}

			// AT+RELAY command
			if (strncmp(line, "AT+RELAY", 8) == 0)
			{
				if (line[8] == '?')
				{
					UARTWriteLine("\r\nRELAY: ");
					UARTWriteLine(RELAY ? "1" : "0");
					UARTWriteLine("\r\n");
					UARTWriteLine("OK\r\n");
					continue;
				}

				if (line[8] == '=')
				{
					switch (line[9])
					{
						case '0':
							turnOffRelay();
							break;
						case '1':
							turnOnRelay();
							break;
						case 'T':
							toggleRelay();
							break;
						default:
							UARTWriteLine("\r\nERROR\r\n");
							continue;
					}
					
					UARTWriteLine("\r\nOK\r\n");
					continue;
				}

				UARTWriteLine("\r\nERROR\r\n");
				continue;
			}

			// AT+TIMER command
			if (strncmp(line, "AT+TIMER", 8) == 0)
			{
				if (line[8] == '=')
				{
					num = atoi(&line[9]);
					triggerSeconds = num;
					startSeconds = TMRGetSecondsCount();
					lastSeconds = startSeconds;
					onTimer = TRUE;

					UARTWriteLine("\r\nOK\r\n");
					continue;
				}
				
				if (line[8] == '\r')
				{
					startSeconds = TMRGetSecondsCount();
					lastSeconds = startSeconds;
					onTimer = TRUE;

					UARTWriteLine("\r\nOK\r\n");
					continue;
				}

				UARTWriteLine("\r\nERROR\r\n");
				continue;
			}

			// AT+TTS command (Timer Trigger State: 0, 1 or T)
			if (strncmp(line, "AT+TTS", 6) == 0)
			{
				if (line[6] == '=')
				{
					if ((line[7] == '0') || (line[7] == '1') || (line[7] == 'T'))
						timerTriggerState = line[7];
					else
						timerTriggerState = 'T';

					UARTWriteLine("\r\nOK\r\n");
					continue;
				}

				UARTWriteLine("\r\nERROR\r\n");
				continue;
			}

			// AT+TT command (Timer Trigger in seconds)
			if (strncmp(line, "AT+TT", 5) == 0)
			{
				if (line[5] == '=')
				{
					num = atoi(&line[6]);
					triggerSeconds = num;

					UARTWriteLine("\r\nOK\r\n");
					continue;
				}
				
				UARTWriteLine("\r\nERROR\r\n");
				continue;
			}
		}
	}
}

void executeTasks(void)
{
	buttonTask();
	timerTask();
}

void timerTask(void)
{
	DWORD cs;

	if (onTimer)
	{
		if (TMRSecondsElapsed(startSeconds) >= triggerSeconds)
		{
			switch (timerTriggerState)
			{
				case '1':
					turnOnRelay();
					break;
				case '0':
					turnOffRelay();
					break;
				default:
					toggleRelay();
					break;
			}
			onTimer = FALSE;
		} else {
			cs = TMRGetSecondsCount();
			if (cs != lastSeconds)
			{
				lastSeconds = cs;
				LED = !LED;
			}
		}
	}
}
