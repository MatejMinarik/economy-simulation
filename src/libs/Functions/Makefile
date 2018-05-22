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
BASICOPTS = -g
CCFLAGS = $(BASICOPTS)
CXXFLAGS = $(BASICOPTS)
CCADMIN = 


ROOTDIR = ../../..

IDIR =$(ROOTDIR)/dist
CFLAGS=-std=c++14 -I$(IDIR)

ODIR=obj
LDIR =$(ROOTDIR)/lib

OUTPUTDIR =$(ROOTDIR)/dist

LIBS=-lm -L$(OUTPUTDIR)
LIBNAME = libFunctions

LDEPS = Functions.h
_DEPS = 
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = Functions.o
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
	$(COMPILE.cc) -o $@ $< $(CFLAGS)

$(OUTPUTDIR)/$(LIBNAME).so: $(OBJ)
	$(LINK.cc) $(CPPFLAGS) -o $@ $(SHAREDLIB_FLAGS) $^ $(CFLAGS) $(LIBS) $(LDLIBS)
	
$(OUTPUTDIR)/$(LIBNAME).a: $(OBJ)	
	$(ARCPP) $^


.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 
	rm -f $(OUTPUTDIR)/$(LIBNAME).a $(OUTPUTDIR)/$(LIBNAME).so

