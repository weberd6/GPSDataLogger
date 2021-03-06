
/*
 * uMedia.c
 *
 * PIC24 Mikromedia
 */

#include "uMedia.h"

#define __T3_ISR    __attribute__((interrupt, shadow, no_auto_psv))

void __T3_ISR _T3Interrupt(void)
{
   // Clear flag
   IFS0bits.T3IF = 0;

   TouchDetectPosition();
}


#define TICK_PERIOD( ms)  (GetPeripheralClock() * (ms)) / 8000

void TickInit( unsigned period_ms)
{
   // Initialize Timer3
   TMR3 = 0;
   PR3 = TICK_PERIOD( period_ms);
   T3CONbits.TCKPS = 1;        // Set prescale to 1:8
   IFS0bits.T3IF = 0;          // Clear flag
   IEC0bits.T3IE = 1;          // Enable interrupt
   T3CONbits.TON = 1;          // Run timer
}

void uMBInit( void)
{
    // 1. init clock for 40MIPS operation
    // Fosc= Fin*M/(N1*N2), Fcy=Fosc/2
    //Fosc = 8MHz * 80/(4*2) = 80MHz for 8MHz input clock
    PLLFBD = 78;                    // M = (PLLFDB+2)
    CLKDIVbits.PLLPOST = 1;         // N2=4
    CLKDIVbits.PLLPRE = 0;          // N1=2
    OSCTUN = 0;                     // Tune FRC oscillator, if FRC is used

    // Disable Watch Dog Timer
    RCONbits.SWDTEN = 0;

    // Clock switching to incorporate PLL
    __builtin_write_OSCCONH(0x03);  // Initiate Clock Switch to Primary

    // Oscillator with PLL (NOSC=0b011)
    __builtin_write_OSCCONL(0x01);  // Start clock switching
    while(OSCCONbits.COSC != 0b011);

    // Wait for Clock switch to occur
    // Wait for PLL to lock
    while(OSCCONbits.LOCK != 1)
    { };

    // USB Clock setup
    // Favco = Fin*(M/N1)
    // Favco = 8MHz*(24/2) = 96 MHz
    // Faclk = Favco/N = 96 MHz/2 = 48MHz
    ACLKCON3 = 0x24C1; // APLL disabled, Primary oscillator is source, N1 = 2, N = 2
    ACLKDIV3 = 0x7; // M = 24
    ACLKCON3bits.ENAPLL = 1; //Start APLL
    while(ACLKCON3bits.APLLCK != 1); //Waiting for the APLL locking

    // 2. disable analog inputs
    ANSELA = 0;   // all inputs digital
    ANSELB = 0;   // all inputs digital
    ANSELC = 0;   // all inputs digital
    ANSELD = 0;   // all inputs digital
    ANSELE = 0;   // all inputs digital
    ANSELG = 0;   // all inputs digital

} // uMBInit
 