#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW_5-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/Managers/Display_manager.o \
	${OBJECTDIR}/src/Managers/List_manager.o \
	${OBJECTDIR}/src/Managers/Main_manager.o \
	${OBJECTDIR}/src/Managers/Process_queue_manager.o \
	${OBJECTDIR}/src/Managers/Setting_manager.o \
	${OBJECTDIR}/src/main.o \
	${OBJECTDIR}/src/objects/characters/Character.o \
	${OBJECTDIR}/src/objects/characters/Inventory.o \
	${OBJECTDIR}/src/objects/items/Base_price_table.o \
	${OBJECTDIR}/src/objects/items/Item.o \
	${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L../../Programing_libraries/SFML-2.4.2-source/lib -lsfml-graphics-d -lsfml-audio-d -lsfml-network-d -lsfml-window-d -lsfml-system-d

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/src/Managers/Display_manager.o: src/Managers/Display_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Display_manager.o src/Managers/Display_manager.cpp

${OBJECTDIR}/src/Managers/List_manager.o: src/Managers/List_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/List_manager.o src/Managers/List_manager.cpp

${OBJECTDIR}/src/Managers/Main_manager.o: src/Managers/Main_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Main_manager.o src/Managers/Main_manager.cpp

${OBJECTDIR}/src/Managers/Process_queue_manager.o: src/Managers/Process_queue_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Process_queue_manager.o src/Managers/Process_queue_manager.cpp

${OBJECTDIR}/src/Managers/Setting_manager.o: src/Managers/Setting_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Setting_manager.o src/Managers/Setting_manager.cpp

${OBJECTDIR}/src/main.o: src/main.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main.o src/main.cpp

${OBJECTDIR}/src/objects/characters/Character.o: src/objects/characters/Character.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Character.o src/objects/characters/Character.cpp

${OBJECTDIR}/src/objects/characters/Inventory.o: src/objects/characters/Inventory.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Inventory.o src/objects/characters/Inventory.cpp

${OBJECTDIR}/src/objects/items/Base_price_table.o: src/objects/items/Base_price_table.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/items
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/items/Base_price_table.o src/objects/items/Base_price_table.cpp

${OBJECTDIR}/src/objects/items/Item.o: src/objects/items/Item.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/items
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/items/Item.o src/objects/items/Item.cpp

${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o: src/objects/pleaces/settlements/settlement_buildings/Settlement_building.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o src/objects/pleaces/settlements/settlement_buildings/Settlement_building.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
