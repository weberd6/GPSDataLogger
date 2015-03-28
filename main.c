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
        nmea_string = strtok(parse_buf, "$");
        gps_data = parseNMEA(nmea_string);
        logWaypoint(gps_data);
    }

    return 0;
}