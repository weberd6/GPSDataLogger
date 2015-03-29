#include <string.h>
#include <stdbool.h>

#include "PICConfig.h"
#include "uMedia.h"

#include "GPS_uart.h"
//#include "GPS_i2c.h"
#include "NMEAparser.h"
#include "GPX.h"

char file[32];
int fileID = 0;
bool logging = false;

char* nextFilename() {
    return sprintf(file, "gps_data%d.gpx", fileID++);
}

void startLogging() {
    gpsFileOpen(nextFilename());
    logging = true;
}

void stopLogging() {
    gpsFileClose();
    logging = false;
}

void logData(struct RMCData *gps_data) {
    if (!logging)
        startLogging();
    logWaypoint(&gps_data);
}

int main() {
    char *nmea_string;
    struct RMCData gps_data;

    uMBInit();
    initGPXFS();

    while (true) {
        while (!parse_buf_ready);
        parse_buf_ready = false;
        nmea_string = strtok(parse_buf, "$");
        if (nmea_string != NULL) {
            if (!parseNMEA(nmea_string, &gps_data)) {
                logData(&gps_data);
            }
        }
    }

    return 0;
}