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
SOURCEFILES_QUOTED_IF_SPACED=/home/doug/MPLABXProjects/GPSDataLogger.X/NMEAparser.c /home/doug/MPLABXProjects/GPSDataLogger.X/main.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPX.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_i2c.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_uart.c /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c /home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1831318040/NMEAparser.o ${OBJECTDIR}/_ext/1831318040/main.o ${OBJECTDIR}/_ext/1831318040/GPX.o ${OBJECTDIR}/_ext/1831318040/GPS_i2c.o ${OBJECTDIR}/_ext/1831318040/GPS_uart.o ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o ${OBJECTDIR}/_ext/1831318040/uMedia.o ${OBJECTDIR}/_ext/1831318040/FSIO.o ${OBJECTDIR}/_ext/1831318040/SD-SPI.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1831318040/NMEAparser.o.d ${OBJECTDIR}/_ext/1831318040/main.o.d ${OBJECTDIR}/_ext/1831318040/GPX.o.d ${OBJECTDIR}/_ext/1831318040/GPS_i2c.o.d ${OBJECTDIR}/_ext/1831318040/GPS_uart.o.d ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d ${OBJECTDIR}/_ext/1831318040/uMedia.o.d ${OBJECTDIR}/_ext/1831318040/FSIO.o.d ${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1831318040/NMEAparser.o ${OBJECTDIR}/_ext/1831318040/main.o ${OBJECTDIR}/_ext/1831318040/GPX.o ${OBJECTDIR}/_ext/1831318040/GPS_i2c.o ${OBJECTDIR}/_ext/1831318040/GPS_uart.o ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o ${OBJECTDIR}/_ext/1831318040/uMedia.o ${OBJECTDIR}/_ext/1831318040/FSIO.o ${OBJECTDIR}/_ext/1831318040/SD-SPI.o

# Source Files
SOURCEFILES=/home/doug/MPLABXProjects/GPSDataLogger.X/NMEAparser.c /home/doug/MPLABXProjects/GPSDataLogger.X/main.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPX.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_i2c.c /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_uart.c /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c /home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c


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
${OBJECTDIR}/_ext/1831318040/NMEAparser.o: /home/doug/MPLABXProjects/GPSDataLogger.X/NMEAparser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/NMEAparser.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/NMEAparser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/NMEAparser.c  -o ${OBJECTDIR}/_ext/1831318040/NMEAparser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/NMEAparser.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/NMEAparser.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/main.o: /home/doug/MPLABXProjects/GPSDataLogger.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/main.c  -o ${OBJECTDIR}/_ext/1831318040/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPX.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPX.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPX.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPX.c  -o ${OBJECTDIR}/_ext/1831318040/GPX.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPX.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPX.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPS_i2c.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_i2c.c  -o ${OBJECTDIR}/_ext/1831318040/GPS_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPS_i2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPS_i2c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPS_uart.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_uart.c  -o ${OBJECTDIR}/_ext/1831318040/GPS_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPS_uart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPS_uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/usb_descriptors.o: /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c  -o ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/uMedia.o: /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/uMedia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/uMedia.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c  -o ${OBJECTDIR}/_ext/1831318040/uMedia.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/uMedia.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/uMedia.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/FSIO.o: /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/FSIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c  -o ${OBJECTDIR}/_ext/1831318040/FSIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/FSIO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/FSIO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/SD-SPI.o: /home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/SD-SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c  -o ${OBJECTDIR}/_ext/1831318040/SD-SPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1831318040/NMEAparser.o: /home/doug/MPLABXProjects/GPSDataLogger.X/NMEAparser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/NMEAparser.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/NMEAparser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/NMEAparser.c  -o ${OBJECTDIR}/_ext/1831318040/NMEAparser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/NMEAparser.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/NMEAparser.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/main.o: /home/doug/MPLABXProjects/GPSDataLogger.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/main.c  -o ${OBJECTDIR}/_ext/1831318040/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/main.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPX.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPX.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPX.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPX.c  -o ${OBJECTDIR}/_ext/1831318040/GPX.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPX.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPX.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPS_i2c.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_i2c.c  -o ${OBJECTDIR}/_ext/1831318040/GPS_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPS_i2c.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPS_i2c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/GPS_uart.o: /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/GPS_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/GPS_uart.c  -o ${OBJECTDIR}/_ext/1831318040/GPS_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/GPS_uart.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/GPS_uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/usb_descriptors.o: /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/usb_descriptors.c  -o ${OBJECTDIR}/_ext/1831318040/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/uMedia.o: /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/uMedia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/uMedia.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/uMedia.c  -o ${OBJECTDIR}/_ext/1831318040/uMedia.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/uMedia.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/uMedia.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/FSIO.o: /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/FSIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/FSIO.c  -o ${OBJECTDIR}/_ext/1831318040/FSIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/FSIO.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/FSIO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1831318040/SD-SPI.o: /home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1831318040" 
	@${RM} ${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1831318040/SD-SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/doug/MPLABXProjects/GPSDataLogger.X/SD-SPI.c  -o ${OBJECTDIR}/_ext/1831318040/SD-SPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-data -O0 -I"." -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1831318040/SD-SPI.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-data  -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/GPSDataLogger.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -mlarge-data -Wl,--local-stack,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
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
