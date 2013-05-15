#ifndef _UART_H_
#define _UART_H_

#include "HardwareProfile.h"

#define USE_OR_MASKS
#define UART_FIFO		0	// FIFO buffer ID (see FIFO.h)
#define UART_TIMEOUT	5	// seconds

#ifndef CLOCK_SPEED
#error Clock speed has not been specified.
#endif

#define UART_BAUD_RATE(x)	(((CLOCK_SPEED/x)/64)-1)
#define UART_LOW_SPEED		0
#define UART_HIGH_SPEED		1

static BOOL uartBusy(void);

extern void uartServeInt(void);
extern void uartOpen(BYTE brspeed, BYTE spbrg);
extern void uartPut(BYTE b);
extern BYTE uartGet(void);
extern WORD uartReadLine(BYTE *lineBuffer);
extern void uartWriteLine(BYTE *pBuffer);
extern void uartSendBytes(BYTE *pBuffer, WORD len);
extern void uartClose(void);

#endif
