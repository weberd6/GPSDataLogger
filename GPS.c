#include <string.h>
#include <stdbool.h>
#include <stdio.h>

#include "uMedia.h"
#include "USB/usb.h"
#include "USB/usb_function_msd.h"
#include "Graphics/GOL.h"

#include "GPS.h"
#include "GPSuart.h"
#include "GPSNMEAparser.h"
#include "GPSGPX.h"
#include "GPSDisplay.h"
#include "Images.h"

FSFILE *logFile;

char oldLatlonString[64];
char oldSpeedString[32];

enum mode_t mode = LOGGING;
bool mode_changed = false;
bool locked = false;
bool lock_changed = false;
bool logging = false;
bool log_status_changed = false;
bool time_changed = false;
bool date_changed = false;
bool latlong_changed = false;
bool speed_changed = false;
bool sdcard_status = false;
bool sdcard_status_changed = false;
unsigned int log_interval;
unsigned int log_interval_count;

void InitializeSystem() {
    DRV_SPI_INIT_DATA spi_config = SPI_FLASH_CONFIG;

    uMBInit();
    InitGPS();
    InitGraph();
    TickInit(1);    // Timer3 init for touch screen detection
    GOLInit();

    // Wait to get time/date so RTCC can be initialized
    struct RMCData gps_data;
    memset(&gps_data, 0, sizeof(struct RMCData));
    while(!GPSTasks(&gps_data));
    InitRTCC(gps_data.fix_time, gps_data.date);

    sdcard_status = FSInit();
    USBDeviceInit();

    SST25_CS_LAT = 1;
    SST25_CS_TRIS = 0;
    FlashInit(&spi_config);

    TouchInit(NVMWrite, NVMRead, NVMSectorErase, NULL);

    log_interval = 5;
    updateLogIntervalString(5);
    log_interval_count = 5;

    DisplayBacklightOn();
    SetColor(BACKGROUND_COLOR);
    ClearDevice();
    SetFont((void*)&GOLFontDefault);

    createGraphicsObjects();
}

void DisplayTouchTasks() {
    GOL_MSG msg;

    if (GOLDraw()) {
        TouchGetMsg(&msg);
        GOLMsg(&msg);
    }
}

bool GPSTasks() {
    char* nmea_string;
    bool valid_data = false;
    struct RMCData gps_data;
    memset(&gps_data, 0, sizeof(struct RMCData));

    if (parse_buf_ready) {
        parse_buf_ready = false;
        nmea_string = strtok(parse_buf, "$");
        if (nmea_string != NULL) {
            if (!parseNMEA(nmea_string, &gps_data)) {
                valid_data = true;
                updateStrings(&gps_data);
                log_interval_count--;
                if (!log_interval_count) {
                    logData(&gps_data);
                    log_interval_count = log_interval;
                }
            }
        }
    }

    return valid_data;
}

void USBTTasks() {
    if (mode == TRANSFER) {
        if (USBGetDeviceState() == DETACHED_STATE) {
            USBDeviceAttach();
        } else if(USBGetDeviceState() < CONFIGURED_STATE) {
            return;
        } else {
            MSDTasks();
        }
    }
}

void startLogging() {
    char file[32];

    sprintf(file, "GPSData%s.GPX", getTimeDateFileString());
    logFile = gpsFileOpen(file);
}

void stopLogging() {
    if (sdcard_status && logFile != NULL) {
        gpsFileClose();
    }
}

void updateStrings(struct RMCData *gps_data) {
    updateTimeDateFileString(gps_data->fix_time, gps_data->date);

    // Time
    updateTimeString(gps_data->fix_time);
    time_changed = true;

    // Date
    if (updateDateString(gps_data->date))
        date_changed = true;

    // Lat, long
    strcpy(oldLatlonString, latlongString);
    sprintf(latlongString, "%+02.4f\"         %+02.4f\"    ", gps_data->latitude, gps_data->longitude);
    if (strcmp(oldLatlonString, latlongString) != 0)
        latlong_changed = true;

    strcpy(oldSpeedString, speedString);
    sprintf(speedString, "%02lu mph", (long unsigned int)(gps_data->speed_knots * 1.15078));
    if (strcmp(oldSpeedString, speedString) != 0)
        speed_changed = true;
}

void logData(struct RMCData *gps_data) {
    if (!MDD_SDSPI_MediaDetect() && sdcard_status) {
        sdcard_status = FALSE;
        stopLogging();
        logFile = NULL;
        sdcard_status_changed = true;
    } else if (MDD_SDSPI_MediaDetect() && !sdcard_status) {
        sdcard_status = FSInit();
        if (sdcard_status)
            sdcard_status_changed = true;
    }

    if (sdcard_status && logging) {
        if(logFile != NULL) {
            logWaypoint(gps_data);
        }
    }
}

WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg) {
    unsigned int temp;

    switch(GetObjID(pObj)) {
        case SS_LOGGING_BUTTON:
            if (objMsg == BTN_MSG_RELEASED) {
                if (logging) {
                    logging = false;
                    stopLogging();
                } else {
                    logging = true;
                    startLogging();
                }
                log_status_changed = true;
            }
            break;
        case SETTINGS_BUTTON:
            if (objMsg == BTN_MSG_RELEASED) {
                screen = TRANSITION;
                screen_changed = true;
            }
            break;
        case APPLY_BUTTON:
            if (objMsg == BTN_MSG_RELEASED) {
                log_interval = atoi(getLogIntervalString());
                screen = TRANSITION;
                screen_changed = true;
            }
            break;
        case CANCEL_BUTTON:
            if (objMsg == BTN_MSG_RELEASED) {
                screen = TRANSITION;
                screen_changed = true;
            }
            break;
        case USBT_MODE_BUTTON:
            if (objMsg == BTN_MSG_RELEASED) {
                if(mode == LOGGING) {
                    if(logging)
                        stopLogging();
                    mode = TRANSFER;
                } else if (mode == TRANSFER) {
                    USBSoftDetach();
                    mode = LOGGING;
                }
                mode_changed = true;
                log_status_changed = true;
            }
            break;
        case LOCKSCREEN_BUTTON:
            if (objMsg == BTN_MSG_RELEASED) {
                if (locked) {
                    locked = false;
                } else {
                    locked = true;
                }
                lock_changed = true;
            }
            break;
        case LOGINTERVAL_UP_BUTTON:
            if (objMsg == BTN_MSG_RELEASED) {
                temp = atoi(getLogIntervalString());
                updateLogIntervalString(++temp);
            }
            break;
        case LOGINTERVAL_DOWN_BUTTON:
            if (objMsg == BTN_MSG_RELEASED) {
                temp = atoi(getLogIntervalString());
                if (temp > 1) {
                    updateLogIntervalString(--temp);
                }
            }
            break;
        default:
            break;
    }
    return 1;
}

WORD GOLDrawCallback() {
    if (screen_changed) {
        switch(screen) {
            case MAIN:
                drawMainScreen();
                screen_changed = false;
                last_screen = MAIN;
                break;
            case LOG_SETTINGS:
                drawLogSettingsScreen();
                screen_changed = false;
                last_screen = LOG_SETTINGS;
                break;
            case TRANSITION:
                if (last_screen == MAIN) {
                    hideMainScreen();
                    screen = LOG_SETTINGS;
                } else if (last_screen == LOG_SETTINGS) {
                    hideLogSettingsScreen();
                    screen = MAIN;
                }
                break;
            default:
                break;
        }
    }

    if (mode_changed) {
        mode_changed = false;
        updateModeDisplay(mode);
    }

    if (lock_changed) {
        lock_changed = false;
        if (locked) {
            lockScreen();
        } else {
            unlockScreen();
        }
    }

    if (log_status_changed) {
        log_status_changed = false;
        updateLoggingDisplay(logging);
    }

    if (time_changed) {
        time_changed = false;
        updateTimeDisplay();
    }

    if (date_changed) {
        time_changed = false;
        updateDateDisplay();
    }

    if (latlong_changed) {
        latlong_changed = false;
        updateLatLonDisplay();
    }

    if (speed_changed) {
        speed_changed = false;
        updateSpeedDisplay();
    }

    if (sdcard_status_changed) {
        sdcard_status_changed = false;
        updateSDCardStatusDisplay(sdcard_status);
    }

    return 1;
}