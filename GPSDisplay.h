#ifndef GPSDISPLAY_H
#define	GPSDISPLAY_H

#include "GPS.h"

#define BACKGROUND_COLOR RGBConvert(0xD4, 0xED, 0xF7)

#define TIME_TEXT           0
#define DATE_TEXT           1
#define LATLON_TEXT         2
#define LATLON_VAL_TEXT     3
#define SPEED_TEXT          4
#define SPEED_VAL_TEXT      5

#define SETTINGS_BUTTON     10
#define SS_LOGGING_BUTTON   11
#define USBT_MODE_BUTTON    12
#define LOCKSCREEN_BUTTON   13
#define LOGGING_STATUS      15
#define SDCARD_STATUS       16

#define LOGGING_SETTINGS_GB     20
#define START_TEXT              21
#define MANUAL_START_RB         22
#define TIMEDATE_START_RB       23
#define STOP_TEXT               24
#define MANUAL_STOP_RB          25
#define TIMEDATE_STOP_RB        26
#define LOG_INTERVAL_TEXT       27
#define LOG_INTERVAL_EDITBOX    28
#define LOGINTERVAL_UP_BUTTON   29
#define LOGINTERVAL_DOWN_BUTTON 30

#define APPLY_BUTTON            35
#define CANCEL_BUTTON           36

enum screen_t {
    MAIN,
    LOG_SETTINGS,
    TRANSITION,
};

extern enum screen_t screen;
extern bool screen_changed;
extern enum screen_t last_screen;

extern char latlongString[64];
extern char speedString[32];

extern bool log_status_changed;
extern bool sdcard_status_changed;

extern void createGraphicsObjects();
extern void updateTimeDisplay();
extern void updateDateDisplay();
extern void updateLatLonDisplay();
extern void updateSpeedDisplay();
extern void updateModeDisplay(enum mode_t mode);
extern void updateLoggingDisplay(bool logging);
extern void updateSDCardStatusDisplay(bool sdcard_status);
extern void updateLogIntervalString(unsigned int log_interval);
extern char* getLogIntervalString();
extern void drawMainScreen();
extern void hideMainScreen();
extern void drawLogSettingsScreen();
extern void hideLogSettingsScreen();
extern void lockScreen();
extern void unlockScreen();

#endif	/* SETTINGS_H */

