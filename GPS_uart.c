#include <p24EP512GU810.h>
#include <uart.h>

void InitGPS() {
//    OpenI2C2 ( 0x8240 , 400);
//    IdleI2C2();

//    OpenTimer1( 0x8030, -1);
//    TMR1 = 0;
//    while (TMR1 < 100);
}

void _ISR _U2RXInterrupt(void) {
    _U2RXIF = 0;
}
