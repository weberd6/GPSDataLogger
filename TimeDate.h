#ifndef TIMEDATE_H
#define	TIMEDATE_H

#include <stdbool.h>
#include <p24EP512GU810.h>

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

#endif	/* TIMEDATE_H */

