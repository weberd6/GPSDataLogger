#include <string.h>
#include <stdio.h>
#include <stdbool.h>

#include "GPX.h"

FSFILE *pointer;
const char enable_i2c_string [] = { 0xB5, 0x62, 0x06, 0x00, // Header and ID
                                    0x00,                   // portID
                                    0x00,                   // reserved0
                                    0x00, 0x00,             // txReady
                                    0x00, 0x00, 0x00, 0x84, // mode
                                    0x00, 0x00, 0x00, 0x00, // reserved3
                                    0x00, 0x03,             // inProtoMask
                                    0x00, 0x02,             // outProtoMask
                                    0x00, 0x00,             // reserved4
                                    0x00, 0x00 };           // reserved5

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

void openGPX () {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer, "<gpx version=\"1.1\" creator=\"Doug Weber\">\n");
#endif
}

void openWaypoint (double latitude, double longitude) {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer, "\t<wpt lat=\"%f\" lon=\"%f\">\n", latitude, longitude);
#endif
}

void timeDate (struct time_t time, struct date_t date) {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer, "\t\t<time></time>\n");
#endif
}

void openExtensions() {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer, "\t\t<extensions>\n");
#endif
}

void speed(double knots) {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"\t\t\t<speed>%f</speed>\n", knots);
#endif
}

void closeExtensions() {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"\t\t</extensions>\n");
#endif
}

void closeWaypoint () {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"\t</wpt>\n\n");
#endif
}

void closeGPX () {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"</gpx>\n");
#endif
}

FSFILE * gpsFileOpen (const char* filename) {
    pointer = FSfopen(filename, "w");
    openGPX();
    return pointer;
}

void gpsFileClose () {
    closeGPX();

    if (FSfclose(pointer))
        while(true);
}

void logWaypoint(struct RMCData *data) {
    openWaypoint (data->latitude, data->longitude);
    timeDate (data->fix_time, data->date);
    openExtensions();
    speed(data->speed_knots);
    closeExtensions();
    closeWaypoint ();
}