#ifndef NMEAPARSER_H
#define	NMEAPARSER_H

#include "TimeDate.h"

enum direction_t {
    NORTH,
    EAST,
    SOUTH,
    WEST,
};

struct RMCData {
    struct time_t fix_time;
    char status;
    double latitude;
    double longitude;
    double speed_knots;
    struct date_t date;
    double mag_var;
    char checksum; // 8-bit XOR of all characters between $ and *
};

enum sentence_type_t {
    GPRMC,
    OTHER,
};

extern enum sentence_type_t SentenceType(char* string);
extern int parseNMEA(char* string, struct RMCData *data);

#endif	/* NMEAPARSER_H */

