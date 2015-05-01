#include <stdbool.h>

#include <p24EP512GU810.h>
#include <timer.h>
#include <uart.h>

#include "GPSuart.h"

#define MAX_BUFFER_SIZE 128
#define __U2_ISR    __attribute__((interrupt, shadow, no_auto_psv))

const char disable_uart_string [] = { 0xB5, 0x62, 0x06, 0x00, // Header and ID
                                      0x01,                   // portID
                                      0x00,                   // reserved0
                                      0x00, 0x00,             // txReady
                                      0x00, 0x00, 0x00, 0x00, // mode
                                      0x00, 0x00, 0x00, 0x00, // baudRate
                                      0x00, 0x00,             // inProtoMask
                                      0x00, 0x00,             // outProtoMask
                                      0x00, 0x00,             // reserved4
                                      0x00, 0x00 };           // reserved5

bool parse_buf_ready = false;
char buffer1[MAX_BUFFER_SIZE];
char buffer2[MAX_BUFFER_SIZE];
char* fill_buf = buffer1;
char* parse_buf = buffer2;
char* temp;
unsigned int i = 0;

void __U2_ISR _U2RXInterrupt() {
    unsigned char new_char = ReadUART2();

    if ((i == 0) && (new_char != '$'))
        goto exit;

    fill_buf[i++] = new_char;

    if (new_char == '\n' || (i == MAX_BUFFER_SIZE-1)) {
        temp = fill_buf;
        fill_buf = parse_buf;
        parse_buf = temp;
        parse_buf_ready = true;
        i = 0;
    }

exit:
    _U2RXIF = 0;
}

void InitGPS() {
    _U2RXR   = 0x43;
    _RP65R    = 0x03;   // UART2 transmit
    U2BRG   = BRATE;
    U2MODE  = U_ENABLE;
    U2STA   = U_TX;

    _U2RXIF = 0;
    _U2RXIE = 1;
}
