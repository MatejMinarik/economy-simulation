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
	${OBJECTDIR}/src/Functions/Functions.o \
	${OBJECTDIR}/src/Managers/Actual_date.o \
	${OBJECTDIR}/src/Managers/Date.o \
	${OBJECTDIR}/src/Managers/Display_manager.o \
	${OBJECTDIR}/src/Managers/GUI/Button.o \
	${OBJECTDIR}/src/Managers/List_manager.o \
	${OBJECTDIR}/src/Managers/Main_manager.o \
	${OBJECTDIR}/src/Managers/Process_queue_manager.o \
	${OBJECTDIR}/src/Managers/Setting_manager.o \
	${OBJECTDIR}/src/Managers/process_structure/Day_list.o \
	${OBJECTDIR}/src/Managers/process_structure/Function_queue.o \
	${OBJECTDIR}/src/main.o \
	${OBJECTDIR}/src/objects/characters/Character.o \
	${OBJECTDIR}/src/objects/characters/Inventory.o \
	${OBJECTDIR}/src/objects/characters/Population.o \
	${OBJECTDIR}/src/objects/items/Base_price_table.o \
	${OBJECTDIR}/src/objects/items/Item.o \
	${OBJECTDIR}/src/objects/pleaces/Pleace.o \
	${OBJECTDIR}/src/objects/pleaces/settlements/Settlement.o \
	${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

# Test Object Files
TESTOBJECTFILES= \
	${TESTDIR}/tests/function_queue_test.o

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
LDLIBSOPTIONS=-L../../Programing_libraries/SFML-2.4.2-source/lib -L../../Programing_libraries/boost_1_65_1/libs -L../../Programing_libraries/boost_1_65_1/boost -L/C/Program\ Files\ \(x86\)/thor/lib -lsfml-graphics -lsfml-audio -lsfml-network -lsfml-window -lsfml-system "/C/Program Files (x86)/thor/lib/libthor-s.a"  

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation.exe: /C/Program\ Files\ \(x86\)/thor/lib/libthor-s.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/src/Functions/Functions.o: src/Functions/Functions.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Functions
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Functions/Functions.o src/Functions/Functions.cpp

${OBJECTDIR}/src/Managers/Actual_date.o: src/Managers/Actual_date.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Actual_date.o src/Managers/Actual_date.cpp

${OBJECTDIR}/src/Managers/Date.o: src/Managers/Date.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Date.o src/Managers/Date.cpp

${OBJECTDIR}/src/Managers/Display_manager.o: src/Managers/Display_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Display_manager.o src/Managers/Display_manager.cpp

${OBJECTDIR}/src/Managers/GUI/Button.o: src/Managers/GUI/Button.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers/GUI
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/GUI/Button.o src/Managers/GUI/Button.cpp

${OBJECTDIR}/src/Managers/List_manager.o: src/Managers/List_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/List_manager.o src/Managers/List_manager.cpp

${OBJECTDIR}/src/Managers/Main_manager.o: src/Managers/Main_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Main_manager.o src/Managers/Main_manager.cpp

${OBJECTDIR}/src/Managers/Process_queue_manager.o: src/Managers/Process_queue_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Process_queue_manager.o src/Managers/Process_queue_manager.cpp

${OBJECTDIR}/src/Managers/Setting_manager.o: src/Managers/Setting_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Setting_manager.o src/Managers/Setting_manager.cpp

${OBJECTDIR}/src/Managers/process_structure/Day_list.o: src/Managers/process_structure/Day_list.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers/process_structure
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/process_structure/Day_list.o src/Managers/process_structure/Day_list.cpp

${OBJECTDIR}/src/Managers/process_structure/Function_queue.o: src/Managers/process_structure/Function_queue.cpp
	${MKDIR} -p ${OBJECTDIR}/src/Managers/process_structure
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/process_structure/Function_queue.o src/Managers/process_structure/Function_queue.cpp

${OBJECTDIR}/src/main.o: src/main.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main.o src/main.cpp

${OBJECTDIR}/src/objects/characters/Character.o: src/objects/characters/Character.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Character.o src/objects/characters/Character.cpp

${OBJECTDIR}/src/objects/characters/Inventory.o: src/objects/characters/Inventory.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Inventory.o src/objects/characters/Inventory.cpp

${OBJECTDIR}/src/objects/characters/Population.o: src/objects/characters/Population.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Population.o src/objects/characters/Population.cpp

${OBJECTDIR}/src/objects/items/Base_price_table.o: src/objects/items/Base_price_table.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/items
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/items/Base_price_table.o src/objects/items/Base_price_table.cpp

${OBJECTDIR}/src/objects/items/Item.o: src/objects/items/Item.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/items
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/items/Item.o src/objects/items/Item.cpp

${OBJECTDIR}/src/objects/pleaces/Pleace.o: src/objects/pleaces/Pleace.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/pleaces
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/pleaces/Pleace.o src/objects/pleaces/Pleace.cpp

${OBJECTDIR}/src/objects/pleaces/settlements/Settlement.o: src/objects/pleaces/settlements/Settlement.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/pleaces/settlements
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/pleaces/settlements/Settlement.o src/objects/pleaces/settlements/Settlement.cpp

${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o: src/objects/pleaces/settlements/settlement_buildings/Settlement_building.cpp
	${MKDIR} -p ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o src/objects/pleaces/settlements/settlement_buildings/Settlement_building.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-tests-subprojects .build-conf ${TESTFILES}
.build-tests-subprojects:

${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/function_queue_test.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS}   


${TESTDIR}/tests/function_queue_test.o: tests/function_queue_test.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -I. -std=c++14 -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/function_queue_test.o tests/function_queue_test.cpp


${OBJECTDIR}/src/Functions/Functions_nomain.o: ${OBJECTDIR}/src/Functions/Functions.o src/Functions/Functions.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Functions
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Functions/Functions.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Functions/Functions_nomain.o src/Functions/Functions.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Functions/Functions.o ${OBJECTDIR}/src/Functions/Functions_nomain.o;\
	fi

${OBJECTDIR}/src/Managers/Actual_date_nomain.o: ${OBJECTDIR}/src/Managers/Actual_date.o src/Managers/Actual_date.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Managers/Actual_date.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Actual_date_nomain.o src/Managers/Actual_date.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Managers/Actual_date.o ${OBJECTDIR}/src/Managers/Actual_date_nomain.o;\
	fi

${OBJECTDIR}/src/Managers/Date_nomain.o: ${OBJECTDIR}/src/Managers/Date.o src/Managers/Date.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Managers/Date.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Date_nomain.o src/Managers/Date.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Managers/Date.o ${OBJECTDIR}/src/Managers/Date_nomain.o;\
	fi

${OBJECTDIR}/src/Managers/Display_manager_nomain.o: ${OBJECTDIR}/src/Managers/Display_manager.o src/Managers/Display_manager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Managers/Display_manager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Display_manager_nomain.o src/Managers/Display_manager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Managers/Display_manager.o ${OBJECTDIR}/src/Managers/Display_manager_nomain.o;\
	fi

${OBJECTDIR}/src/Managers/GUI/Button_nomain.o: ${OBJECTDIR}/src/Managers/GUI/Button.o src/Managers/GUI/Button.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Managers/GUI
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Managers/GUI/Button.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/GUI/Button_nomain.o src/Managers/GUI/Button.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Managers/GUI/Button.o ${OBJECTDIR}/src/Managers/GUI/Button_nomain.o;\
	fi

${OBJECTDIR}/src/Managers/List_manager_nomain.o: ${OBJECTDIR}/src/Managers/List_manager.o src/Managers/List_manager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Managers/List_manager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/List_manager_nomain.o src/Managers/List_manager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Managers/List_manager.o ${OBJECTDIR}/src/Managers/List_manager_nomain.o;\
	fi

${OBJECTDIR}/src/Managers/Main_manager_nomain.o: ${OBJECTDIR}/src/Managers/Main_manager.o src/Managers/Main_manager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Managers/Main_manager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Main_manager_nomain.o src/Managers/Main_manager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Managers/Main_manager.o ${OBJECTDIR}/src/Managers/Main_manager_nomain.o;\
	fi

${OBJECTDIR}/src/Managers/Process_queue_manager_nomain.o: ${OBJECTDIR}/src/Managers/Process_queue_manager.o src/Managers/Process_queue_manager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Managers/Process_queue_manager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Process_queue_manager_nomain.o src/Managers/Process_queue_manager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Managers/Process_queue_manager.o ${OBJECTDIR}/src/Managers/Process_queue_manager_nomain.o;\
	fi

${OBJECTDIR}/src/Managers/Setting_manager_nomain.o: ${OBJECTDIR}/src/Managers/Setting_manager.o src/Managers/Setting_manager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Managers/Setting_manager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/Setting_manager_nomain.o src/Managers/Setting_manager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Managers/Setting_manager.o ${OBJECTDIR}/src/Managers/Setting_manager_nomain.o;\
	fi

${OBJECTDIR}/src/Managers/process_structure/Day_list_nomain.o: ${OBJECTDIR}/src/Managers/process_structure/Day_list.o src/Managers/process_structure/Day_list.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Managers/process_structure
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Managers/process_structure/Day_list.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/process_structure/Day_list_nomain.o src/Managers/process_structure/Day_list.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Managers/process_structure/Day_list.o ${OBJECTDIR}/src/Managers/process_structure/Day_list_nomain.o;\
	fi

${OBJECTDIR}/src/Managers/process_structure/Function_queue_nomain.o: ${OBJECTDIR}/src/Managers/process_structure/Function_queue.o src/Managers/process_structure/Function_queue.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Managers/process_structure
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Managers/process_structure/Function_queue.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Managers/process_structure/Function_queue_nomain.o src/Managers/process_structure/Function_queue.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Managers/process_structure/Function_queue.o ${OBJECTDIR}/src/Managers/process_structure/Function_queue_nomain.o;\
	fi

${OBJECTDIR}/src/main_nomain.o: ${OBJECTDIR}/src/main.o src/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main_nomain.o src/main.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/main_nomain.o;\
	fi

${OBJECTDIR}/src/objects/characters/Character_nomain.o: ${OBJECTDIR}/src/objects/characters/Character.o src/objects/characters/Character.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/objects/characters/Character.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Character_nomain.o src/objects/characters/Character.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/objects/characters/Character.o ${OBJECTDIR}/src/objects/characters/Character_nomain.o;\
	fi

${OBJECTDIR}/src/objects/characters/Inventory_nomain.o: ${OBJECTDIR}/src/objects/characters/Inventory.o src/objects/characters/Inventory.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/objects/characters/Inventory.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Inventory_nomain.o src/objects/characters/Inventory.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/objects/characters/Inventory.o ${OBJECTDIR}/src/objects/characters/Inventory_nomain.o;\
	fi

${OBJECTDIR}/src/objects/characters/Population_nomain.o: ${OBJECTDIR}/src/objects/characters/Population.o src/objects/characters/Population.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/objects/characters
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/objects/characters/Population.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/characters/Population_nomain.o src/objects/characters/Population.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/objects/characters/Population.o ${OBJECTDIR}/src/objects/characters/Population_nomain.o;\
	fi

${OBJECTDIR}/src/objects/items/Base_price_table_nomain.o: ${OBJECTDIR}/src/objects/items/Base_price_table.o src/objects/items/Base_price_table.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/objects/items
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/objects/items/Base_price_table.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/items/Base_price_table_nomain.o src/objects/items/Base_price_table.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/objects/items/Base_price_table.o ${OBJECTDIR}/src/objects/items/Base_price_table_nomain.o;\
	fi

${OBJECTDIR}/src/objects/items/Item_nomain.o: ${OBJECTDIR}/src/objects/items/Item.o src/objects/items/Item.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/objects/items
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/objects/items/Item.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/items/Item_nomain.o src/objects/items/Item.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/objects/items/Item.o ${OBJECTDIR}/src/objects/items/Item_nomain.o;\
	fi

${OBJECTDIR}/src/objects/pleaces/Pleace_nomain.o: ${OBJECTDIR}/src/objects/pleaces/Pleace.o src/objects/pleaces/Pleace.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/objects/pleaces
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/objects/pleaces/Pleace.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/pleaces/Pleace_nomain.o src/objects/pleaces/Pleace.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/objects/pleaces/Pleace.o ${OBJECTDIR}/src/objects/pleaces/Pleace_nomain.o;\
	fi

${OBJECTDIR}/src/objects/pleaces/settlements/Settlement_nomain.o: ${OBJECTDIR}/src/objects/pleaces/settlements/Settlement.o src/objects/pleaces/settlements/Settlement.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/objects/pleaces/settlements
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/objects/pleaces/settlements/Settlement.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/pleaces/settlements/Settlement_nomain.o src/objects/pleaces/settlements/Settlement.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/objects/pleaces/settlements/Settlement.o ${OBJECTDIR}/src/objects/pleaces/settlements/Settlement_nomain.o;\
	fi

${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building_nomain.o: ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o src/objects/pleaces/settlements/settlement_buildings/Settlement_building.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../Programing_libraries/SFML-2.4.2-source/include -I../../Programing_libraries/boost_1_65_1 -I/C/Program\ Files\ \(x86\)/thor/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building_nomain.o src/objects/pleaces/settlements/settlement_buildings/Settlement_building.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building.o ${OBJECTDIR}/src/objects/pleaces/settlements/settlement_buildings/Settlement_building_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
