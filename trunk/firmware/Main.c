#include "HardwareProfile.h"
#include "HardwareTimer.h"
#include "FIFO.h"
#include "UART.h"
#include "Commands.h"
#include "Button.h"
#include "Timer.h"

// Configuration Bits
#pragma config OSC	= HS
#pragma config OSCS	= OFF
#pragma config PWRT	= OFF
#pragma config BOR	= OFF
#pragma config WDT	= OFF
#pragma config STVR	= ON
#pragma config LVP	= OFF

// Default Interrupt Service Routine
void interrupt isr(void)
{
	// Check for UART RX interrupt
	if (RCIE && RCIF) {
		uartServeInt();
	}

	// Check for TIMER0 overflow interrupt
	if (TMR0IE && TMR0IF) {	
		htServeInt();
	}
}

// Main Function
int main(void)
{
	// Initialize board
	boardInit();

	// Initialize peripherals and libraries
	htInit();
	fifoInit();
	uartOpen(UART_LOW_SPEED, UART_BAUD_RATE(9600));
	
	// Main loop
	while (TRUE)
	{
		// Execute tasks
		commandsTask();
		buttonTask();
		timerTask();
	}	
}
