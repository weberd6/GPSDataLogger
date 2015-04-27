#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <p24EP512GU810.h>
#include <rtcc.h>

#include "GPSTimeDate.h"

char oldDateString[32];

char timeDateFileString[16];
char timeString[32];
char dateString[32];
char ampm[3] = "AM";

#define __RTCC_ISR    __attribute__((interrupt, shadow, no_auto_psv))

void __RTCC_ISR _RTCCInterrupt() {
    IFS3bits.RTCIF = 0;     // Clear interrupt flag
}

uint8_t dec2bcd(uint8_t n)
{
    return (n / 10 * 16 +  n % 10);
}

void InitRTCC(struct time_t time, struct date_t date) {

    RtccInitClock();
    RtccWrOn();         // Unlock and enable writing to RTCC

    rtccTimeDate TD;    // Set Time and Date
    TD.f.year = dec2bcd(date.year);
    TD.f.mon  = dec2bcd(date.month);
    TD.f.mday = dec2bcd(date.day);
    TD.f.hour = dec2bcd(getHour(time.hour));
    TD.f.min  = dec2bcd(time.min);
    TD.f.sec  = dec2bcd(time.sec);
    RtccWriteTimeDate(&TD, false);

    mRtccOn();  // Turn RTCC on
}

void SetAlarmRTCC(struct time_t time, struct date_t date) {

    mRtccAlrmDisable();     // clear ALRMEN

    rtccTimeDate ATD;
    ATD.f.year = dec2bcd(date.year);
    ATD.f.mon  = dec2bcd(date.month);
    ATD.f.mday = dec2bcd(date.day);
    ATD.f.hour = dec2bcd(time.hour);
    ATD.f.min  = dec2bcd(time.min);
    ATD.f.sec  = dec2bcd(time.sec);

    RtccWriteAlrmTimeDate(&ATD);   // Set alarm Time and Date

    RtccSetChimeEnable(true, true);

    mRtccAlrmEnable();
    RtccSetAlarmRpt(RTCC_RPT_SEC, true);

    IFS3bits.RTCIF = 0;         // clear interrupt flag
    mRtccSetInt(true);          // Enable rtcc interrupt
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
        ampm[0] = 'P';
    else
        ampm[0] = 'A';

    return hour;
}

char* getTimeString() {
    return timeString;
}

void updateTimeString(struct time_t time) {
    sprintf(timeString, "%02u:%02u:%02u %s", getHour(time.hour),
            time.min, (unsigned int)time.sec, ampm);
}

char* getDateString() {
    return dateString;
}

bool updateDateString(struct date_t date) {
    bool updated = false;

    strcpy(oldDateString, dateString);

    updated = (strcmp(oldDateString, dateString) != 0) && (date.month != 0);

    sprintf(dateString, "%s %02u, 20%02u", month(date.month),
            date.day, date.year);

    return updated;
}

char* getTimeDateFileString() {
    return timeDateFileString;
}

char* updateTimeDateFileString(struct time_t time, struct date_t date) {
    sprintf(timeDateFileString, "%02u%02u%02u.%02u%02u%02u", date.year,
            date.month, date.day, getHour(time.hour), time.min, (unsigned int)time.sec);

    return timeDateFileString;
}