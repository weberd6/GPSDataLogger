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

char file[32];
int fileID = 0;
bool logging = false;
char timeDateString[32];
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

    sprintf(timeDateString, "%02u-%02u-%02u\
                            %02u:%02u:%02u",
        gps_data.date.month, gps_data.date.day, gps_data.date.year,
        gps_data.fix_time.hour, gps_data.fix_time.min,
        (unsigned int)gps_data.fix_time.sec);

    SetColor(WHITE);
    OutTextXY(0, 0, timeDateString);

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
    SetColor(BLUE);
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
    SetColor(BLUE);
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
    SetColor(BLUE);
    OutTextXY(40, 205, "Logging ON");
    SetColor(BRIGHTRED);
    OutTextXY(40, 205, "Logging OFF");

    // Show red dot
    FillCircle(20, 220, 9);

    startStopButton->pText = "Start";

    gpsFileClose();
}

void logData(struct RMCData *gps_data) {
    SetColor(BLUE);
    OutTextXY(0,0, timeDateString);

    sprintf(timeDateString, "%02u-%02u-%02u\
                             %02u:%02u:%02u",
            gps_data->date.month, gps_data->date.day, gps_data->date.year,
            gps_data->fix_time.hour, gps_data->fix_time.min,
            (unsigned int)gps_data->fix_time.sec);

    SetColor(WHITE);
    OutTextXY(0, 0, timeDateString);

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
            initResults = FSInit();
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