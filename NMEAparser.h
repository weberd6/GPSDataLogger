#ifndef NMEAPARSER_H
#define	NMEAPARSER_H

#ifdef	__cplusplus
extern "C" {
#endif

enum direction_t {
    NORTH,
    EAST,
    SOUTH,
    WEST,
};

struct date_t {
    unsigned char month;
    unsigned char day;
    unsigned short year;
};

struct time_t {
    unsigned char hour;
    unsigned char min;
    double sec;
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

#ifdef	__cplusplus
}
#endif

#endif	/* NMEAPARSER_H */

