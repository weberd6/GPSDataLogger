#ifndef TIMEDATE_H
#define	TIMEDATE_H

#include <stdbool.h>
#include <p24EP512GU810.h>

struct date_t {
    unsigned char month;
    unsigned char day;
    unsigned char year;
};

struct time_t {
    unsigned char hour;
    unsigned char min;
    unsigned char secc;
    double sec;
};

extern void InitRTCC(struct time_t time, struct date_t date);
extern void SetAlarmRTCC(struct time_t time, struct date_t date);

extern char* month(unsigned int m);
extern unsigned int getHour(unsigned int utc_hour);
extern char* getTimeString();
extern void  updateTimeString(struct time_t time);
extern char* getDateString();
extern bool  updateDateString(struct date_t date);
extern char* getTimeDateFileString();
extern char* updateTimeDateFileString(struct time_t time, struct date_t date);

#endif	/* TIMEDATE_H */

