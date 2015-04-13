#include <string.h>
#include <stdbool.h>
#include <stdio.h>

#include "PICConfig.h"
#include "uMedia.h"
#include "USB/usb.h"
#include "Graphics/GOL.h"

#include "GPS_uart.h"
//#include "GPS_i2c.h"
#include "NMEAparser.h"
#include "GPX.h"
#include "USB/usb_function_msd.h"
#include "TimeDate.h"

#define BACKGROUND_COLOR RGBConvert(0, 0, 64)

bool logging = false;
char latlongString[64];
char speedString[32];
BOOL initResults;
FSFILE *logFile;
BUTTON *settingsButton;

void InitializeSystem();
void logData(struct RMCData *gps_data);

int main() {
    char *nmea_string;
    struct RMCData gps_data;
    memset(&gps_data, 0, sizeof(struct RMCData));
    GOL_MSG msg;

    InitializeSystem();

    SetColor(LIGHTGRAY);
    OutTextXY(30, 60, "Latitude              Longitude");
    OutTextXY(20, 175, "Mode: Manual");

    while (true) {
        // Process user input
        if (GOLDraw()) {
            TouchGetMsg(&msg);
            GOLMsg(&msg);
        }

        // Log GPS message if ready
        if (parse_buf_ready) {
            parse_buf_ready = false;
            nmea_string = strtok(parse_buf, "$");
            if (nmea_string != NULL) {
                if (!parseNMEA(nmea_string, &gps_data)) {
                    logData(&gps_data);
                }
            }
        }

        // USB tasks
        if(USBDeviceState < CONFIGURED_STATE) continue;
        MSDTasks();
    }

    return 0;
}

void InitializeSystem() {
#ifdef _SFLASH
    DRV_SPI_INIT_DATA spi_config = SPI_FLASH_CONFIG;
#endif

    uMBInit();
    InitGPS();
    InitGraph();
    TickInit(1);
    GOLInit();

    initResults = FSInit();
    //USBDeviceInit();
    //USBDeviceAttach();

#ifdef _SFLASH
    SST25_CS_LAT = 1;
    SST25_CS_TRIS = 0;
    FlashInit( &spi_config);
#endif
    DisplayBacklightOn();
    TouchInit(NVMWrite, NVMRead, NVMSectorErase, NULL);
    SetColor(BACKGROUND_COLOR);
    ClearDevice();

    SetColor(BLACK);
    FillCircle(20, 220, 11);
    SetColor(BRIGHTRED);
    FillCircle(20, 220, 9);
    SetFont((void*)&GOLFontDefault);
    OutTextXY(40, 205, "Logging OFF");

    settingsButton =  BtnCreate(  3,                // Unique ID
                                175,                // left
                                190,                // top
                                310,                // right
                                230,                // bottom
                                0,                  // radius
                                BTN_DRAW,           // state
                                NULL,               // no bitmap
                                "Start",         // text
                                NULL                // default style scheme
                              );
}

void startLogging() {
    char file[32];

    logging = true;

    // Change status
    SetColor(BACKGROUND_COLOR);
    OutTextXY(40, 205, "Logging OFF");
    SetColor(BRIGHTGREEN);
    OutTextXY(40, 205, "Logging ON");

    // Show green dot
    FillCircle(20, 220, 9);

    BtnSetText(settingsButton, "Stop");

    sprintf(file, "GPSData%s.GPX", getTimeDateFileString());
    logFile = gpsFileOpen(file);
}

void stopLogging() {
    logging = false;

    // Change status
    SetColor(BACKGROUND_COLOR);
    OutTextXY(40, 205, "Logging ON");
    SetColor(BRIGHTRED);
    OutTextXY(40, 205, "Logging OFF");

    // Show red dot
    FillCircle(20, 220, 9);

    BtnSetText(settingsButton, "Start");

    if (initResults) {
        gpsFileClose();
    }
}

void logData(struct RMCData *gps_data) {
    char oldLatlonString[64];
    char oldDateString[32];
    char oldSpeedString[32];

    updateTimeDateFileString(gps_data->fix_time, gps_data->date);

    // Time
    SetColor(BACKGROUND_COLOR);
    OutTextXY(185, 0, getTimeString());
    SetColor(WHITE);
    OutTextXY(185, 0, updateTimeString(gps_data->fix_time));

    // Date
    strcpy(oldDateString, getDateString());
    if ((strcmp(oldDateString, updateDateString(gps_data->date)) != 0)
            && (gps_data->date.month != 0)) {
        SetColor(BACKGROUND_COLOR);
        OutTextXY(0,0, oldDateString);
        SetColor(WHITE);
        OutTextXY(0,0, getDateString());
    }

    // Lat, long
    strcpy(oldLatlonString, latlongString);
    sprintf(latlongString, "%02.4f\"                %02.4f\"    ",
              gps_data->latitude, gps_data->longitude);
    if (strcmp(oldLatlonString, latlongString) != 0) {
        SetColor(BACKGROUND_COLOR);
        OutTextXY(30, 90, oldLatlonString);
        SetColor(WHITE);
        OutTextXY(30, 90, latlongString);
    }

    strcpy(oldSpeedString, speedString);
    sprintf(speedString, "Speed: %.1f mph", gps_data->speed_knots * 1.15078);
    if (strcmp(oldSpeedString, speedString) != 0) {
        SetColor(BACKGROUND_COLOR);
        OutTextXY(90, 130, oldSpeedString);
        SetColor(WHITE);
        OutTextXY(90, 130, speedString);
    }

    if (MDD_SDSPI_MediaDetect() == FALSE) {
        OutTextXY(30, 30, "Error: SD Card not detected.");
        initResults = FALSE;
        stopLogging();
        logFile = NULL;
    } else {
        SetColor(BACKGROUND_COLOR);
        OutTextXY(30, 30, "Error: SD Card not detected.");
    }

    if (!logging)
        return;

    // Resilient
    if (initResults == TRUE) {
        if(logFile != NULL) {
            logWaypoint(gps_data);
        }
    } else {
        if(MDD_SDSPI_MediaDetect() == TRUE) {
            initResults = FSInit();
        }
    }
}

WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg) {
    switch (pMsg->type) {
        case TYPE_TOUCHSCREEN:
            switch (pMsg->uiEvent) {
                case EVENT_PRESS:
                    if (pObj->ID == 3) {
                        if (logging) {
                            stopLogging();
                        } else {
                            startLogging();
                        }
                    }
                    break;
                default:
                    break;
            }
            break;
        default:
            break;
    }
    return 1;
}

WORD GOLDrawCallback() {
    return 1;
}