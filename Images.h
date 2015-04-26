/*****************************************************************************
 * FileName:        Images.h
 * Processor:       PIC24F, PIC24H, dsPIC
 * Compiler:        MPLAB C30/XC16 (see release notes for tested revision)
 * Linker:          MPLAB LINK30/XC16
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright(c) 2012 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 *
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * AUTO-GENERATED CODE:  Graphics Resource Converter version: 3.29.06
 *****************************************************************************/

#ifndef IMAGES_H_FILE
#define IMAGES_H_FILE
/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <Graphics/Graphics.h>
#include "HardwareProfile.h"

/*****************************************************************************
 * SECTION:  Graphics Library Firmware Check
 *****************************************************************************/
#if(GRAPHICS_LIBRARY_VERSION != 0x0306)
#warning "It is suggested to use Graphics Library version 3.06 with this version of GRC."
#endif



/*****************************************************************************
 * This is an error check for the color depth
 *****************************************************************************/
#if (COLOR_DEPTH > 16)
#error "Color Depth needs to be 16 to correctly use these resources"
#endif



/*****************************************************************************
 * SECTION:  BITMAPS
 *****************************************************************************/

/*********************************
 * Bitmap Structure
 * Label: Apply
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Apply;
#define Apply_WIDTH     (32)
#define Apply_HEIGHT    (32)
#define Apply_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Cancel
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Cancel;
#define Cancel_WIDTH     (32)
#define Cancel_HEIGHT    (32)
#define Cancel_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Close
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Close;
#define Close_WIDTH     (32)
#define Close_HEIGHT    (32)
#define Close_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Error
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Error;
#define Error_WIDTH     (32)
#define Error_HEIGHT    (32)
#define Error_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Lock
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Lock;
#define Lock_WIDTH     (32)
#define Lock_HEIGHT    (32)
#define Lock_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Monitor
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Monitor;
#define Monitor_WIDTH     (32)
#define Monitor_HEIGHT    (32)
#define Monitor_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Ok
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Ok;
#define Ok_WIDTH     (32)
#define Ok_HEIGHT    (32)
#define Ok_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Problem
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Problem;
#define Problem_WIDTH     (32)
#define Problem_HEIGHT    (32)
#define Problem_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Save_data
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Save_data;
#define Save_data_WIDTH     (32)
#define Save_data_HEIGHT    (32)
#define Save_data_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Settings
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Settings;
#define Settings_WIDTH     (32)
#define Settings_HEIGHT    (32)
#define Settings_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Stop
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Stop;
#define Stop_WIDTH     (32)
#define Stop_HEIGHT    (32)
#define Stop_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Play
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Play;
#define Play_WIDTH     (32)
#define Play_HEIGHT    (32)
#define Play_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Unlock
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Unlock;
#define Unlock_WIDTH     (32)
#define Unlock_HEIGHT    (32)
#define Unlock_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Target1
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Target1;
#define Target1_WIDTH     (32)
#define Target1_HEIGHT    (32)
#define Target1_SIZE      (2054)
/*********************************
 * Bitmap Structure
 * Label: Warning
 * Description:  32x32 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Warning;
#define Warning_WIDTH     (32)
#define Warning_HEIGHT    (32)
#define Warning_SIZE      (2054)
#endif

