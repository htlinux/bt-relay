#include "Checksum.h"

BYTE calculateChecksum(BYTE *pBuffer, WORD len)
{
	BYTE checksum = 0;

	while (len--)
	{
		checksum += *pBuffer++;
	}

	return checksum;
}
