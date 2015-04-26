#include <string.h>
#include <stdio.h>
#include <stdbool.h>

#include "GPSGPX.h"

FSFILE *pointer;

void openGPX () {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer, "<gpx version=\"1.1\" creator=\"Doug Weber\">\r\n");
#endif
}

void openWaypoint (double latitude, double longitude) {
#ifdef ALLOW_FSFPRINTF
    char string[64];
    sprintf(string, "\t<wpt lat=\"%02.5f\" lon=\"%02.5f\">\r\n", latitude, longitude);
    FSfprintf(pointer, string);
#endif
}

void timeDate (struct time_t time, struct date_t date) {
#ifdef ALLOW_FSFPRINTF
    char string_ISO8601[64];
    sprintf(string_ISO8601, "20%02u-%02u-%02uT%02u:%02u:%02uZ", date.year,
            date.month, date.day, time.hour, time.min, (unsigned int)time.sec);
    FSfprintf(pointer, "\t\t<time>%s</time>\r\n", string_ISO8601);
#endif
}

void openExtensions() {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer, "\t\t<extensions>\r\n");
#endif
}

void speed(double knots) {
#ifdef ALLOW_FSFPRINTF
    double mph;
    char string[64];

    mph = knots * 1.15078;
    sprintf(string, "\t\t\t<speed>%02.3f</speed>\r\n", mph);
    FSfprintf(pointer, string);
#endif
}

void closeExtensions() {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"\t\t</extensions>\r\n");
#endif
}

void closeWaypoint () {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"\t</wpt>\r\n\r\n");
#endif
}

void closeGPX () {
#ifdef ALLOW_FSFPRINTF
    FSfprintf(pointer,"</gpx>\r\n");
#endif
}

FSFILE * gpsFileOpen (const char* filename) {
    pointer = FSfopen(filename, "w");
    if (pointer)
        openGPX();
    return pointer;
}

void gpsFileClose () {
    closeGPX();
    FSfclose(pointer);
}

void logWaypoint(struct RMCData *data) {
    openWaypoint (data->latitude, data->longitude);
    timeDate (data->fix_time, data->date);
    openExtensions();
    speed(data->speed_knots);
    closeExtensions();
    closeWaypoint ();
}

