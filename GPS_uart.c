#include <stdbool.h>

#include <p24EP512GU810.h>
#include <timer.h>
#include <uart.h>

#include "GPS_uart.h"

#define MAX_BUFFER_SIZE 4096
#define __U2_ISR    __attribute__((interrupt, shadow, no_auto_psv))

bool parse_buf_ready;
char buffer1[MAX_BUFFER_SIZE];
char buffer2[MAX_BUFFER_SIZE];
char* fill_buf;
char* parse_buf;
char* temp;
unsigned int i;

void __U2_ISR _U2RXInterrupt() {
    unsigned char new_char = ReadUART2();

    if (new_char == '$') {
        temp = fill_buf;
        fill_buf = parse_buf;
        parse_buf = temp;
        parse_buf_ready = true;
    }

    fill_buf[i++] = new_char;

    _U2RXIF = 0;
}

void InitGPS() {
    _U2RXR   = 0x43;
    _RP65R    = 0x03;
    U2BRG   = BRATE;
    U2MODE  = U_ENABLE;
    U2STA   = U_TX;

    _U2RXIF = 0;
    _U2RXIE = 1;
}
