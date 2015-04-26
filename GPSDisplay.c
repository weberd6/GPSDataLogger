#include <string.h>
#include <stdbool.h>
#include <stdio.h>

#include "uMedia.h"
#include "Graphics/GOL.h"

#include "Images.h"
#include "GPSTimeDate.h"
#include "GPSDisplay.h"

STATICTEXT *timeText;
STATICTEXT *dateText;
STATICTEXT *latitudeLongitudeText;
STATICTEXT *latitudeLongitudeValueText;
STATICTEXT *speedText;
STATICTEXT *speedValText;
BUTTON     *manualLogButton;
BUTTON     *settingsButton;
BUTTON     *transferButton;
BUTTON     *lockScreenButton;
PICTURE    *loggingStatus;
PICTURE    *SDCardStatus;

GROUPBOX    *settingsGB;
STATICTEXT  *ssText;
RADIOBUTTON *ssManualRB;
//RADIOBUTTON *ssTDRB;
STATICTEXT  *logIntervalText;
EDITBOX     *logInterval;
BUTTON      *logIntervalUpButton;
BUTTON      *logIntervalDownButton;
BUTTON      *applyButton;
BUTTON      *cancelButton;

EDITBOX    *dateStart;
EDITBOX    *dateStop;
RADIOBUTTON *manualRB;

enum screen_t screen;
bool screen_changed = false;
enum screen_t last_screen = MAIN;

char latlongString[64];
char speedString[32];

void createGraphicsObjects() {
    // Logging Settings
    settingsGB = GbCreate(LOGGING_SETTINGS_GB, 5, 0, 315, 235, GB_HIDE, "Logging Settings", NULL);
    ssText = StCreate(START_TEXT, 10, 25, 120, 50, ST_HIDE, "Start/Stop:", NULL);
    ssManualRB = RbCreate(MANUAL_START_RB, 20, 50, 110, 75, RB_HIDE | RB_DISABLED | RB_GROUP | RB_CHECKED, "Manual", NULL);;
//    ssTDRB = RbCreate(TIMEDATE_START_RB, 20, 75, 110, 100, RB_HIDE | RB_DISABLED, "Time/Date", NULL);
    logIntervalText = StCreate(LOG_INTERVAL_TEXT, 10, 155, 310, 180, ST_HIDE, "Log Interval:                seconds", NULL);
    logInterval = EbCreate(LOG_INTERVAL_EDITBOX, 135, 155, 185, 180, EB_HIDE | EB_RIGHT_ALIGN, "5", 4, NULL);
    logIntervalUpButton = BtnCreate(LOGINTERVAL_UP_BUTTON, 185, 155, 205, 167, 0, BTN_HIDE | BTN_DRAW, NULL, NULL, NULL);
    logIntervalDownButton = BtnCreate(LOGINTERVAL_DOWN_BUTTON, 185, 168, 205, 180, 0, BTN_HIDE | BTN_DRAW, NULL, NULL, NULL);

    applyButton = BtnCreate(APPLY_BUTTON, 15, 190, 50, 225, 0, BTN_HIDE | BTN_DISABLED, (void*)&Ok, NULL, NULL);
    cancelButton = BtnCreate(CANCEL_BUTTON, 55, 190, 90, 225, 0, BTN_HIDE | BTN_DISABLED, (void*)&Cancel, NULL, NULL);

    // Main Screen
    timeText = StCreate(TIME_TEXT, 190, 0, 320, 25, ST_DRAW, getTimeString(), NULL);
    dateText = StCreate(DATE_TEXT, 0, 0, 130, 25, ST_DRAW, getDateString(), NULL);
    latitudeLongitudeText = StCreate(LATLON_TEXT, 45,  30, 290, 55, ST_DRAW, "Latitude          Longitude", NULL);
    latitudeLongitudeValueText = StCreate(LATLON_VAL_TEXT, 42,  55, 290, 80, ST_DRAW, latlongString, NULL);
    speedText = StCreate(SPEED_TEXT, 50, 85, 290, 110, ST_DRAW, "Speed", NULL);
    speedValText = StCreate(SPEED_VAL_TEXT, 48, 110, 290, 135, ST_DRAW, speedString, NULL);
    manualLogButton = BtnCreate(SS_LOGGING_BUTTON, 160, 200, 195, 235, 0, BTN_DRAW, (void*)&Play, NULL, NULL);
    settingsButton = BtnCreate(SETTINGS_BUTTON, 200, 200, 235, 235, 0, BTN_DRAW, (void*)&Settings, NULL, NULL);
    transferButton = BtnCreate(USBT_MODE_BUTTON, 240, 200, 275, 235, 0, BTN_DRAW, (void*)&Monitor, NULL, NULL);
    lockScreenButton = BtnCreate(LOCKSCREEN_BUTTON, 280, 200, 315, 235, 0, BTN_DRAW,(void*)&Lock, NULL, NULL);
    loggingStatus = PictCreate(LOGGING_STATUS, 5, 203, 37, 235, PICT_DRAW, 1,(void*)&Close, NULL);
    SDCardStatus = PictCreate(SDCARD_STATUS, 42, 203, 74, 235, PICT_HIDE, 1,(void*)&Warning, NULL);

    screen = MAIN;
}

void updateLogIntervalString(unsigned int log_interval) {
    snprintf(EbGetText(logInterval), 4, "%u", log_interval);
    SetState(logInterval, EB_DRAW);
}

char* getLogIntervalString() {
    return EbGetText(logInterval);
}

void updateTimeDisplay() {
    if (screen == MAIN) {
        SetState(timeText, ST_UPDATE);
    }
}

void updateDateDisplay() {
    if (screen == MAIN) {
        SetState(dateText, ST_UPDATE);
    }
}

void updateLatLonDisplay() {
    if (screen == MAIN) {
        SetState(latitudeLongitudeValueText, ST_UPDATE);
    }
}

void updateSpeedDisplay() {
    if (screen == MAIN) {
        SetState(speedValText, ST_UPDATE);
    }
}

void updateModeDisplay(enum mode_t mode) {
    if(mode == LOGGING) {
        transferButton->pBitmap = (void*)&Monitor;
        SetState(manualLogButton, BTN_DRAW);
        ClrState(manualLogButton, BTN_DISABLED);
    } else if (mode == TRANSFER) {
        transferButton->pBitmap = (void*)&Save_data;
        SetState(manualLogButton, BTN_HIDE | BTN_DISABLED);
    }
    SetState(transferButton, BTN_DRAW);
}

void updateLoggingDisplay(bool logging) {
    if (logging) {
        manualLogButton->pBitmap = (void*)&Stop;
        loggingStatus->pBitmap = (void*)&Ok;
    } else {
        manualLogButton->pBitmap = (void*)&Play;
        loggingStatus->pBitmap = (void*)&Close;
    }
    SetState(manualLogButton, BTN_DRAW);
    SetState(loggingStatus, PICT_DRAW);
}

void updateSDCardStatusDisplay(bool sdcard_status) {
    if (sdcard_status) {
        SetState(SDCardStatus, PICT_HIDE);
    } else {
        SetState(SDCardStatus, PICT_DRAW);
    }
}

void lockScreen() {
    SetState(manualLogButton, BTN_HIDE | BTN_DISABLED);
    SetState(settingsButton, BTN_HIDE | BTN_DISABLED);
    SetState(transferButton, BTN_HIDE | BTN_DISABLED);

    lockScreenButton->pBitmap = (void*)&Unlock;
    SetState(lockScreenButton, BTN_DRAW);
}

void unlockScreen() {
    SetState(manualLogButton, BTN_DRAW);
    SetState(settingsButton, BTN_DRAW);
    SetState(transferButton, BTN_DRAW);

    ClrState(manualLogButton, BTN_DISABLED);
    ClrState(settingsButton, BTN_DISABLED);
    ClrState(transferButton, BTN_DISABLED);

    lockScreenButton->pBitmap = (void*)&Lock;
    SetState(lockScreenButton, BTN_DRAW);
}

void drawMainScreen() {
    SetState(timeText, ST_DRAW);
    SetState(dateText, ST_DRAW);
    SetState(latitudeLongitudeText, ST_DRAW);
    SetState(latitudeLongitudeValueText, ST_DRAW);
    SetState(speedText, ST_DRAW);
    SetState(speedValText, ST_DRAW);
    SetState(manualLogButton, BTN_DRAW);
    SetState(settingsButton, BTN_DRAW);
    SetState(transferButton, BTN_DRAW);
    SetState(lockScreenButton, BTN_DRAW);

    ClrState(manualLogButton, BTN_DISABLED);
    ClrState(settingsButton, BTN_DISABLED);
    ClrState(transferButton, BTN_DISABLED);
    ClrState(lockScreenButton, BTN_DISABLED);

    sdcard_status_changed = true;
    log_status_changed = true;
}

void hideMainScreen() {
    SetState(timeText, ST_HIDE);
    SetState(dateText, ST_HIDE);
    SetState(latitudeLongitudeText, ST_HIDE);
    SetState(latitudeLongitudeValueText, ST_HIDE);
    SetState(speedText, ST_HIDE);
    SetState(speedValText, ST_HIDE);
    SetState(manualLogButton, BTN_HIDE | BTN_DISABLED);
    SetState(settingsButton, BTN_HIDE | BTN_DISABLED);
    SetState(transferButton, BTN_HIDE | BTN_DISABLED);
    SetState(lockScreenButton, BTN_HIDE | BTN_DISABLED);
    SetState(loggingStatus, PICT_HIDE);
    SetState(SDCardStatus, PICT_HIDE);
}

void drawLogSettingsScreen() {
    SetState(settingsGB, GB_DRAW);
    SetState(ssText, ST_DRAW);
    SetState(ssManualRB, RB_DRAW);
//    SetState(ssTDRB, RB_DRAW);
    SetState(logInterval, EB_DRAW);
    SetState(logIntervalText, ST_DRAW);
    SetState(applyButton, BTN_DRAW);
    SetState(cancelButton, BTN_DRAW);
    SetState(logIntervalUpButton, BTN_DRAW);
    SetState(logIntervalDownButton, BTN_DRAW);

    ClrState(applyButton, BTN_DISABLED);
    ClrState(cancelButton, BTN_DISABLED);
    ClrState(logIntervalUpButton, BTN_DISABLED);
    ClrState(logIntervalDownButton, BTN_DISABLED);
    ClrState(ssManualRB, RB_DISABLED);
//    ClrState(ssTDRB, RB_DISABLED);
    ClrState(logInterval, EB_DISABLED);
}

void hideLogSettingsScreen() {
    SetState(settingsGB, GB_HIDE);
    SetState(ssText, ST_HIDE);
    SetState(ssManualRB, RB_HIDE | RB_DISABLED);
//    SetState(ssTDRB, RB_HIDE | RB_DISABLED);
    SetState(logIntervalText, ST_HIDE);
    SetState(logInterval, EB_HIDE | EB_DISABLED);
    SetState(applyButton, BTN_HIDE | BTN_DISABLED);
    SetState(cancelButton, BTN_HIDE | BTN_DISABLED);
    SetState(logIntervalUpButton, BTN_HIDE | BTN_DISABLED);
    SetState(logIntervalDownButton, BTN_HIDE | BTN_DISABLED);
}