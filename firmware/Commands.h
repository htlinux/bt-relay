#ifndef _COMMANDS_H_
#define _COMMANDS_H_

#include "HardwareProfile.h"

/* Incoming Packet Format:
 * [PACKET_START] [PACKET_LENGTH] ([COMMAND_CODE] [ARG0] ... [ARGN]) [CHECKSUM]
 *
 * Outgoing Packet Format:
 * [PACKET_START] [PACKET_LENGTH] ([RESPONSE_CODE] [ARG0] ... [ARGN]) [CHECKSUM]
 *
 * Note: Packet length should only include command code and associated bytes.
 * Checksum byte is not included in packet length.
 */

/* Example - Toggle Relay: 0xAA (170), 0x02 (2), 0x00 (0), 0x02 (2), 0x02 (2) */

#define PACKET_BYTE_TIMEOUT		100
#define PACKET_START			0xAA
#define MAX_COMMAND_BUFFER_SIZE	0xFF

#define CMD_SET_RELAY				0x00
#define CMD_GET_RELAY				0x01
#define CMD_SET_TIMER_VALUE			0x02
#define CMD_SET_TIMER_TRIGGER_STATE	0x03
#define CMD_START_TIMER				0x04
#define CMD_STOP_TIMER				0x05

#define CMD_RES_OK				0x00
#define CMD_RES_ERROR			0xFF

#define CMD_ERROR_LENGTH			0x01
#define CMD_ERROR_NOT_VALID_TRIGGER	0x02
#define CMD_ERROR_INVALID_COMMAND	0xFE
#define CMD_ERROR_UNKNOWN			0xFF

#define TT_OFF		0x00
#define TT_ON		0x01
#define TT_TOGGLE	0x02

static BOOL readByte(BYTE *readByte, DWORD timeout);
static WORD getCommand(BYTE *pBuffer);
static void writeResponse(BYTE *pBuffer, WORD len);
static void writeError(BYTE errorCode);
static void writeOK(void);
static void commandSetRelay(BYTE *pBuffer, WORD len);
static void commandGetRelay(BYTE *pBuffer, WORD len);
static void commandSetTimerValue(BYTE *pBuffer, WORD len);
static void commandSetTimerTriggerState(BYTE *pBuffer, WORD len);
static void commandStartTimer(BYTE *pBuffer, WORD len);
static void commandStopTimer(BYTE *pBuffer, WORD len);

extern void commandsTask(void);

#endif
