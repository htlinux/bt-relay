#include "HardwareProfile.h"
#include "Timer.h"

void BoardInit(void) {
	// TODO Init Clock

	ADCON0 = 0x00;
	ADCON1bits.PCFG = 0b0111;		// Default all pins to digital

	RXD_TRIS = INPUT_PIN;
	TXD_TRIS = OUTPUT_PIN;
	RELAY_TRIS = OUTPUT_PIN;
	LED_TRIS = OUTPUT_PIN;
	BTN_TRIS = INPUT_PIN;

	RELAY = 0;
	LED = 0;

	EnableInterrupts();
}

void EnableInterrupts(void) {
	RCONbits.IPEN = 0;		// Disable Interrupt Priorities
    INTCONbits.GIE = 1;	// Enable Peripheral Interrupts
}