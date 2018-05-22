## -*- Makefile -*-
##
## User: Huvart
## Time: May 19, 2018 4:18:25 PM
## Makefile created by Oracle Developer Studio.
##
## This file is generated automatically.
##


#### Compiler and tool definitions shared by all build targets #####
CCC = g++
CXX = g++
BASICOPTS = -g -std=c++14
CCFLAGS = $(BASICOPTS)
CXXFLAGS = $(BASICOPTS)
CCADMIN = 


ROOTDIR = ../../../..

IDIR =$(ROOTDIR)/include
# INCLUDE BASE DIRECTORY AND BOOST DIRECTORY FOR HEADERS
CFLAGS=-I$(IDIR) -I/usr/local/Cellar/boost/1.60.0_1/include -I/opt/local/include

ODIR=obj
LDIR =$(ROOTDIR)/lib

OUTPUTDIR =$(ROOTDIR)/dist

# INCLUDE BASE DIRECTORY AND BOOST DIRECTORY FOR LIB FILES
LIBS=-L$(OUTPUTDIR) -L/usr/local/Cellar/boost/1.60.0_1/
LIBNAME = libManagers

# SPECIFIY LINK OPTIONS
LINKFLAGS = -lTime -lFunctions -lProcessStructure -lMap

LDEPS = Display_manager.h List_manager.h Main_manager.h Process_queue_manager.h Setting_manager.h
_DEPS = 
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = Display_manager.o List_manager.o Main_manager.o Process_queue_manager.o Setting_manager.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

SHAREDLIB_FLAGS = -shared
ARCPP = $(AR) $(ARFLAGS) $@ 

all: $(ODIR) $(OUTPUTDIR) $(OUTPUTDIR)/$(LIBNAME).so $(OUTPUTDIR)/$(LIBNAME).a

# Create the target directory (if needed)
$(ODIR):
	mkdir -p $(ODIR)
	
$(OUTPUTDIR):
	mkdir -p $(OUTPUTDIR)
	
$(OBJ): $(ODIR)/%.o: %.cpp $(LDEPS) $(DEPS)
	$(COMPILE.cc) -o $@ $< $(CFLAGS) $(LIBS) $(LINKFLAGS)

$(OUTPUTDIR)/$(LIBNAME).so: $(OBJ)
	$(LINK.cc) $(CPPFLAGS) -o $@ $(SHAREDLIB_FLAGS) $^ $(CFLAGS) $(LIBS) $(LINKFLAGS)
	
$(OUTPUTDIR)/$(LIBNAME).a: $(OBJ)	
	$(ARCPP) $^


.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 
	rm -f $(OUTPUTDIR)/$(LIBNAME).a $(OUTPUTDIR)/$(LIBNAME).so

