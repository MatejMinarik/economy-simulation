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


ROOTDIR = ..

IDIR =$(ROOTDIR)/include
# INCLUDE BASE DIRECTORY AND BOOST DIRECTORY FOR HEADERS
CFLAGS=-I$(IDIR) -I/usr/local/Cellar/boost/1.60.0_1/include -I/opt/local/include

ODIR=obj
LDIR =$(ROOTDIR)/lib

OUTPUTDIR =$(ROOTDIR)/dist

# INCLUDE BASE DIRECTORY AND BOOST DIRECTORY FOR LIB FILES
LIBS=-L$(OUTPUTDIR) -L/usr/local/Cellar/boost/1.60.0_1/
LIBNAME =

# SPECIFIY LINK OPTIONS
LINKFLAGS = -lManagers -lgtkmm

LDEPS = 
_DEPS = 
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = main.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

SHAREDLIB_FLAGS = -shared
ARCPP = $(AR) $(ARFLAGS) $@ 

SUBDIRS = libs
MAKECLEANCMD = $(patsubst %,$(MAKE) -C % clean;,$(SUBDIRS))


all: $(ODIR) $(OUTPUTDIR) $(SUBDIRS) $(OUTPUTDIR)/economy_simulation

# Create the target directory (if needed)
$(ODIR):
	mkdir -p $(ODIR)
	
$(OUTPUTDIR):
	mkdir -p $(OUTPUTDIR)
	
$(OBJ): $(ODIR)/%.o: %.cpp $(LDEPS) $(DEPS)
	$(COMPILE.cc) -o $@ $< $(CFLAGS) $(LIBS) $(LINKFLAGS)

$(OUTPUTDIR)/economy_simulation: $(OBJ)
	$(LINK.cc) $(CPPFLAGS) -o $@ $^ $(CFLAGS) $(LIBS) $(LINKFLAGS)
	
.PHONY: $(SUBDIRS)
	
$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 
	rm -f $(OUTPUTDIR)/economy_simulation
	$(MAKECLEANCMD)
	