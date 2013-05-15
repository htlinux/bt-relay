#ifndef _FIFO_
#define _FIFO_

#include "HardwareProfile.h"

#define NUMBER_OF_BUFFERS 1

#define FIFO_START  0
#define FIFO_LEN    128
#define FIFO_MASK   0x7F

extern void fifoInit(void);
extern void fifoClear(WORD bNum);
extern void fifoPut(WORD bNum, BYTE b);
extern BYTE fifoGet(WORD bNum);
extern void fifoPutPacket(WORD bNum, BYTE *pBuffer, WORD wLen);
extern void fifoGetPacket(WORD bNum, BYTE *pBuffer, WORD wLen);
extern WORD fifoGetUsedSpace(WORD bNum);
extern WORD fifoGetFreeSpace(WORD bNum);

#endif
