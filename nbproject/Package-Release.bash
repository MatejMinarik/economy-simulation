#!/bin/bash -x

#
# Generated - do not edit!
#

# Macros
TOP=`pwd`
CND_PLATFORM=MinGW_5-Windows
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build
CND_DLIB_EXT=dll
NBTMPDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tmp-packaging
TMPDIRNAME=tmp-packaging
OUTPUT_PATH=${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/economy_simulation
OUTPUT_BASENAME=economy_simulation
PACKAGE_TOP_DIR=economysimulation/

# Functions
function checkReturnCode
{
    rc=$?
    if [ $rc != 0 ]
    then
        exit $rc
    fi
}
function makeDirectory
# $1 directory path
# $2 permission (optional)
{
    mkdir -p "$1"
    checkReturnCode
    if [ "$2" != "" ]
    then
      chmod $2 "$1"
      checkReturnCode
    fi
}
function copyFileToTmpDir
# $1 from-file path
# $2 to-file path
# $3 permission
{
    cp "$1" "$2"
    checkReturnCode
    if [ "$3" != "" ]
    then
        chmod $3 "$2"
        checkReturnCode
    fi
}

# Setup
cd "${TOP}"
mkdir -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/package
rm -rf ${NBTMPDIR}
mkdir -p ${NBTMPDIR}

# Copy files and create directories and links
cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/openal32.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/openal32.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sfml-audio-2.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/sfml-audio-2.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sfml-audio-d-2.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/sfml-audio-d-2.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sfml-graphics-2.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/sfml-graphics-2.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sfml-graphics-d-2.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/sfml-graphics-d-2.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sfml-network-2.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/sfml-network-2.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sfml-network-d-2.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/sfml-network-d-2.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sfml-system-2.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/sfml-system-2.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sfml-system-d-2.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/sfml-system-d-2.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sfml-window-2.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/sfml-window-2.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sfml-window-d-2.dll" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/sfml-window-d-2.dll" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}/economysimulation/bin"
copyFileToTmpDir "${OUTPUT_PATH}.exe" "${NBTMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}.exe" 0755


# Generate tar file
cd "${TOP}"
rm -f ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/package/economysimulation.tar
cd ${NBTMPDIR}
tar -vcf ../../../../${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/package/economysimulation.tar *
checkReturnCode

# Cleanup
cd "${TOP}"
rm -rf ${NBTMPDIR}
