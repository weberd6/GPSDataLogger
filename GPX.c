#include <string.h>
#include <stdio.h>

#include "GPX.h"

void writeSD(int fd, const char* string) {
    
}

void openGPX (int fd) {
    writeSD(fd, "<gpx version=\"1.1\" creator=\"Doug Weber\">");
}

void openWaypoint (int fd, unsigned int latitude, unsigned int longitude) {
    char string[64];
    sprintf(string, "<wpt lat=\"%u\" lon=\"%u\">", latitude, longitude);
    writeSD(fd, string);
}

void timeDate (int fd, unsigned int time, unsigned int date) {
    writeSD(fd, "<time>");
    
    writeSD(fd, "</time>");
}

void openExtensions(int fd) {
    writeSD(fd, "<extensions>");
}

void speed(int fd, double knots) {
    char string[16];
    sprintf(string, "%f", knots);
    writeSD(fd, "<speed>");
    writeSD(fd, string);
    writeSD(fd, "</speed>");
}

void closeExtensions(int fd) {
    writeSD(fd, "</extensions>");
}

void closeWaypoint (int fd) {
    writeSD(fd, "</wpt>");
}

void closeGPX (int fd) {
    writeSD(fd, "</gpx>");
}