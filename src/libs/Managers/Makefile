## -*- Makefile -*-
##
## User: Huvart
## Time: May 22, 2018 8:55:57 PM
## Makefile created by Oracle Developer Studio.
##
## This file is generated automatically.
##

SUBDIRS = Time process_structure Managers
MAKECLEANCMD = $(patsubst %,$(MAKE) -C % clean;,$(SUBDIRS))


all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

#### Clean target deletes all generated files ####
clean:
	$(MAKECLEANCMD)
	
	
.PHONY: $(SUBDIRS)



