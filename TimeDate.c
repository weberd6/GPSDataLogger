#include <stdlib.h>
#include <stdio.h>

#include <p24EP512GU810.h>

#include "TimeDate.h"

char timeDateFileString[16];
char timeString[32];
char dateString[32];
char meridian[3] = "AM";

//void _ISR _RTCCInterrupt() {

//}

void InitRTCC() {

}

char* month(unsigned int m) {
    char* mon = NULL;
    switch(m) {
        case 1:
            mon = "January";
            break;
        case 2:
            mon = "February";
            break;
        case 3:
            mon = "March";
            break;
        case 4:
            mon = "April";
            break;
        case 5:
            mon = "May";
            break;
        case 6:
            mon = "June";
            break;
        case 7:
            mon = "July";
            break;
        case 8:
            mon = "August";
            break;
        case 9:
            mon = "September";
            break;
        case 10:
            mon = "October";
            break;
        case 11:
            mon = "November";
            break;
        case 12:
            mon = "December";
            break;
    }
    return mon;
}

unsigned int getHour(unsigned int utc_hour) {
    unsigned int hour = utc_hour;

    if (utc_hour > 12) {
        hour -= 12;
    }

    if (hour > 4) {
        hour -= 4;
    } else {
        hour = hour + 12 - 4;
    }

    if ((utc_hour - 4) > 11)
        meridian[0] = 'P';
    else
        meridian[0] = 'A';

    return hour;
}

char* getTimeString() {
    return timeString;
}

char* updateTimeString(struct time_t time) {
    sprintf(timeString, "%02u:%02u:%02u %s", getHour(time.hour),
            time.min, (unsigned int)time.sec, meridian);

    return timeString;
}

char* getDateString() {
    return dateString;
}

char* updateDateString(struct date_t date) {
    sprintf(dateString, "%s %02u, 20%02u", month(date.month),
            date.day, date.year);

    return dateString;
}

char* getTimeDateFileString() {
    return timeDateFileString;
}

char* updateTimeDateFileString(struct time_t time, struct date_t date) {
    sprintf(timeDateFileString, "%02u%02u%02u.%02u%02u%02u", date.year,
            date.month, date.day, time.hour, time.min, (unsigned int)time.sec);

    return timeDateFileString;
}