/*
** write.c
** replaces stdio lib write function with UART2 
**
** v1.00 LDJ 7/13/06
*/

#include <p24EP512GU810.h>
#include <stdio.h>

// send a character to the UART2 serial port
int putU2(int c)
{
//    while (CTS);               // wait for !CTS, clear to send
    while (U2STAbits.UTXBF);   // wait while Tx buffer full
    U2TXREG = c;
    return c;
} // putU2


int write(int handle, void *buffer, unsigned int len)
{
    int i;

    switch (handle)
    {
      case 0:
      case 1:
      case 2:
        i = len;
        while( i--)
            putU2( *(char*)buffer++);
        break;
      default:
        break;
    }
    return(len);
}

