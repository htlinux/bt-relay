opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 49521"

opt pagewidth 120

	opt lm

	processor	18F252
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
skipnz macro
	btfsc	status,2
	endm
	global	__ramtop
	global	__accesstop
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 208 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 332 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 501 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LATA equ 0F89h ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 768 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 900 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1097 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1336 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1575 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1648 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1721 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1794 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1837 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1880 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1923 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1988 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1994 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2000 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2006 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2229 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2530 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2552 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2563 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2685 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2691 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2697 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2703 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2790 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2796 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2808 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2886 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2892 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2898 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2971 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3115 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3121 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3127 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3133 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3194 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3263 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3538 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3544 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3550 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3631 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3637 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3751 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3757 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3763 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 3905 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3932 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3989 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4077 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4083 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4089 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4095 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4173 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4179 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4185 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4191 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4203 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4209 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4215 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4221 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4227 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4233 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4245 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4251 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4257 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4263 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4269 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4275 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4286 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4292 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4298 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4304 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4310 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4316 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4322 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4328 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4334 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4501 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4506 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4772 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4778 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4784 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4790 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4798 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4804 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4810 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4816 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4824 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4831 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4837 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4843 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4849 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4855 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 4978 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 208 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 332 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 501 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LATA equ 0F89h ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 768 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 900 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1097 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1336 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1575 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1648 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1721 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1794 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1837 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1880 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1923 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1988 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1994 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2000 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2006 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2229 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2530 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2552 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2563 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2685 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2691 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2697 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2703 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2790 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2796 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2808 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2886 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2892 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2898 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2971 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3115 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3121 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3127 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3133 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3194 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3263 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3538 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3544 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3550 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3631 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3637 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3751 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3757 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3763 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 3905 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3932 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3989 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4077 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4083 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4089 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4095 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4173 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4179 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4185 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4191 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4203 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4209 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4215 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4221 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4227 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4233 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4245 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4251 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4257 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4263 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4269 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4275 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4286 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4292 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4298 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4304 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4310 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4316 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4322 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4328 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4334 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4501 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4506 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4772 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4778 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4784 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4790 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4798 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4804 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4810 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4816 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4824 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4831 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4837 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4843 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4849 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4855 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 4978 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PORTA equ 0F80h ;# 
# 208 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PORTB equ 0F81h ;# 
# 332 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PORTC equ 0F82h ;# 
# 501 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LATA equ 0F89h ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LATB equ 0F8Ah ;# 
# 768 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LATC equ 0F8Bh ;# 
# 900 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TRISA equ 0F92h ;# 
# 905 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
DDRA equ 0F92h ;# 
# 1097 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TRISB equ 0F93h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
DDRB equ 0F93h ;# 
# 1336 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TRISC equ 0F94h ;# 
# 1341 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
DDRC equ 0F94h ;# 
# 1575 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1648 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1721 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1794 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1837 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1880 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1923 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1988 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1994 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EEDATA equ 0FA8h ;# 
# 2000 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
EEADR equ 0FA9h ;# 
# 2006 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCSTA equ 0FABh ;# 
# 2011 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2229 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXSTA equ 0FACh ;# 
# 2234 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2530 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXREG equ 0FADh ;# 
# 2535 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCREG equ 0FAEh ;# 
# 2546 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2552 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2557 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2563 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T3CON equ 0FB1h ;# 
# 2685 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2691 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2697 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2703 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2790 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2796 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2808 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2886 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2892 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2898 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2971 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3115 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADRES equ 0FC3h ;# 
# 3121 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3127 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3133 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3194 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3263 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3538 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3544 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3550 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T2CON equ 0FCAh ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PR2 equ 0FCBh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3631 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3637 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T1CON equ 0FCDh ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3751 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3757 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3763 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
RCON equ 0FD0h ;# 
# 3905 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3932 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3989 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4008 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
T0CON equ 0FD5h ;# 
# 4077 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4083 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4089 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4095 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
STATUS equ 0FD8h ;# 
# 4173 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4179 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4185 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4191 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4203 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4209 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4215 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4221 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
BSR equ 0FE0h ;# 
# 4227 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4233 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4245 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4251 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4257 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4263 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4269 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4275 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
WREG equ 0FE8h ;# 
# 4286 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4292 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4298 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4304 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4310 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4316 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4322 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4328 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4334 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4501 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON equ 0FF2h ;# 
# 4506 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4772 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PROD equ 0FF3h ;# 
# 4778 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PRODL equ 0FF3h ;# 
# 4784 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PRODH equ 0FF4h ;# 
# 4790 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4798 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4804 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4810 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4816 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4824 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4831 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PC equ 0FF9h ;# 
# 4837 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCL equ 0FF9h ;# 
# 4843 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4849 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4855 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOS equ 0FFDh ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOSL equ 0FFDh ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOSH equ 0FFEh ;# 
# 4978 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic18f252.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_BoardInit
	FNCALL	_BoardInit,_TMRInit
	FNCALL	_BoardInit,_EnableInterrupts
	FNROOT	_main
	FNCALL	_isr,_TMRServeInt
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_ticksCount
	global	_TMR0
_TMR0	set	0xFD6
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON1bits
_ADCON1bits	set	0xFC1
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_LATBbits
_LATBbits	set	0xF8A
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_T0CONbits
_T0CONbits	set	0xFD5
	global	_TRISAbits
_TRISAbits	set	0xF92
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_TMR0IF
_TMR0IF	set	0x7F92
psect	text0,class=CODE,space=0,reloc=2
global __ptext0
__ptext0:
; #config settings
global __CFG_OSCS$ON
__CFG_OSCS$ON equ 0x0
global __CFG_OSC$HS
__CFG_OSC$HS equ 0x0
global __CFG_BOR$OFF
__CFG_BOR$OFF equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_STVR$ON
__CFG_STVR$ON equ 0x0
	file	"BTRelay.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1
global __pbssCOMRAM
__pbssCOMRAM:
	global	_ticksCount
_ticksCount:
       ds      4
psect	cinit
; Clear objects allocated to COMRAM (4 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1
global __pcstackCOMRAM
__pcstackCOMRAM:
?_TMRServeInt:	; 0 bytes @ 0x0
??_TMRServeInt:	; 0 bytes @ 0x0
?_BoardInit:	; 0 bytes @ 0x0
?_EnableInterrupts:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
??_isr:	; 0 bytes @ 0x0
?_TMRInit:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds   14
??_BoardInit:	; 0 bytes @ 0xE
??_EnableInterrupts:	; 0 bytes @ 0xE
??_main:	; 0 bytes @ 0xE
??_TMRInit:	; 0 bytes @ 0xE
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     14      18
;!    BANK0           128      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;!                          _BoardInit
;! ---------------------------------------------------------------------------------
;! (1) _BoardInit                                            0     0      0       0
;!                            _TMRInit
;!                   _EnableInterrupts
;! ---------------------------------------------------------------------------------
;! (2) _TMRInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _EnableInterrupts                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _isr                                                 14    14      0       0
;!                                              0 COMRAM    14    14      0
;!                        _TMRServeInt
;! ---------------------------------------------------------------------------------
;! (4) _TMRServeInt                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _BoardInit
;!     _TMRInit
;!     _EnableInterrupts
;!
;! _isr (ROOT)
;!   _TMRServeInt
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      17        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      16        0.0%
;!BANK5              100      0       0      14        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80      0       0       5        0.0%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F      E      12       1       14.2%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       6       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      12      15        0.0%
;!DATA                 0      0      18       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "D:\Proyectos\Electronica\BTRelay\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_BoardInit
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0
psect	text0
	file	"D:\Proyectos\Electronica\BTRelay\Main.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
	opt	stack 27
	dw	0FFFFh
	line	12
	
l641:
;Main.c: 12: BoardInit();
	call	_BoardInit	;wreg free
	line	13
;Main.c: 13: while (1);
	
l15:
	
l16:
	goto	l15
	
l17:
	line	14
	
l18:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_BoardInit

;; *************** function _BoardInit *****************
;; Defined at:
;;		line 4 in file "D:\Proyectos\Electronica\BTRelay\HardwareProfile.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TMRInit
;;		_EnableInterrupts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
global __ptext1
__ptext1:
psect	text1
	file	"D:\Proyectos\Electronica\BTRelay\HardwareProfile.c"
	line	4
	global	__size_of_BoardInit
	__size_of_BoardInit	equ	__end_of_BoardInit-_BoardInit
	
_BoardInit:
	opt	stack 27
	dw	0FFFFh
	line	7
	
l643:
;HardwareProfile.c: 7: ADCON0 = 0x00;
	movlw	low(0)
	movwf	((c:4034)),c	;volatile
	line	8
;HardwareProfile.c: 8: ADCON1bits.PCFG = 0b0111;
	movf	((c:4033)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(07h & ((1<<4)-1))<<0
	movwf	((c:4033)),c	;volatile
	line	10
	
l645:
;HardwareProfile.c: 10: (TRISBbits.TRISB0) = 0;
	bcf	((c:3987)),c,0	;volatile
	line	11
	
l647:
;HardwareProfile.c: 11: (TRISBbits.TRISB1) = 0;
	bcf	((c:3987)),c,1	;volatile
	line	12
	
l649:
;HardwareProfile.c: 12: (TRISAbits.TRISA0) = 1;
	bsf	((c:3986)),c,0	;volatile
	line	14
	
l651:
;HardwareProfile.c: 14: (LATBbits.LATB0) = 0;
	bcf	((c:3978)),c,0	;volatile
	line	15
	
l653:
;HardwareProfile.c: 15: (LATBbits.LATB1) = 0;
	bcf	((c:3978)),c,1	;volatile
	line	17
	
l655:
;HardwareProfile.c: 17: TMRInit();
	call	_TMRInit	;wreg free
	line	18
	
l657:
;HardwareProfile.c: 18: EnableInterrupts();
	call	_EnableInterrupts	;wreg free
	line	19
	
l53:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_BoardInit
	__end_of_BoardInit:
	signat	_BoardInit,88
	global	_TMRInit

;; *************** function _TMRInit *****************
;; Defined at:
;;		line 5 in file "D:\Proyectos\Electronica\BTRelay\Timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_BoardInit
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
global __ptext2
__ptext2:
psect	text2
	file	"D:\Proyectos\Electronica\BTRelay\Timer.c"
	line	5
	global	__size_of_TMRInit
	__size_of_TMRInit	equ	__end_of_TMRInit-_TMRInit
	
_TMRInit:
	opt	stack 27
	dw	0FFFFh
	line	6
	
l659:
;Timer.c: 6: T0CONbits.T08BIT = 0;
	bcf	((c:4053)),c,6	;volatile
	line	7
;Timer.c: 7: T0CONbits.T0CS = 0;
	bcf	((c:4053)),c,5	;volatile
	line	8
;Timer.c: 8: T0CONbits.PSA = 0;
	bcf	((c:4053)),c,3	;volatile
	line	9
	
l661:
;Timer.c: 9: T0CONbits.T0PS = 0b100;
	movf	((c:4053)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(04h & ((1<<3)-1))<<0
	movwf	((c:4053)),c	;volatile
	line	11
;Timer.c: 11: TMR0 = 100;
	movlw	high(064h)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(064h)
	movwf	((c:4054)),c	;volatile
	line	13
;Timer.c: 13: ticksCount = 0;
	movlw	low(0)
	movwf	((c:_ticksCount)),c	;volatile
	movlw	high(0)
	movwf	((c:_ticksCount+1)),c	;volatile
	movlw	low highword(0)
	movwf	((c:_ticksCount+2)),c	;volatile
	movlw	high highword(0)
	movwf	((c:_ticksCount+3)),c	;volatile
	line	15
	
l663:
;Timer.c: 15: INTCONbits.TMR0IE = 1;
	bsf	((c:4082)),c,5	;volatile
	line	16
	
l665:
;Timer.c: 16: T0CONbits.TMR0ON = 1;
	bsf	((c:4053)),c,7	;volatile
	line	17
	
l29:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_TMRInit
	__end_of_TMRInit:
	signat	_TMRInit,88
	global	_EnableInterrupts

;; *************** function _EnableInterrupts *****************
;; Defined at:
;;		line 21 in file "D:\Proyectos\Electronica\BTRelay\HardwareProfile.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_BoardInit
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
global __ptext3
__ptext3:
psect	text3
	file	"D:\Proyectos\Electronica\BTRelay\HardwareProfile.c"
	line	21
	global	__size_of_EnableInterrupts
	__size_of_EnableInterrupts	equ	__end_of_EnableInterrupts-_EnableInterrupts
	
_EnableInterrupts:
	opt	stack 27
	dw	0FFFFh
	line	22
	
l667:
;HardwareProfile.c: 22: RCONbits.IPEN = 0;
	bcf	((c:4048)),c,7	;volatile
	line	23
;HardwareProfile.c: 23: INTCONbits.GIEH = 0;
	bcf	((c:4082)),c,7	;volatile
	line	24
;HardwareProfile.c: 24: INTCONbits.GIEL = 1;
	bsf	((c:4082)),c,6	;volatile
	line	25
	
l56:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_EnableInterrupts
	__end_of_EnableInterrupts:
	signat	_EnableInterrupts,88
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 5 in file "D:\Proyectos\Electronica\BTRelay\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_TMRServeInt
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"D:\Proyectos\Electronica\BTRelay\Main.c"
	line	5
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:
	opt	stack 27
	dw	0FFFFh; errata NOP
	movff	pclat+0,??_isr+0
	movff	pclat+1,??_isr+1
	movff	fsr0l+0,??_isr+2
	movff	fsr0h+0,??_isr+3
	movff	fsr1l+0,??_isr+4
	movff	fsr1h+0,??_isr+5
	movff	fsr2l+0,??_isr+6
	movff	fsr2h+0,??_isr+7
	movff	prodl+0,??_isr+8
	movff	prodh+0,??_isr+9
	movff	tblptrl+0,??_isr+10
	movff	tblptrh+0,??_isr+11
	movff	tblptru+0,??_isr+12
	movff	tablat+0,??_isr+13
	line	6
	
i2l669:
;Main.c: 6: if (TMR0IE && TMR0IF) {
	btfss	c:(32661/8),(32661)&7	;volatile
	goto	i2u1_41
	goto	i2u1_40
i2u1_41:
	goto	i2l12
i2u1_40:
	
i2l671:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u2_41
	goto	i2u2_40
i2u2_41:
	goto	i2l12
i2u2_40:
	line	7
	
i2l673:
;Main.c: 7: TMRServeInt();
	call	_TMRServeInt	;wreg free
	goto	i2l12
	line	8
	
i2l11:
	line	9
	
i2l12:
	movff	??_isr+13,tablat+0
	movff	??_isr+12,tblptru+0
	movff	??_isr+11,tblptrh+0
	movff	??_isr+10,tblptrl+0
	movff	??_isr+9,prodh+0
	movff	??_isr+8,prodl+0
	movff	??_isr+7,fsr2h+0
	movff	??_isr+6,fsr2l+0
	movff	??_isr+5,fsr1h+0
	movff	??_isr+4,fsr1l+0
	movff	??_isr+3,fsr0h+0
	movff	??_isr+2,fsr0l+0
	movff	??_isr+1,pclat+1
	movff	??_isr+0,pclat+0
	retfie f
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
	global	_TMRServeInt

;; *************** function _TMRServeInt *****************
;; Defined at:
;;		line 19 in file "D:\Proyectos\Electronica\BTRelay\Timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
global __ptext5
__ptext5:
psect	text5
	file	"D:\Proyectos\Electronica\BTRelay\Timer.c"
	line	19
	global	__size_of_TMRServeInt
	__size_of_TMRServeInt	equ	__end_of_TMRServeInt-_TMRServeInt
	
_TMRServeInt:
	opt	stack 27
	dw	0FFFFh
	line	20
	
i2l635:
;Timer.c: 20: TMR0 = 100;
	movlw	high(064h)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(064h)
	movwf	((c:4054)),c	;volatile
	line	21
	
i2l637:
;Timer.c: 21: INTCONbits.TMR0IE = 0;
	bcf	((c:4082)),c,5	;volatile
	line	22
	
i2l639:
;Timer.c: 22: ticksCount++;
	movlw	01h
	addwf	((c:_ticksCount)),c	;volatile
	movlw	0
	addwfc	((c:_ticksCount+1)),c	;volatile
	movlw	0
	addwfc	((c:_ticksCount+2)),c	;volatile
	movlw	0
	addwfc	((c:_ticksCount+3)),c	;volatile
	line	23
	
i2l32:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_TMRServeInt
	__end_of_TMRServeInt:
	signat	_TMRServeInt,88
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1
psect	text6,class=CODE,space=0,reloc=2
global __ptext6
__ptext6:
	PSECT	rparam,class=COMRAM,space=1
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
