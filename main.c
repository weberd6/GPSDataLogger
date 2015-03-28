#include <string.h>
#include <stdbool.h>

#include "PICConfig.h"
#include "uMedia.h"

#include "GPS_uart.h"
//#include "GPS_i2c.h"
#include "NMEAparser.h"
#include "GPX.h"

int main() {
    char *nmea_string;
    struct RMCData gps_data;

    uMBInit();

    while (true) {
        while (!parse_buf_ready);
        parse_buf_ready = false;
        nmea_string = strtok(parse_buf, "$");
        if (nmea_string != NULL) {
            if (!parseNMEA(nmea_string, &gps_data))
                logWaypoint(&gps_data);
        }
    }

    return 0;
}