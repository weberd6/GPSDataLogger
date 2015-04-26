#include <string.h>
#include <stdbool.h>
#include <stdio.h>

#include "PICConfig.h"
#include "GPS.h"

int main() {

    InitializeSystem();

    while (true) {
        // Update display and get user input
        DisplayTouchTasks();

        // parse NMEA string if ready and log
        GPSTasks();

        // If transfer mode, do USB stuff
        USBTTasks();
        
    }

    return 0;
}