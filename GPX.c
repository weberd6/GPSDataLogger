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
#ifdef DEBUG
    printf("<gpx version=\"1.1\" creator=\"Doug Weber\">");
#else
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer, "<gpx version=\"1.1\" creator=\"Doug Weber\">");
#endif
#endif
}

void openWaypoint (double latitude, double longitude) {
#ifdef DEBUG
    printf("<wpt lat=\"%u\" lon=\"%u\">", latitude, longitude);
#else
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer, "\t<wpt lat=\"%f\" lon=\"%f\">", latitude, longitude);
#endif
#endif
}

void timeDate (struct time_t time, struct date_t date) {
#ifdef DEBUG
    printf("<time></time>");
#else
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer, "\t\t<time></time>");
#endif
#endif
}

void openExtensions() {
#ifdef DEBUG
    printf("<extensions>");
#else
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer, "\t\t<extensions>");
#endif
#endif
}

void speed(double knots) {
#ifdef DEBUG
    printf("<speed>%f</speed>", knots);
#else
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"\t\t\t<speed>%f</speed>", knots);
#endif
#endif
}

void closeExtensions() {
#ifdef DEBUG
    printf("</extensions>");
#else
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"<\t\t/extensions>");
#endif
#endif
}

void closeWaypoint () {
#ifdef DEBUG
    printf("</wpt>");
#else
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"<\t/wpt>");
#endif
#endif
}

void closeGPX () {
#ifdef DEBUG
    printf("</gpx>");
#else
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"</gpx>");
#endif
#endif
}

FSFILE * gpsFileOpen (const char* filename) {
    pointer = FSfopen(filename, "w");
    openGPX();
    return pointer;
}

void gpsFileClose () {
    if (FSfclose(pointer))
        while(true);

    closeGPX();
}

void logWaypoint(struct RMCData *data) {
    openWaypoint (data->latitude, data->longitude);
    timeDate (data->fix_time, data->date);
    openExtensions();
    speed(data->speed_knots);
    closeExtensions();
    closeWaypoint ();
}