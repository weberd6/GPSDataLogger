#include <string.h>
#include <stdbool.h>
#include <stdio.h>

#include "PICConfig.h"
#include "uMedia.h"

#include "GPS_uart.h"
//#include "GPS_i2c.h"
#include "NMEAparser.h"
#include "GPX.h"

char file[32];
int fileID = 0;
bool logging = false;
char timeDateString[32];
char s[64];

char* nextFilename() {
    sprintf(file, "gps_data%d.gpx", fileID++);
    return file;
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
//    if (!logging)
//        startLogging();
//    logWaypoint(gps_data);
    sprintf(timeDateString, "%02u-%02u-%02u\
                                %02u:%02u:%02u",
            gps_data->date.month, gps_data->date.day, gps_data->date.year,
            gps_data->fix_time.hour, gps_data->fix_time.min,
            (unsigned int)gps_data->fix_time.sec);
    OutTextXY(0, 0, timeDateString);
}

int main() {
    char *nmea_string;
    struct RMCData gps_data;
    memset(&gps_data, 0, sizeof(struct RMCData));

    uMBInit();
    InitGPS();
    //InitGPXFS();
    InitGraph();
    TickInit(1);

    TouchHardwareInit(NULL);
    TouchCalculateCalPoints();

    SetColor(BLUE);
    ClearDevice();
    DisplayBacklightOn();

    SetColor(BLACK);
    Circle(20, 220, 10);
    Circle(20, 220, 9);
    Circle(20, 220, 8);

    SetColor(BRIGHTRED);
    FillCircle(20, 220, 9);

    SetFont((void*)&GOLFontDefault);
    SetColor(WHITE);

    OutTextXY(40, 205, "Logging OFF");

    while (true) {
        while (!parse_buf_ready);
        parse_buf_ready = false;
        nmea_string = strtok(parse_buf, "$");
        if (nmea_string != NULL) {
            if (!parseNMEA(nmea_string, &gps_data)) {
                logData(&gps_data);
            }
        }

        if ((TouchGetX() != -1) && (TouchGetY() != -1)) {
            sprintf(s, "%d %d", TouchGetRawX(), TouchGetRawY());
            OutTextXY(100, 100, s);
        }
    }

    return 0;
}