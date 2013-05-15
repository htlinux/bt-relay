#include "Commands.h"
#include "HardwareTimer.h"
#include "FIFO.h"
#include "UART.h"
#include "Checksum.h"
#include "Relay.h"
#include "Timer.h"

static BYTE cmdBuffer[MAX_COMMAND_BUFFER_SIZE];
static BYTE responseBuffer[32];

void commandsTask(void)
{
	WORD bytesRead = getCommand(cmdBuffer);

	if (bytesRead > 0)
	{
		switch (cmdBuffer[0])
		{
			case CMD_SET_RELAY:
				commandSetRelay(cmdBuffer, bytesRead);
				break;
			case CMD_GET_RELAY:
				commandGetRelay(cmdBuffer, bytesRead);
				break;
			case CMD_SET_TIMER_VALUE:
				commandSetTimerValue(cmdBuffer, bytesRead);
				break;
			case CMD_SET_TIMER_TRIGGER_STATE:
				commandSetTimerTriggerState(cmdBuffer, bytesRead);
				break;
			case CMD_START_TIMER:
				commandStartTimer(cmdBuffer, bytesRead);
				break;
			case CMD_STOP_TIMER:
				commandStopTimer(cmdBuffer, bytesRead);
				break;
			default:
				writeError(CMD_ERROR_INVALID_COMMAND);
				break;
		}
	}
}

static BOOL readByte(BYTE *readByte, DWORD timeout)
{
	WORD fbUsedSpace;
	DWORD startTime = htGetMsCount();
	
	do
	{
		fbUsedSpace = fifoGetUsedSpace(UART_FIFO);
		
		if (fbUsedSpace > 0)
		{
			*readByte = fifoGet(UART_FIFO);
			return TRUE;
		}
	}
	while (htMsElapsed(startTime) < timeout);

	return FALSE;
}

static WORD getCommand(BYTE *pBuffer)
{
	WORD i;
	BYTE currentByte;
	BYTE rChecksum, cChecksum;
	WORD bytesRead = 0;
	BYTE *packetStart;

	// Save pointer to first element in the buffer
	packetStart = pBuffer;

	// Read Packet Start
	if (!readByte(&currentByte, PACKET_BYTE_TIMEOUT))
		return 0;

	// If not packet start, discard entire packet
	if (currentByte != PACKET_START)
		return 0;

	// Read Packet Length
	if (!readByte(&currentByte, PACKET_BYTE_TIMEOUT))
		return 0;

	bytesRead = (WORD)currentByte;

	// Read Expected Bytes
	for (i = 0; i < bytesRead; i++)
	{
		if (!readByte(&currentByte, PACKET_BYTE_TIMEOUT))
			return 0;

		*pBuffer++ = currentByte;
	}

	// Read Checksum
	if (!readByte(&currentByte, PACKET_BYTE_TIMEOUT))
		return 0;

	rChecksum = currentByte;

	// Calculate checksum
	cChecksum = calculateChecksum(packetStart, bytesRead);

	// If checksum does not match, discard packet
	if (rChecksum != cChecksum)
		return 0;

	return bytesRead;
}

static void writeResponse(BYTE *pBuffer, WORD len)
{
	uartSendBytes(pBuffer, len);
}

static void writeError(BYTE errorCode)
{
	BYTE *p = responseBuffer;

	*p++ = PACKET_START;
 	*p++ = 2;
	*p++ = CMD_RES_ERROR;
	*p++ = errorCode;
	*p++ = calculateChecksum(&responseBuffer[2], 2);

	writeResponse(responseBuffer, 5);
}

static void writeOK(void)
{
	BYTE *p = responseBuffer;

	*p++ = PACKET_START;
 	*p++ = 1;
	*p++ = CMD_RES_OK;
	*p++ = calculateChecksum(&responseBuffer[2], 1);

	writeResponse(responseBuffer, 4);
}

static void commandSetRelay(BYTE *pBuffer, WORD len)
{
	if (len != 2)
	{
		writeError(CMD_ERROR_LENGTH);
		return;
	}

	switch (pBuffer[1])
	{
		case TT_ON:
			turnOnRelay();
			break;
		case TT_OFF:
			turnOffRelay();
			break;
		case TT_TOGGLE:
			toggleRelay();
			break;
	}

	writeOK();
}

static void commandGetRelay(BYTE *pBuffer, WORD len)
{
	BYTE *p = responseBuffer;

	if (len != 1)
	{
		writeError(CMD_ERROR_LENGTH);
		return;
	}

	*p++ = PACKET_START;
 	*p++ = 2;
	*p++ = CMD_RES_OK;

	if (RELAY)
		*p++ = TT_ON;
	else
		*p++ = TT_OFF;

	*p++ = calculateChecksum(&responseBuffer[2], 2);

	writeResponse(responseBuffer, 5);	
}

static void commandSetTimerValue(BYTE *pBuffer, WORD len)
{
	DWORD value = 0;

	if (len != 5)
	{
		writeError(CMD_ERROR_LENGTH);
		return;
	}

	value = GET_DWORD(pBuffer[1], pBuffer[2], pBuffer[3], pBuffer[4]);

	setTimerValue(value);

	writeOK();
}

static void commandSetTimerTriggerState(BYTE *pBuffer, WORD len)
{
	if (len != 2)
	{
		writeError(CMD_ERROR_LENGTH);
		return;
	}

	if ((pBuffer[1] == TT_OFF) || (pBuffer[1] == TT_ON) || (pBuffer[1] == TT_TOGGLE))
	{
		setTimerTriggerState(pBuffer[1]);
		writeOK();
	} else {
		writeError(CMD_ERROR_NOT_VALID_TRIGGER);
	}
}

static void commandStartTimer(BYTE *pBuffer, WORD len)
{
	if (len != 1)
	{
		writeError(CMD_ERROR_LENGTH);
		return;
	}

	startTimer();
	writeOK();
}

static void commandStopTimer(BYTE *pBuffer, WORD len)
{
	if (len != 1)
	{
		writeError(CMD_ERROR_LENGTH);
		return;
	}

	stopTimer();
	writeOK();
}
