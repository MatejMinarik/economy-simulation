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
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/Managers/Date.o \
	${OBJECTDIR}/src/Managers/Display_manager.o \
	${OBJECTDIR}/src/Managers/List_manager.o \
	${OBJECTDIR}/src/Managers/Main_manager.o \
	${OBJECTDIR}/src/Managers/Process_queue_manager.o \
	${OBJECTDIR}/src/Managers/Setting_manager.o \
	${OBJECTDIR}/src/Managers/Simulation_time.o \
	${OBJECTDIR}/src/Managers/process_structure/Day_vector.o \
	${OBJECTDIR}/src/Managers/process_structure/Function_queue.o \
	${OBJECTDIR}/src/Managers/process_structure/Month_list.o \
	${OBJECTDIR}/src/main.o \
	${OBJECTDIR}/src/objects/characters/Character.o \
	${OBJECTDIR}/src/objects/characters/Inventory.o \
	${OBJECTDIR}/src/objects/characters/Population.o \
	${OBJECTDIR}/src/objects/items/Base_price_table.o \
	${OBJECTDIR}/src/objects/items/Item.o \
	${OBJECTDIR}/src/objects/pleaces/Pleace.o \
	${OBJECTDIR}/src/objects/pleaces/settlements/Settlement.o \
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
LDLIBSOPTIONS=-L../../Programing_libraries/SFML-2.4.2-source/lib -lsfml-graphics -lsfml-audio -lsfml-network -lsfml-window -lsfml-system

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/src/Managers/Date.o: src/Managers/Date.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Date.o src/Managers/Date.cpp

${OBJECTDIR}/src/Managers/Display_manager.o: src/Managers/Display_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Display_manager.o src/Managers/Display_manager.cpp

${OBJECTDIR}/src/Managers/List_manager.o: src/Managers/List_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/List_manager.o src/Managers/List_manager.cpp

${OBJECTDIR}/src/Managers/Main_manager.o: src/Managers/Main_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Main_manager.o src/Managers/Main_manager.cpp

${OBJECTDIR}/src/Managers/Process_queue_manager.o: src/Managers/Process_queue_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Process_queue_manager.o src/Managers/Process_queue_manager.cpp

${OBJECTDIR}/src/Managers/Setting_manager.o: src/Managers/Setting_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Setting_manager.o src/Managers/Setting_manager.cpp

${OBJECTDIR}/src/Managers/Simulation_time.o: src/Managers/Simulation_time.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Simulation_time.o src/Managers/Simulation_time.cpp

${OBJECTDIR}/src/Managers/process_structure/Day_vector.o: src/Managers/process_structure/Day_vector.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers/process_structure
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/process_structure/Day_vector.o src/Managers/process_structure/Day_vector.cpp

${OBJECTDIR}/src/Managers/process_structure/Function_queue.o: src/Managers/process_structure/Function_queue.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers/process_structure
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/process_structure/Function_queue.o src/Managers/process_structure/Function_queue.cpp

${OBJECTDIR}/src/Managers/process_structure/Month_list.o: src/Managers/process_structure/Month_list.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers/process_structure
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/process_structure/Month_list.o src/Managers/process_structure/Month_list.cpp

${OBJECTDIR}/src/main.o: src/main.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main.o src/main.cpp

${OBJECTDIR}/src/objects/characters/Character.o: src/objects/characters/Character.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Character.o src/objects/characters/Character.cpp

${OBJECTDIR}/src/objects/characters/Inventory.o: src/objects/characters/Inventory.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Inventory.o src/objects/characters/Inventory.cpp

${OBJECTDIR}/src/objects/characters/Population.o: src/objects/characters/Population.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Population.o src/objects/characters/Population.cpp

${OBJECTDIR}/src/objects/items/Base_price_table.o: src/objects/items/Base_price_table.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/items
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/items/Base_price_table.o src/objects/items/Base_price_table.cpp

${OBJECTDIR}/src/objects/items/Item.o: src/objects/items/Item.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/items
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/items/Item.o src/objects/items/Item.cpp

${OBJECTDIR}/src/objects/pleaces/Pleace.o: src/objects/pleaces/Pleace.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/pleaces
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/pleaces/Pleace.o src/objects/pleaces/Pleace.cpp

${OBJECTDIR}/src/objects/pleaces/settlements/Settlement.o: src/objects/pleaces/settlements/Settlement.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/pleaces/settlements
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/pleaces/settlements/Settlement.o src/objects/pleaces/settlements/Settlement.cpp

${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o: src/objects/pleaces/settlements/settlement_buildings/Settlement_building.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o src/objects/pleaces/settlements/settlement_buildings/Settlement_building.cpp

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
