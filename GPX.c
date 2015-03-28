#include <string.h>
#include <stdio.h>
#include <stdbool.h>

#include "./MDD File System/FSIO.h"

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

void initGPX() {
    while (!MDD_MediaDetect());
    while (!FSInit());
}

void gpsFile (const char* filename) {
    pointer = FSfopen(filename, "w");
    if (pointer == NULL)
        while(true);
}

void openGPX () {
#ifdef DEBUG
    printf("<gpx version=\"1.1\" creator=\"Doug Weber\">");
#else
#ifdef ALLOW_FSFPRINTF
    if(FSfprintf(pointer, "<gpx version=\"1.1\" creator=\"Doug Weber\">"))
        while(true);
#endif
#endif
}

void openWaypoint (unsigned int latitude, unsigned int longitude) {
#ifdef DEBUG
    printf("<wpt lat=\"%u\" lon=\"%u\">", latitude, longitude);
#else
#ifdef ALLOW_FSFPRINTF
    if(FSfprintf(pointer, "<wpt lat=\"%u\" lon=\"%u\">", latitude, longitude))
        while(true);
#endif
#endif
}

void timeDate (unsigned int time, unsigned int date) {
#ifdef DEBUG
    printf("<time></time>");
#else
#ifdef ALLOW_FSFPRINTF
    if(FSfprintf(pointer, "<time></time>"))
        while(true);
#endif
#endif
}

void openExtensions() {
#ifdef DEBUG
    printf("<extensions>");
#else
#ifdef ALLOW_FSFPRINTF
    if(FSfprintf(pointer, "<extensions>"))
        while(true);
#endif
#endif
}

void speed(double knots) {
#ifdef DEBUG
    printf("<speed>%f</speed>", knots);
#else
#ifdef ALLOW_FSFPRINTF
    if(FSfprintf(pointer,"<speed>%f</speed>", knots))
        while(true);
#endif
#endif
}

void closeExtensions() {
#ifdef DEBUG
    printf("</extensions>");
#else
#ifdef ALLOW_FSFPRINTF
    if(FSfprintf(pointer,"</extensions>"))
        while(true);
#endif
#endif
}

void closeWaypoint () {
#ifdef DEBUG
    printf("</wpt>");
#else
#ifdef ALLOW_FSFPRINTF
    if(FSfprintf(pointer,"</wpt>"))
        while(true);
#endif
#endif
}

void closeGPX () {
#ifdef DEBUG
    printf("</gpx>");
#else
#ifdef ALLOW_FSFPRINTF
    if(FSfprintf(pointer,"</gpx>"))
        while(true);
#endif
#endif
}

void logWaypoint(struct RMCData data) {
    
}