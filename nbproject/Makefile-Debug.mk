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
CND_PLATFORM=GNU-MacOSX
CND_DLIB_EXT=dylib
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/libs/Functions/Functions.o \
	${OBJECTDIR}/src/libs/Managers/Date/Actual_date.o \
	${OBJECTDIR}/src/libs/Managers/Date/Date.o \
	${OBJECTDIR}/src/libs/Managers/GUI/Button.o \
	${OBJECTDIR}/src/libs/Managers/Managers/Display_manager.o \
	${OBJECTDIR}/src/libs/Managers/Managers/List_manager.o \
	${OBJECTDIR}/src/libs/Managers/Managers/Main_manager.o \
	${OBJECTDIR}/src/libs/Managers/Managers/Process_queue_manager.o \
	${OBJECTDIR}/src/libs/Managers/Managers/Setting_manager.o \
	${OBJECTDIR}/src/libs/Managers/process_structure/Day_list.o \
	${OBJECTDIR}/src/libs/Managers/process_structure/Function_queue.o \
	${OBJECTDIR}/src/libs/objects/characters/Character.o \
	${OBJECTDIR}/src/libs/objects/characters/Inventory.o \
	${OBJECTDIR}/src/libs/objects/characters/Population.o \
	${OBJECTDIR}/src/libs/objects/items/Base_price_table.o \
	${OBJECTDIR}/src/libs/objects/items/Item.o \
	${OBJECTDIR}/src/libs/objects/pleaces/Pleace.o \
	${OBJECTDIR}/src/libs/objects/pleaces/Settlement.o \
	${OBJECTDIR}/src/libs/objects/pleaces/Settlement_building.o \
	${OBJECTDIR}/src/main.o

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
LDLIBSOPTIONS=-L/usr/local/Cellar/boost/1.60.0_1/lib -lsfml-graphics-d -lsfml-audio-d -lsfml-network-d -lsfml-window-d -lsfml-system-d /E/Matko/Programing/Programing_libraries/Thor-master/build/lib/libthor-s-d.a

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation: /E/Matko/Programing/Programing_libraries/Thor-master/build/lib/libthor-s-d.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/src/libs/Functions/Functions.o: src/libs/Functions/Functions.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Functions
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Functions/Functions.o src/libs/Functions/Functions.cpp

${OBJECTDIR}/src/libs/Managers/Date/Actual_date.o: src/libs/Managers/Date/Actual_date.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Date
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Date/Actual_date.o src/libs/Managers/Date/Actual_date.cpp

${OBJECTDIR}/src/libs/Managers/Date/Date.o: src/libs/Managers/Date/Date.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Date
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Date/Date.o src/libs/Managers/Date/Date.cpp

${OBJECTDIR}/src/libs/Managers/GUI/Button.o: src/libs/Managers/GUI/Button.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/GUI
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/GUI/Button.o src/libs/Managers/GUI/Button.cpp

${OBJECTDIR}/src/libs/Managers/Managers/Display_manager.o: src/libs/Managers/Managers/Display_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Managers/Display_manager.o src/libs/Managers/Managers/Display_manager.cpp

${OBJECTDIR}/src/libs/Managers/Managers/List_manager.o: src/libs/Managers/Managers/List_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Managers/List_manager.o src/libs/Managers/Managers/List_manager.cpp

${OBJECTDIR}/src/libs/Managers/Managers/Main_manager.o: src/libs/Managers/Managers/Main_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Managers/Main_manager.o src/libs/Managers/Managers/Main_manager.cpp

${OBJECTDIR}/src/libs/Managers/Managers/Process_queue_manager.o: src/libs/Managers/Managers/Process_queue_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Managers/Process_queue_manager.o src/libs/Managers/Managers/Process_queue_manager.cpp

${OBJECTDIR}/src/libs/Managers/Managers/Setting_manager.o: src/libs/Managers/Managers/Setting_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Managers
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Managers/Setting_manager.o src/libs/Managers/Managers/Setting_manager.cpp

${OBJECTDIR}/src/libs/Managers/process_structure/Day_list.o: src/libs/Managers/process_structure/Day_list.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/process_structure
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/process_structure/Day_list.o src/libs/Managers/process_structure/Day_list.cpp

${OBJECTDIR}/src/libs/Managers/process_structure/Function_queue.o: src/libs/Managers/process_structure/Function_queue.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/process_structure
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/process_structure/Function_queue.o src/libs/Managers/process_structure/Function_queue.cpp

${OBJECTDIR}/src/libs/objects/characters/Character.o: src/libs/objects/characters/Character.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/characters/Character.o src/libs/objects/characters/Character.cpp

${OBJECTDIR}/src/libs/objects/characters/Inventory.o: src/libs/objects/characters/Inventory.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/characters/Inventory.o src/libs/objects/characters/Inventory.cpp

${OBJECTDIR}/src/libs/objects/characters/Population.o: src/libs/objects/characters/Population.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/characters
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/characters/Population.o src/libs/objects/characters/Population.cpp

${OBJECTDIR}/src/libs/objects/items/Base_price_table.o: src/libs/objects/items/Base_price_table.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/items
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/items/Base_price_table.o src/libs/objects/items/Base_price_table.cpp

${OBJECTDIR}/src/libs/objects/items/Item.o: src/libs/objects/items/Item.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/items
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/items/Item.o src/libs/objects/items/Item.cpp

${OBJECTDIR}/src/libs/objects/pleaces/Pleace.o: src/libs/objects/pleaces/Pleace.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/pleaces
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/pleaces/Pleace.o src/libs/objects/pleaces/Pleace.cpp

${OBJECTDIR}/src/libs/objects/pleaces/Settlement.o: src/libs/objects/pleaces/Settlement.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/pleaces
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/pleaces/Settlement.o src/libs/objects/pleaces/Settlement.cpp

${OBJECTDIR}/src/libs/objects/pleaces/Settlement_building.o: src/libs/objects/pleaces/Settlement_building.cpp
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/pleaces
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/pleaces/Settlement_building.o src/libs/objects/pleaces/Settlement_building.cpp

${OBJECTDIR}/src/main.o: src/main.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main.o src/main.cpp

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
	$(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -I. -std=c++14 -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/function_queue_test.o tests/function_queue_test.cpp


${OBJECTDIR}/src/libs/Functions/Functions_nomain.o: ${OBJECTDIR}/src/libs/Functions/Functions.o src/libs/Functions/Functions.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Functions
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Functions/Functions.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Functions/Functions_nomain.o src/libs/Functions/Functions.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Functions/Functions.o ${OBJECTDIR}/src/libs/Functions/Functions_nomain.o;\
	fi

${OBJECTDIR}/src/libs/Managers/Date/Actual_date_nomain.o: ${OBJECTDIR}/src/libs/Managers/Date/Actual_date.o src/libs/Managers/Date/Actual_date.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Date
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Managers/Date/Actual_date.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Date/Actual_date_nomain.o src/libs/Managers/Date/Actual_date.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Managers/Date/Actual_date.o ${OBJECTDIR}/src/libs/Managers/Date/Actual_date_nomain.o;\
	fi

${OBJECTDIR}/src/libs/Managers/Date/Date_nomain.o: ${OBJECTDIR}/src/libs/Managers/Date/Date.o src/libs/Managers/Date/Date.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Date
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Managers/Date/Date.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Date/Date_nomain.o src/libs/Managers/Date/Date.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Managers/Date/Date.o ${OBJECTDIR}/src/libs/Managers/Date/Date_nomain.o;\
	fi

${OBJECTDIR}/src/libs/Managers/GUI/Button_nomain.o: ${OBJECTDIR}/src/libs/Managers/GUI/Button.o src/libs/Managers/GUI/Button.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/GUI
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Managers/GUI/Button.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/GUI/Button_nomain.o src/libs/Managers/GUI/Button.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Managers/GUI/Button.o ${OBJECTDIR}/src/libs/Managers/GUI/Button_nomain.o;\
	fi

${OBJECTDIR}/src/libs/Managers/Managers/Display_manager_nomain.o: ${OBJECTDIR}/src/libs/Managers/Managers/Display_manager.o src/libs/Managers/Managers/Display_manager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Managers/Managers/Display_manager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Managers/Display_manager_nomain.o src/libs/Managers/Managers/Display_manager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Managers/Managers/Display_manager.o ${OBJECTDIR}/src/libs/Managers/Managers/Display_manager_nomain.o;\
	fi

${OBJECTDIR}/src/libs/Managers/Managers/List_manager_nomain.o: ${OBJECTDIR}/src/libs/Managers/Managers/List_manager.o src/libs/Managers/Managers/List_manager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Managers/Managers/List_manager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Managers/List_manager_nomain.o src/libs/Managers/Managers/List_manager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Managers/Managers/List_manager.o ${OBJECTDIR}/src/libs/Managers/Managers/List_manager_nomain.o;\
	fi

${OBJECTDIR}/src/libs/Managers/Managers/Main_manager_nomain.o: ${OBJECTDIR}/src/libs/Managers/Managers/Main_manager.o src/libs/Managers/Managers/Main_manager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Managers/Managers/Main_manager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Managers/Main_manager_nomain.o src/libs/Managers/Managers/Main_manager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Managers/Managers/Main_manager.o ${OBJECTDIR}/src/libs/Managers/Managers/Main_manager_nomain.o;\
	fi

${OBJECTDIR}/src/libs/Managers/Managers/Process_queue_manager_nomain.o: ${OBJECTDIR}/src/libs/Managers/Managers/Process_queue_manager.o src/libs/Managers/Managers/Process_queue_manager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Managers/Managers/Process_queue_manager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Managers/Process_queue_manager_nomain.o src/libs/Managers/Managers/Process_queue_manager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Managers/Managers/Process_queue_manager.o ${OBJECTDIR}/src/libs/Managers/Managers/Process_queue_manager_nomain.o;\
	fi

${OBJECTDIR}/src/libs/Managers/Managers/Setting_manager_nomain.o: ${OBJECTDIR}/src/libs/Managers/Managers/Setting_manager.o src/libs/Managers/Managers/Setting_manager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/Managers
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Managers/Managers/Setting_manager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/Managers/Setting_manager_nomain.o src/libs/Managers/Managers/Setting_manager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Managers/Managers/Setting_manager.o ${OBJECTDIR}/src/libs/Managers/Managers/Setting_manager_nomain.o;\
	fi

${OBJECTDIR}/src/libs/Managers/process_structure/Day_list_nomain.o: ${OBJECTDIR}/src/libs/Managers/process_structure/Day_list.o src/libs/Managers/process_structure/Day_list.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/process_structure
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Managers/process_structure/Day_list.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/process_structure/Day_list_nomain.o src/libs/Managers/process_structure/Day_list.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Managers/process_structure/Day_list.o ${OBJECTDIR}/src/libs/Managers/process_structure/Day_list_nomain.o;\
	fi

${OBJECTDIR}/src/libs/Managers/process_structure/Function_queue_nomain.o: ${OBJECTDIR}/src/libs/Managers/process_structure/Function_queue.o src/libs/Managers/process_structure/Function_queue.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/Managers/process_structure
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/Managers/process_structure/Function_queue.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/Managers/process_structure/Function_queue_nomain.o src/libs/Managers/process_structure/Function_queue.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/Managers/process_structure/Function_queue.o ${OBJECTDIR}/src/libs/Managers/process_structure/Function_queue_nomain.o;\
	fi

${OBJECTDIR}/src/libs/objects/characters/Character_nomain.o: ${OBJECTDIR}/src/libs/objects/characters/Character.o src/libs/objects/characters/Character.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/characters
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/objects/characters/Character.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/characters/Character_nomain.o src/libs/objects/characters/Character.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/objects/characters/Character.o ${OBJECTDIR}/src/libs/objects/characters/Character_nomain.o;\
	fi

${OBJECTDIR}/src/libs/objects/characters/Inventory_nomain.o: ${OBJECTDIR}/src/libs/objects/characters/Inventory.o src/libs/objects/characters/Inventory.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/characters
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/objects/characters/Inventory.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/characters/Inventory_nomain.o src/libs/objects/characters/Inventory.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/objects/characters/Inventory.o ${OBJECTDIR}/src/libs/objects/characters/Inventory_nomain.o;\
	fi

${OBJECTDIR}/src/libs/objects/characters/Population_nomain.o: ${OBJECTDIR}/src/libs/objects/characters/Population.o src/libs/objects/characters/Population.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/characters
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/objects/characters/Population.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/characters/Population_nomain.o src/libs/objects/characters/Population.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/objects/characters/Population.o ${OBJECTDIR}/src/libs/objects/characters/Population_nomain.o;\
	fi

${OBJECTDIR}/src/libs/objects/items/Base_price_table_nomain.o: ${OBJECTDIR}/src/libs/objects/items/Base_price_table.o src/libs/objects/items/Base_price_table.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/items
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/objects/items/Base_price_table.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/items/Base_price_table_nomain.o src/libs/objects/items/Base_price_table.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/objects/items/Base_price_table.o ${OBJECTDIR}/src/libs/objects/items/Base_price_table_nomain.o;\
	fi

${OBJECTDIR}/src/libs/objects/items/Item_nomain.o: ${OBJECTDIR}/src/libs/objects/items/Item.o src/libs/objects/items/Item.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/items
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/objects/items/Item.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/items/Item_nomain.o src/libs/objects/items/Item.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/objects/items/Item.o ${OBJECTDIR}/src/libs/objects/items/Item_nomain.o;\
	fi

${OBJECTDIR}/src/libs/objects/pleaces/Pleace_nomain.o: ${OBJECTDIR}/src/libs/objects/pleaces/Pleace.o src/libs/objects/pleaces/Pleace.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/pleaces
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/objects/pleaces/Pleace.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/pleaces/Pleace_nomain.o src/libs/objects/pleaces/Pleace.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/objects/pleaces/Pleace.o ${OBJECTDIR}/src/libs/objects/pleaces/Pleace_nomain.o;\
	fi

${OBJECTDIR}/src/libs/objects/pleaces/Settlement_nomain.o: ${OBJECTDIR}/src/libs/objects/pleaces/Settlement.o src/libs/objects/pleaces/Settlement.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/pleaces
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/objects/pleaces/Settlement.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/pleaces/Settlement_nomain.o src/libs/objects/pleaces/Settlement.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/objects/pleaces/Settlement.o ${OBJECTDIR}/src/libs/objects/pleaces/Settlement_nomain.o;\
	fi

${OBJECTDIR}/src/libs/objects/pleaces/Settlement_building_nomain.o: ${OBJECTDIR}/src/libs/objects/pleaces/Settlement_building.o src/libs/objects/pleaces/Settlement_building.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/libs/objects/pleaces
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/libs/objects/pleaces/Settlement_building.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/libs/objects/pleaces/Settlement_building_nomain.o src/libs/objects/pleaces/Settlement_building.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/libs/objects/pleaces/Settlement_building.o ${OBJECTDIR}/src/libs/objects/pleaces/Settlement_building_nomain.o;\
	fi

${OBJECTDIR}/src/main_nomain.o: ${OBJECTDIR}/src/main.o src/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/Cellar/boost/1.60.0_1/include -std=c++14 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main_nomain.o src/main.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/main_nomain.o;\
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
