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
ifeq "$(wildcard nbproject/Makefile-local-pic18f46j50mrf24j40.mk)" "nbproject/Makefile-local-pic18f46j50mrf24j40.mk"
include nbproject/Makefile-local-pic18f46j50mrf24j40.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic18f46j50mrf24j40
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SY34.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SY34.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c ../8bitswdk_pic18f46j50_24j40/firmware/src/main.c ../8bitswdk_pic18f46j50_24j40/firmware/src/VT100.c ../../MLA/framework/miwi/src/miwi_mesh.c ../../MLA/framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1641867091/button.p1 ${OBJECTDIR}/_ext/1641867091/console.p1 ${OBJECTDIR}/_ext/1641867091/delay.p1 ${OBJECTDIR}/_ext/1641867091/eeprom.p1 ${OBJECTDIR}/_ext/1641867091/lcd.p1 ${OBJECTDIR}/_ext/1641867091/spi.p1 ${OBJECTDIR}/_ext/1641867091/symbol.p1 ${OBJECTDIR}/_ext/1641867091/system.p1 ${OBJECTDIR}/_ext/212987836/main.p1 ${OBJECTDIR}/_ext/212987836/VT100.p1 ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1 ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1641867091/button.p1.d ${OBJECTDIR}/_ext/1641867091/console.p1.d ${OBJECTDIR}/_ext/1641867091/delay.p1.d ${OBJECTDIR}/_ext/1641867091/eeprom.p1.d ${OBJECTDIR}/_ext/1641867091/lcd.p1.d ${OBJECTDIR}/_ext/1641867091/spi.p1.d ${OBJECTDIR}/_ext/1641867091/symbol.p1.d ${OBJECTDIR}/_ext/1641867091/system.p1.d ${OBJECTDIR}/_ext/212987836/main.p1.d ${OBJECTDIR}/_ext/212987836/VT100.p1.d ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1.d ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1641867091/button.p1 ${OBJECTDIR}/_ext/1641867091/console.p1 ${OBJECTDIR}/_ext/1641867091/delay.p1 ${OBJECTDIR}/_ext/1641867091/eeprom.p1 ${OBJECTDIR}/_ext/1641867091/lcd.p1 ${OBJECTDIR}/_ext/1641867091/spi.p1 ${OBJECTDIR}/_ext/1641867091/symbol.p1 ${OBJECTDIR}/_ext/1641867091/system.p1 ${OBJECTDIR}/_ext/212987836/main.p1 ${OBJECTDIR}/_ext/212987836/VT100.p1 ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1 ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1

# Source Files
SOURCEFILES=../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c ../8bitswdk_pic18f46j50_24j40/firmware/src/main.c ../8bitswdk_pic18f46j50_24j40/firmware/src/VT100.c ../../MLA/framework/miwi/src/miwi_mesh.c ../../MLA/framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c



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
	${MAKE}  -f nbproject/Makefile-pic18f46j50mrf24j40.mk dist/${CND_CONF}/${IMAGE_TYPE}/SY34.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F46J50
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1641867091/button.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/button.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/button.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/button.d ${OBJECTDIR}/_ext/1641867091/button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/console.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/console.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/console.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/console.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/console.d ${OBJECTDIR}/_ext/1641867091/console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/delay.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/delay.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/delay.d ${OBJECTDIR}/_ext/1641867091/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/eeprom.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/eeprom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/eeprom.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/eeprom.d ${OBJECTDIR}/_ext/1641867091/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/lcd.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/lcd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/lcd.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/lcd.d ${OBJECTDIR}/_ext/1641867091/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/spi.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/spi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/spi.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/spi.d ${OBJECTDIR}/_ext/1641867091/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/symbol.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/symbol.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/symbol.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/symbol.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/symbol.d ${OBJECTDIR}/_ext/1641867091/symbol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/symbol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/system.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/system.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/system.d ${OBJECTDIR}/_ext/1641867091/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/212987836/main.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/212987836" 
	@${RM} ${OBJECTDIR}/_ext/212987836/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/212987836/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/212987836/main.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/212987836/main.d ${OBJECTDIR}/_ext/212987836/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/212987836/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/212987836/VT100.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/VT100.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/212987836" 
	@${RM} ${OBJECTDIR}/_ext/212987836/VT100.p1.d 
	@${RM} ${OBJECTDIR}/_ext/212987836/VT100.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/212987836/VT100.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/VT100.c 
	@-${MV} ${OBJECTDIR}/_ext/212987836/VT100.d ${OBJECTDIR}/_ext/212987836/VT100.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/212987836/VT100.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/5654785/miwi_mesh.p1: ../../MLA/framework/miwi/src/miwi_mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/5654785" 
	@${RM} ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1.d 
	@${RM} ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1 ../../MLA/framework/miwi/src/miwi_mesh.c 
	@-${MV} ${OBJECTDIR}/_ext/5654785/miwi_mesh.d ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1: ../../MLA/framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1356036458" 
	@${RM} ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1 ../../MLA/framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c 
	@-${MV} ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.d ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1641867091/button.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/button.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/button.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/button.d ${OBJECTDIR}/_ext/1641867091/button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/console.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/console.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/console.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/console.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/console.d ${OBJECTDIR}/_ext/1641867091/console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/delay.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/delay.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/delay.d ${OBJECTDIR}/_ext/1641867091/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/eeprom.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/eeprom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/eeprom.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/eeprom.d ${OBJECTDIR}/_ext/1641867091/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/lcd.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/lcd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/lcd.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/lcd.d ${OBJECTDIR}/_ext/1641867091/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/spi.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/spi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/spi.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/spi.d ${OBJECTDIR}/_ext/1641867091/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/symbol.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/symbol.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/symbol.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/symbol.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/symbol.d ${OBJECTDIR}/_ext/1641867091/symbol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/symbol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1641867091/system.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1641867091" 
	@${RM} ${OBJECTDIR}/_ext/1641867091/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1641867091/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1641867091/system.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1641867091/system.d ${OBJECTDIR}/_ext/1641867091/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1641867091/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/212987836/main.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/212987836" 
	@${RM} ${OBJECTDIR}/_ext/212987836/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/212987836/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/212987836/main.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/212987836/main.d ${OBJECTDIR}/_ext/212987836/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/212987836/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/212987836/VT100.p1: ../8bitswdk_pic18f46j50_24j40/firmware/src/VT100.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/212987836" 
	@${RM} ${OBJECTDIR}/_ext/212987836/VT100.p1.d 
	@${RM} ${OBJECTDIR}/_ext/212987836/VT100.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/212987836/VT100.p1 ../8bitswdk_pic18f46j50_24j40/firmware/src/VT100.c 
	@-${MV} ${OBJECTDIR}/_ext/212987836/VT100.d ${OBJECTDIR}/_ext/212987836/VT100.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/212987836/VT100.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/5654785/miwi_mesh.p1: ../../MLA/framework/miwi/src/miwi_mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/5654785" 
	@${RM} ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1.d 
	@${RM} ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1 ../../MLA/framework/miwi/src/miwi_mesh.c 
	@-${MV} ${OBJECTDIR}/_ext/5654785/miwi_mesh.d ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/5654785/miwi_mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1: ../../MLA/framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1356036458" 
	@${RM} ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1 ../../MLA/framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c 
	@-${MV} ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.d ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1356036458/drv_mrf_miwi_24j40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SY34.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/SY34.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/SY34.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/SY34.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SY34.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/SY34.X.${IMAGE_TYPE}.map  -DXPRJ_pic18f46j50mrf24j40=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../8bitswdk_pic18f46j50_24j40/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../../MLA/framework" -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/SY34.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic18f46j50mrf24j40
	${RM} -r dist/pic18f46j50mrf24j40

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
