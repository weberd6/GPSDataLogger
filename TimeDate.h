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

extern char* month(unsigned int m);
extern unsigned int getHour(unsigned int utc_hour);
extern char* getTimeString();
extern char* updateTimeString(struct time_t time);
extern char* getDateString();
extern char* updateDateString(struct date_t date);
extern char* getTimeDateFileString();
extern char* updateTimeDateFileString(struct time_t time, struct date_t date);

#endif	/* TIMEDATE_H */

