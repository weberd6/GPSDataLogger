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

#define BACKGROUND_COLOR RGBConvert(0, 0, 64)

char file[32];
int fileID = 0;
bool logging = false;
char timeString[32];
char dateString[32];
char latlong_string[64];
char meridian[3] = "AM";
char s[64];
BOOL initResults;
FSFILE *logFile;
BUTTON *startStopButton;

void InitializeSystem();
void logData(struct RMCData *gps_data);

int main() {
    char *nmea_string;
    struct RMCData gps_data;
    memset(&gps_data, 0, sizeof(struct RMCData));
    GOL_MSG msg;

    InitializeSystem();

    SetColor(LIGHTGRAY);
    OutTextXY(30, 60, "Latitude\
              Longitude");

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

    startStopButton = BtnCreate(  1,                // Unique ID
                                190,                // left
                                190,                // top
                                310,                // right
                                230,                // bottom
                                0,                  // radius
                                BTN_DRAW,           // state
                                NULL,               // no bitmap
                                "Start",            // text
                                NULL                // default style scheme
                              );
}

void startLogging() {
    logging = true;

    // Change status
    SetColor(BACKGROUND_COLOR);
    OutTextXY(40, 205, "Logging OFF");
    SetColor(BRIGHTGREEN);
    OutTextXY(40, 205, "Logging ON");

    // Show green dot
    FillCircle(20, 220, 9);

    startStopButton->pText = "Stop";

    //sprintf(file, "gps_data%dg.gpx", fileID++);
    logFile = gpsFileOpen("gps_data.gpx");
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

    startStopButton->pText = "Start";

    if (initResults) {
        gpsFileClose();
    }
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

void logData(struct RMCData *gps_data) {
    char oldlatlon_string[64];
    char oldDateString[32];

    if ((gps_data->fix_time.hour - 4) > 11) {
        meridian[0] = 'P';
    } else
        meridian[0] = 'A';

    // Time
    SetColor(BACKGROUND_COLOR);
    OutTextXY(185, 0, timeString);
    sprintf(timeString, "%02u:%02u:%02u %s",
            ((gps_data->fix_time.hour - 4) > 12) ? gps_data->fix_time.hour - 16 : gps_data->fix_time.hour - 4,
            gps_data->fix_time.min, (unsigned int)gps_data->fix_time.sec, meridian);
    SetColor(WHITE);
    OutTextXY(185, 0, timeString);

    // Date
    strcpy(oldDateString, dateString);
    sprintf(dateString, "%s %02u, 20%02u", month(gps_data->date.month),
            gps_data->date.day, gps_data->date.year);
    if (strcmp(oldDateString, dateString) != 0) {
        SetColor(BACKGROUND_COLOR);
        OutTextXY(0,0, oldDateString);
        SetColor(WHITE);
        OutTextXY(0,0, dateString);
    }

    // Lat, long
    strcpy(oldlatlon_string, latlong_string);
    sprintf(latlong_string, "%02.4f\"                %02.4f\"    ",
              gps_data->latitude, gps_data->longitude);
    if (strcmp(oldlatlon_string, latlong_string) != 0) {
        SetColor(BACKGROUND_COLOR);
        OutTextXY(30, 90, oldlatlon_string);
        SetColor(WHITE);
        OutTextXY(30, 90, latlong_string);
    }

    if (MDD_SDSPI_MediaDetect() == FALSE) {
        OutTextXY(30, 30, "Error: SD Card not detected.");
        initResults = FALSE;
        stopLogging();
        logFile = NULL;
    } else {
        SetColor(BACKGROUND_COLOR);
        OutTextXY(30, 30, "Error: SD Card not detected.");
        initResults = TRUE;
    }

    if (!logging)
        return;

    if (initResults == TRUE) {
        if(logFile != NULL) {
            logWaypoint(gps_data);
        } else {
            //sprintf(file, "gps_data.gpx", fileID++);
            logFile = gpsFileOpen("gps_data.gpx");
        }
    } else {
        if(MDD_SDSPI_MediaDetect() == TRUE) {
            initResults = TRUE;
        }
    }
}

WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg) {
    switch (pMsg->type) {
        case TYPE_TOUCHSCREEN:
            switch (pMsg->uiEvent) {
                case EVENT_PRESS:
                    if (pObj->ID == 1) {
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