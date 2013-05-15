#include "UART.h"
#include "HardwareTimer.h"
#include "FIFO.h"
#include <stdio.h>
#include <string.h>

void uartServeInt(void)
{
	// Clear interrupt flag
	PIR1bits.RCIF = 0;

	// Get one byte from UART
	BYTE byteReceived = uartGet();

	// Put the character into the FIFO buffer
	fifoPut(UART_FIFO, byteReceived);
}

void uartOpen(BYTE brspeed, BYTE spbrg)
{
	// Configure RX
	RCSTAbits.SPEN = 1;		// Enable serial port
	RCSTAbits.RX9 = 0;		// 8-bit reception
	RCSTAbits.ADDEN = 0;	// Disable address detection
	RCSTAbits.FERR = 0;		// No framing error
	RCSTAbits.OERR = 0;		// No overrun error
	
	// Configure TX
	TXSTAbits.TX9 = 0;			// 8-bit transmision
	TXSTAbits.SYNC = 0;			// Asynchronous mode
	TXSTAbits.BRGH = brspeed;	// Select UART speed

	// Pin directions
	RXD_TRIS = INPUT_PIN;
	TXD_TRIS = OUTPUT_PIN;

	// Set baud rate generator register
	SPBRG = spbrg;

	RCSTAbits.CREN = 1;		// Enable receiver
	TXSTAbits.TXEN = 1;		// Enable transmitter
	PIE1bits.RCIE = 1;		// Enable receive interrupt
}

static BOOL uartBusy(void)
{
	if (!TXSTAbits.TRMT)
	    return TRUE;

	return FALSE;
}

/*static BOOL uartDataReady(void)
{
	if (PIR1bits.RCIF)
    	return TRUE;

	return FALSE;
}*/

void uartPut(BYTE b)
{
	// Wait while the UART module is busy
	while (uartBusy());
	
	// Send the specified byte or character
	TXREG = b;
}

BYTE uartGet(void)
{
	BYTE data;
  	data = RCREG;

	return (data);
}

WORD uartReadLine(BYTE *lineBuffer)
{
	WORD usedSpace;
	WORD bytesRead = 0;
	BYTE b;

	*lineBuffer = '\0';

	while (TRUE)
	{
		usedSpace = fifoGetUsedSpace(UART_FIFO);

		if (usedSpace > 0)
		{
			b = fifoGet(UART_FIFO);

			#ifdef ECHO_CHARACTERS
			uartPut(b);
			#endif

			switch (b)
			{
				case '\r':
					*lineBuffer++ = '\0';
					return bytesRead;
				default:
					*lineBuffer++ = b;
					bytesRead++;
					break;
			}
		}
	}

	return 0;
}

void uartWriteLine(BYTE *pBuffer)
{
	// Wait while the UART module is busy
	while (uartBusy());

	do
  	{
		// Transmit a byte
    	while (uartBusy());
    	uartPut(*pBuffer);
  	} while (*pBuffer++);
}

void uartSendBytes(BYTE *pBuffer, WORD len)
{
	WORD i;
	BYTE b;

	for (i = 0; i < len; i++)
	{
		b = *pBuffer++;
		uartPut(b);
	}
}

void uartClose(void)
{
	RCSTAbits.CREN = 0;		// Disable receiver
	TXSTAbits.TXEN = 0;		// Disable transmitter
}
