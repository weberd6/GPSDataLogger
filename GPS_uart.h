#ifndef GPS_UART_H
#define	GPS_UART_H

#include <stdbool.h>

#define BRATE      1041     // 9600 baud (BREGH=1)
#define U_ENABLE 0x8008     // enable the UART peripheral
#define U_TX     0x0400     // enable transmission

extern bool parse_buf_ready;
extern char* parse_buf;
extern void InitGPS();

#endif	/* GPS_UART_H */

