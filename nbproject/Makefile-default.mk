#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=/home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c /home/doug/MPLABXProjects/GPSDataLogger.X/TimeDelay.c /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreen.c /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreenResistive.c /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c /home/doug/MPLABXProjects/GPSDataLogger.X/usb_device.c /home/doug/MPLABXProjects/GPSDataLogger.X/usb_function_msd.c /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c /home/doug/MPLABXProjects/GPSDataLogger.X/GOLFontDefault.c /home/doug/MPLABXProjects/GPSDataLogger.X/main.c /home/doug/MPLABXProjects/GPSDataLogger.X/Primitive.c /home/doug/MPLABXProjects/GPSDataLogger.X/IL9341.c /home/doug/MPLABXProjects/GPSDataLogger.X/Button.c /home/doug/MPLABXProjects/GPSDataLogger.X/GOL.c /home/doug/MPLABXProjects/GPSDataLogger.X/GOLSchemeDefault.c /home/doug/MPLABXProjects/GPSDataLogger.X/M25P80.c /home/doug/MPLABXProjects/GPSDataLogger.X/drv_spi.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSNMEAparser.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSuart.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSTimeDate.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSUSBreader.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSGPX.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPS.c /home/doug/MPLABXProjects/GPSDataLogger.X/StaticText.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSDisplay.c /home/doug/MPLABXProjects/GPSDataLogger.X/GroupBox.c /home/doug/MPLABXProjects/GPSDataLogger.X/RadioButton.c /home/doug/MPLABXProjects/GPSDataLogger.X/Images.c /home/doug/MPLABXProjects/GPSDataLogger.X/Picture.c /home/doug/MPLABXProjects/GPSDataLogger.X/EditBox.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1831318040/SD-SPI.o ${OBJECTDIR}/_ext/1831318040/TimeDelay.o ${OBJECTDIR}/_ext/1831318040/TouchScreen.o ${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o ${OBJECTDIR}/_ext/1831318040/uMedia.o ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o ${OBJECTDIR}/_ext/1831318040/usb_device.o ${OBJECTDIR}/_ext/1831318040/usb_function_msd.o ${OBJECTDIR}/_ext/1831318040/FSIO.o ${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o ${OBJECTDIR}/_ext/1831318040/main.o ${OBJECTDIR}/_ext/1831318040/Primitive.o ${OBJECTDIR}/_ext/1831318040/IL9341.o ${OBJECTDIR}/_ext/1831318040/Button.o ${OBJECTDIR}/_ext/1831318040/GOL.o ${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o ${OBJECTDIR}/_ext/1831318040/M25P80.o ${OBJECTDIR}/_ext/1831318040/drv_spi.o ${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o ${OBJECTDIR}/_ext/1831318040/GPSuart.o ${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o ${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o ${OBJECTDIR}/_ext/1831318040/GPSGPX.o ${OBJECTDIR}/_ext/1831318040/GPS.o ${OBJECTDIR}/_ext/1831318040/StaticText.o ${OBJECTDIR}/_ext/1831318040/GPSDisplay.o ${OBJECTDIR}/_ext/1831318040/GroupBox.o ${OBJECTDIR}/_ext/1831318040/RadioButton.o ${OBJECTDIR}/_ext/1831318040/Images.o ${OBJECTDIR}/_ext/1831318040/Picture.o ${OBJECTDIR}/_ext/1831318040/EditBox.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d ${OBJECTDIR}/_ext/1831318040/TimeDelay.o.d ${OBJECTDIR}/_ext/1831318040/TouchScreen.o.d ${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o.d ${OBJECTDIR}/_ext/1831318040/uMedia.o.d ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d ${OBJECTDIR}/_ext/1831318040/usb_device.o.d ${OBJECTDIR}/_ext/1831318040/usb_function_msd.o.d ${OBJECTDIR}/_ext/1831318040/FSIO.o.d ${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o.d ${OBJECTDIR}/_ext/1831318040/main.o.d ${OBJECTDIR}/_ext/1831318040/Primitive.o.d ${OBJECTDIR}/_ext/1831318040/IL9341.o.d ${OBJECTDIR}/_ext/1831318040/Button.o.d ${OBJECTDIR}/_ext/1831318040/GOL.o.d ${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o.d ${OBJECTDIR}/_ext/1831318040/M25P80.o.d ${OBJECTDIR}/_ext/1831318040/drv_spi.o.d ${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o.d ${OBJECTDIR}/_ext/1831318040/GPSuart.o.d ${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o.d ${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o.d ${OBJECTDIR}/_ext/1831318040/GPSGPX.o.d ${OBJECTDIR}/_ext/1831318040/GPS.o.d ${OBJECTDIR}/_ext/1831318040/StaticText.o.d ${OBJECTDIR}/_ext/1831318040/GPSDisplay.o.d ${OBJECTDIR}/_ext/1831318040/GroupBox.o.d ${OBJECTDIR}/_ext/1831318040/RadioButton.o.d ${OBJECTDIR}/_ext/1831318040/Images.o.d ${OBJECTDIR}/_ext/1831318040/Picture.o.d ${OBJECTDIR}/_ext/1831318040/EditBox.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1831318040/SD-SPI.o ${OBJECTDIR}/_ext/1831318040/TimeDelay.o ${OBJECTDIR}/_ext/1831318040/TouchScreen.o ${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o ${OBJECTDIR}/_ext/1831318040/uMedia.o ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o ${OBJECTDIR}/_ext/1831318040/usb_device.o ${OBJECTDIR}/_ext/1831318040/usb_function_msd.o ${OBJECTDIR}/_ext/1831318040/FSIO.o ${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o ${OBJECTDIR}/_ext/1831318040/main.o ${OBJECTDIR}/_ext/1831318040/Primitive.o ${OBJECTDIR}/_ext/1831318040/IL9341.o ${OBJECTDIR}/_ext/1831318040/Button.o ${OBJECTDIR}/_ext/1831318040/GOL.o ${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o ${OBJECTDIR}/_ext/1831318040/M25P80.o ${OBJECTDIR}/_ext/1831318040/drv_spi.o ${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o ${OBJECTDIR}/_ext/1831318040/GPSuart.o ${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o ${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o ${OBJECTDIR}/_ext/1831318040/GPSGPX.o ${OBJECTDIR}/_ext/1831318040/GPS.o ${OBJECTDIR}/_ext/1831318040/StaticText.o ${OBJECTDIR}/_ext/1831318040/GPSDisplay.o ${OBJECTDIR}/_ext/1831318040/GroupBox.o ${OBJECTDIR}/_ext/1831318040/RadioButton.o ${OBJECTDIR}/_ext/1831318040/Images.o ${OBJECTDIR}/_ext/1831318040/Picture.o ${OBJECTDIR}/_ext/1831318040/EditBox.o

# Source Files
SOURCEFILES=/home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c /home/doug/MPLABXProjects/GPSDataLogger.X/TimeDelay.c /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreen.c /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreenResistive.c /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c /home/doug/MPLABXProjects/GPSDataLogger.X/usb_device.c /home/doug/MPLABXProjects/GPSDataLogger.X/usb_function_msd.c /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c /home/doug/MPLABXProjects/GPSDataLogger.X/GOLFontDefault.c /home/doug/MPLABXProjects/GPSDataLogger.X/main.c /home/doug/MPLABXProjects/GPSDataLogger.X/Primitive.c /home/doug/MPLABXProjects/GPSDataLogger.X/IL9341.c /home/doug/MPLABXProjects/GPSDataLogger.X/Button.c /home/doug/MPLABXProjects/GPSDataLogger.X/GOL.c /home/doug/MPLABXProjects/GPSDataLogger.X/GOLSchemeDefault.c /home/doug/MPLABXProjects/GPSDataLogger.X/M25P80.c /home/doug/MPLABXProjects/GPSDataLogger.X/drv_spi.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSNMEAparser.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSuart.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSTimeDate.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSUSBreader.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSGPX.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPS.c /home/doug/MPLABXProjects/GPSDataLogger.X/StaticText.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPSDisplay.c /home/doug/MPLABXProjects/GPSDataLogger.X/GroupBox.c /home/doug/MPLABXProjects/GPSDataLogger.X/RadioButton.c /home/doug/MPLABXProjects/GPSDataLogger.X/Images.c /home/doug/MPLABXProjects/GPSDataLogger.X/Picture.c /home/doug/MPLABXProjects/GPSDataLogger.X/EditBox.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24EP512GU810
MP_LINKER_FILE_OPTION=,--script=p24EP512GU810.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1831318040/SD-SPI.o: /home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/SD-SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c  -o ${OBJECTDIR}/_ext/1831318040/SD-SPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/TimeDelay.o: /home/doug/MPLABXProjects/GPSDataLogger.X/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/TimeDelay.c  -o ${OBJECTDIR}/_ext/1831318040/TimeDelay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/TimeDelay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/TimeDelay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/TouchScreen.o: /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TouchScreen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreen.c  -o ${OBJECTDIR}/_ext/1831318040/TouchScreen.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/TouchScreen.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/TouchScreen.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o: /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreenResistive.c  -o ${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/uMedia.o: /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/uMedia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/uMedia.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c  -o ${OBJECTDIR}/_ext/1831318040/uMedia.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/uMedia.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/uMedia.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/usb_descriptors.o: /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c  -o ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/usb_device.o: /home/doug/MPLABXProjects/GPSDataLogger.X/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/usb_device.c  -o ${OBJECTDIR}/_ext/1831318040/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/usb_device.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/usb_device.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/usb_function_msd.o: /home/doug/MPLABXProjects/GPSDataLogger.X/usb_function_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_function_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_function_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/usb_function_msd.c  -o ${OBJECTDIR}/_ext/1831318040/usb_function_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/usb_function_msd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/usb_function_msd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/FSIO.o: /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/FSIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c  -o ${OBJECTDIR}/_ext/1831318040/FSIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/FSIO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/FSIO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GOLFontDefault.c  -o ${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/main.o: /home/doug/MPLABXProjects/GPSDataLogger.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/main.c  -o ${OBJECTDIR}/_ext/1831318040/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/Primitive.o: /home/doug/MPLABXProjects/GPSDataLogger.X/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Primitive.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/Primitive.c  -o ${OBJECTDIR}/_ext/1831318040/Primitive.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/Primitive.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/Primitive.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/IL9341.o: /home/doug/MPLABXProjects/GPSDataLogger.X/IL9341.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/IL9341.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/IL9341.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/IL9341.c  -o ${OBJECTDIR}/_ext/1831318040/IL9341.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/IL9341.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/IL9341.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/Button.o: /home/doug/MPLABXProjects/GPSDataLogger.X/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/Button.c  -o ${OBJECTDIR}/_ext/1831318040/Button.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/Button.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/Button.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GOL.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GOL.c  -o ${OBJECTDIR}/_ext/1831318040/GOL.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GOL.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GOL.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GOLSchemeDefault.c  -o ${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/M25P80.o: /home/doug/MPLABXProjects/GPSDataLogger.X/M25P80.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/M25P80.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/M25P80.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/M25P80.c  -o ${OBJECTDIR}/_ext/1831318040/M25P80.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/M25P80.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/M25P80.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/drv_spi.o: /home/doug/MPLABXProjects/GPSDataLogger.X/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/drv_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/drv_spi.c  -o ${OBJECTDIR}/_ext/1831318040/drv_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/drv_spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/drv_spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSNMEAparser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSNMEAparser.c  -o ${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSuart.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSuart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSuart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSuart.c  -o ${OBJECTDIR}/_ext/1831318040/GPSuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSuart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSuart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSTimeDate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSTimeDate.c  -o ${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSUSBreader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSUSBreader.c  -o ${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSGPX.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSGPX.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSGPX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSGPX.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSGPX.c  -o ${OBJECTDIR}/_ext/1831318040/GPSGPX.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSGPX.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSGPX.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPS.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPS.c  -o ${OBJECTDIR}/_ext/1831318040/GPS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPS.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/StaticText.o: /home/doug/MPLABXProjects/GPSDataLogger.X/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/StaticText.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/StaticText.c  -o ${OBJECTDIR}/_ext/1831318040/StaticText.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/StaticText.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/StaticText.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSDisplay.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSDisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSDisplay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSDisplay.c  -o ${OBJECTDIR}/_ext/1831318040/GPSDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSDisplay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GroupBox.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GroupBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GroupBox.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GroupBox.c  -o ${OBJECTDIR}/_ext/1831318040/GroupBox.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GroupBox.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GroupBox.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/RadioButton.o: /home/doug/MPLABXProjects/GPSDataLogger.X/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/RadioButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/RadioButton.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/RadioButton.c  -o ${OBJECTDIR}/_ext/1831318040/RadioButton.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/RadioButton.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/RadioButton.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/Images.o: /home/doug/MPLABXProjects/GPSDataLogger.X/Images.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Images.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Images.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/Images.c  -o ${OBJECTDIR}/_ext/1831318040/Images.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/Images.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/Images.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/Picture.o: /home/doug/MPLABXProjects/GPSDataLogger.X/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Picture.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/Picture.c  -o ${OBJECTDIR}/_ext/1831318040/Picture.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/Picture.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/Picture.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/EditBox.o: /home/doug/MPLABXProjects/GPSDataLogger.X/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/EditBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/EditBox.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/EditBox.c  -o ${OBJECTDIR}/_ext/1831318040/EditBox.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/EditBox.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/EditBox.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1831318040/SD-SPI.o: /home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/SD-SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c  -o ${OBJECTDIR}/_ext/1831318040/SD-SPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/TimeDelay.o: /home/doug/MPLABXProjects/GPSDataLogger.X/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/TimeDelay.c  -o ${OBJECTDIR}/_ext/1831318040/TimeDelay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/TimeDelay.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/TimeDelay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/TouchScreen.o: /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TouchScreen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreen.c  -o ${OBJECTDIR}/_ext/1831318040/TouchScreen.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/TouchScreen.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/TouchScreen.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o: /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/TouchScreenResistive.c  -o ${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/TouchScreenResistive.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/uMedia.o: /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/uMedia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/uMedia.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c  -o ${OBJECTDIR}/_ext/1831318040/uMedia.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/uMedia.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/uMedia.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/usb_descriptors.o: /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c  -o ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/usb_device.o: /home/doug/MPLABXProjects/GPSDataLogger.X/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/usb_device.c  -o ${OBJECTDIR}/_ext/1831318040/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/usb_device.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/usb_device.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/usb_function_msd.o: /home/doug/MPLABXProjects/GPSDataLogger.X/usb_function_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_function_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_function_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/usb_function_msd.c  -o ${OBJECTDIR}/_ext/1831318040/usb_function_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/usb_function_msd.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/usb_function_msd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/FSIO.o: /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/FSIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c  -o ${OBJECTDIR}/_ext/1831318040/FSIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/FSIO.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/FSIO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GOLFontDefault.c  -o ${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GOLFontDefault.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/main.o: /home/doug/MPLABXProjects/GPSDataLogger.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/main.c  -o ${OBJECTDIR}/_ext/1831318040/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/main.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/Primitive.o: /home/doug/MPLABXProjects/GPSDataLogger.X/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Primitive.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/Primitive.c  -o ${OBJECTDIR}/_ext/1831318040/Primitive.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/Primitive.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/Primitive.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/IL9341.o: /home/doug/MPLABXProjects/GPSDataLogger.X/IL9341.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/IL9341.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/IL9341.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/IL9341.c  -o ${OBJECTDIR}/_ext/1831318040/IL9341.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/IL9341.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/IL9341.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/Button.o: /home/doug/MPLABXProjects/GPSDataLogger.X/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/Button.c  -o ${OBJECTDIR}/_ext/1831318040/Button.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/Button.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/Button.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GOL.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GOL.c  -o ${OBJECTDIR}/_ext/1831318040/GOL.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GOL.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GOL.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GOLSchemeDefault.c  -o ${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GOLSchemeDefault.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/M25P80.o: /home/doug/MPLABXProjects/GPSDataLogger.X/M25P80.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/M25P80.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/M25P80.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/M25P80.c  -o ${OBJECTDIR}/_ext/1831318040/M25P80.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/M25P80.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/M25P80.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/drv_spi.o: /home/doug/MPLABXProjects/GPSDataLogger.X/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/drv_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/drv_spi.c  -o ${OBJECTDIR}/_ext/1831318040/drv_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/drv_spi.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/drv_spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSNMEAparser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSNMEAparser.c  -o ${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSNMEAparser.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSuart.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSuart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSuart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSuart.c  -o ${OBJECTDIR}/_ext/1831318040/GPSuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSuart.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSuart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSTimeDate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSTimeDate.c  -o ${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSTimeDate.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSUSBreader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSUSBreader.c  -o ${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSUSBreader.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSGPX.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSGPX.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSGPX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSGPX.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSGPX.c  -o ${OBJECTDIR}/_ext/1831318040/GPSGPX.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSGPX.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSGPX.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPS.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPS.c  -o ${OBJECTDIR}/_ext/1831318040/GPS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPS.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/StaticText.o: /home/doug/MPLABXProjects/GPSDataLogger.X/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/StaticText.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/StaticText.c  -o ${OBJECTDIR}/_ext/1831318040/StaticText.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/StaticText.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/StaticText.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPSDisplay.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPSDisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSDisplay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPSDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPSDisplay.c  -o ${OBJECTDIR}/_ext/1831318040/GPSDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPSDisplay.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPSDisplay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GroupBox.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GroupBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GroupBox.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GroupBox.c  -o ${OBJECTDIR}/_ext/1831318040/GroupBox.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GroupBox.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GroupBox.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/RadioButton.o: /home/doug/MPLABXProjects/GPSDataLogger.X/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/RadioButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/RadioButton.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/RadioButton.c  -o ${OBJECTDIR}/_ext/1831318040/RadioButton.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/RadioButton.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/RadioButton.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/Images.o: /home/doug/MPLABXProjects/GPSDataLogger.X/Images.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Images.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Images.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/Images.c  -o ${OBJECTDIR}/_ext/1831318040/Images.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/Images.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/Images.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/Picture.o: /home/doug/MPLABXProjects/GPSDataLogger.X/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/Picture.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/Picture.c  -o ${OBJECTDIR}/_ext/1831318040/Picture.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/Picture.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/Picture.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/EditBox.o: /home/doug/MPLABXProjects/GPSDataLogger.X/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/EditBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/EditBox.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/EditBox.c  -o ${OBJECTDIR}/_ext/1831318040/EditBox.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/EditBox.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-code -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/EditBox.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-data  -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--heap=8192,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -mlarge-data -Wl,--local-stack,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=8192,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
