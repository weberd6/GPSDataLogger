#ifndef GPS_H
#define GPS_H

#include "GPSNMEAparser.h"

enum mode_t {
    LOGGING,
    TRANSFER,
};

extern void InitializeSystem();
extern void DisplayTouchTasks();
extern bool GPSTasks();
extern void USBTTasks();
extern void startLogging();
extern void stopLogging();
extern void updateStrings(struct RMCData *gps_data);
extern void logData(struct RMCData *gps_data);

#endif