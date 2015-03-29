/*
** uMedia.h
**
**  Mikromedia configuration and basic peripherals access
**
*/

#ifndef _MIKROE_uMB
#define _MIKROE_uMB

#include "uMBconfig.h"

#include "HardwareProfile.h"            // need to know clock freq.

#include <pps.h>
#include "drv_spi.h"
#include "TouchScreen.h"
#include "Graphics/Graphics.h"
#include "MDD File System/FSIO.h"
#include "GPS_uart.h"

// function prototypes and macros
void uMBInit( void);            // init standard hw configuration
void TickInit( unsigned);       // init Timer3 as the main app tick

void ScreenCapture( char *filename);

#endif // _MIKROE_uMB

