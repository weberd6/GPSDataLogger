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

enum status_t {
    ACTIVE,
    VOID_,
};

struct coordinate_t {
    unsigned short degrees;
    unsigned short minutes;
    enum direction_t direction;
};

struct RMCData {
    unsigned int fix_time;
    enum status_t status;
    struct coordinate_t latitude;
    struct coordinate_t longitude;
    double speed_knots;
    unsigned int date;
    char checksum; // 8-bit XOR of all characters between $ and *
};

enum sentence_type_t {
    GPRMC,
    OTHER,
};

extern enum sentence_type_t SentenceType(char* string);
extern struct RMCData parseNMEA(char* string);

#ifdef	__cplusplus
}
#endif

#endif	/* NMEAPARSER_H */

