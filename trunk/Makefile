# GnuMakefile for DStress http://dmd.kuehne.cn/dstress.html
# Copyright (C) 2004 Thomas Kuehne
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#                                             

# dir: temp objects will be placed there
ifndef OBJ_DIR
OBJ_DIR = obj
endif

# file: append compiler messages and runtime assertions
# NOTE: this has to be an absolute file name, not a relative one (required by some complex test cases)
ifndef LOG
LOG	= $(PWD)/log.txt
endif

# executeable: the compiler
ifndef DMD
DMD	= dmd
endif

# executeable: a GNU findutils compatible find (e.g.: find path -regex "?\\.*something")
ifndef FIND
FIND	= find 
endif 

# executeable: remove zero or more files (e.g.: rm -f a b c)
ifndef RM
RM	= rm -f
endif

# executeable: change to a given dir (e.g. cd some/other/dir)
ifndef CD
CD	= cd
endif

# executeable: display a message test (e.g. echo "something to say)
ifndef ECHO
ECHO	= echo
endif

# executeable: update the timestamp of an existing file or create a new empty file
ifndef TOUCH
TOUCH	= touch
endif

###############################################################################
###############################################################################
#
# nothing to customize below
#
###############################################################################
###############################################################################

# settings
to_log = >> $(LOG) 2>&1
ext_run = exe
ext_unittest_run = unittest.$(ext_run)
ext_norun = bin
ext_nocompile = no
ext_unittest_nocompile = unittest.$(ext_nocompile)
ext_compile = o
ext_source = d
ext_source_html = html
complex_todo = complex.mak
complex_done = complex.done

# tools
return__ = ./return__
ifeq__ = ./ifeq__

.PHONY: all basic_tools compile nocompile run norun complex clean distclean clean_log log
#
# test everything
#
all : Makefile compile nocompile run norun complex

#
# the tools
#
return__ : return__.c
	$(CC) $(CFLAGS) $< -o $@

ifeq__ : ifeq__.c
	$(CC) $(CFLAGS) $< -o $@

basic_tools : Makefile $(ifeq__) $(return__)
	
#
# include complex test cases
#
complex_makefiles = $(sort $(shell $(FIND) complex -regex ".*$(complex_todo)"))
include $(complex_makefiles)

#
# target should fail to compile
#
nocompile : Makefile $(sort $(subst .$(ext_source),.$(ext_nocompile),$(shell $(FIND) nocompile -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_nocompile),$(shell $(FIND) nocompile -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_nocompile) : %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_nocompile),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -c -of$@ $< $(to_log)"))
	@if $(ifeq__) $(z_return) 0 ; then \
		$(ECHO) "XPASS: $(z_name)"; $(RM) $@; \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "XFAIL: $(z_name)"; $(TOUCH) $@; \
		else \
			$(ECHO) "ERROR: $(z_name)"; $(RM) $@; \
		fi \
	fi

%.$(ext_nocompile) : %.$(ext_source_html) basic_tools
	$(eval z_name = $(subst .$(ext_nocompile),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -c -of$@ $< $(to_log)"))
	@if $(ifeq__) $(z_return) 0 ; then \
		$(ECHO) "XPASS: $(z_name)"; $(RM) $@; \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "XFAIL: $(z_name)"; $(TOUCH) $@; \
		else \
			$(ECHO) "ERROR: $(z_name)"; $(RM) $@; \
		fi \
	fi

%.$(ext_unittest_nocompile) : %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_unittest_nocompile),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) -unittest $(DFLAGS) -c -of$@ $< $(to_log)"))
	@if $(ifeq__) $(z_return) 0 ; then \
		$(ECHO) "XPASS: $(z_name)"; $(RM) $@; \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "XFAIL: $(z_name)"; $(TOUCH) $@; \
		else \
			$(ECHO) "ERROR: $(z_name)"; $(RM) $@; \
		fi \
	fi

#
# target should compile (excludes linking)
#
compile : Makefile $(sort $(subst .$(ext_source),.$(ext_compile),$(shell $(FIND) compile -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_compile),$(shell $(FIND) compile -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_compile) : %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_compile),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -c -of$@ $< $(to_log)"))
	@if $(ifeq__) $(z_return) 0 ; then \
		$(ECHO) "PASS:  $(z_name)"; \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "FAIL:  $(z_name)"; $(RM) $@; \
		else \
			$(ECHO) "ERROR: $(z_name)"; $(RM) $@; \
		fi \
	fi

%.$(ext_compile) : %.$(ext_source_html) basic_tools
	$(eval z_name = $(subst .$(ext_compile),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -c -of$@ $< $(to_log)"))
	@if $(ifeq__) $(z_return) 0 ; then \
		$(ECHO) "PASS:  $(z_name)"; \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "FAIL:  $(z_name)"; $(RM) $@; \
		else \
			$(ECHO) "ERROR: $(z_name)"; $(RM) $@; \
		fi \
	fi

# 
# target should compile, link and run
# 
run : Makefile $(sort $(subst .$(ext_source),.$(ext_run),$(shell $(FIND) run -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_run),$(shell $(FIND) run -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_run) : %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_run),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	@if $(ifeq__) $(z_return) 0 ; then \
		if ./$@ $(to_log); then \
			$(ECHO) "PASS:  $(z_name)"; \
		else \
			$(ECHO) "FAIL:  $(z_name)"; $(RM) $@; \
		fi \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "FAIL:  $(z_name) (compiling error)"; \
		else \
			$(ECHO) "ERROR: $(z_name)"; \
		fi \
	fi

%.$(ext_unittest_run) :  %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_run),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -unittest -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	@if $(ifeq__) $(z_return) 0 ; then \
		if ./$@ $(to_log); then \
			$(ECHO) "PASS:  $(z_name)"; \
		else \
			$(ECHO) "FAIL:  $(z_name)"; $(RM) $@; \
		fi \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "FAIL:  $(z_name) (compiling error)"; \
		else \
			$(ECHO) "ERROR: $(z_name)"; \
		fi \
	fi

%.$(ext_run) : %.$(ext_source_html) basic_tools
	$(eval z_name = $(subst .$(ext_run),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	@if $(ifeq__) $(z_return) 0 ; then \
		if ./$@ $(to_log); then \
			$(ECHO) "PASS:  $(z_name)"; \
		else \
			$(ECHO) "FAIL:  $(z_name)"; $(RM) $@; \
		fi \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "FAIL:  $(z_name) (compiling error)"; \
		else \
			$(ECHO) "ERROR: $(z_name)"; \
		fi \
	fi

#
# target should compile and link but fail to run
# 
norun : Makefile $(sort $(subst .$(ext_source),.$(ext_norun),$(shell $(FIND) norun -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_norun),$(shell $(FIND) norun -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_norun) : %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_norun),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	@if $(ifeq__) $(z_return) 0; then \
		if ./$@ $(to_log); \
			then $(ECHO) "XPASS: $(z_name)"; $(RM) $@; \
		else \
			$(ECHO) "XFAIL: $(z_name)"; \
		fi \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "FAIL:  $(z_name) (compiling error)"; $(RM) $@; \
		else \
			$(ECHO) "ERROR: $(z_name)"; \
		fi \
	fi

%.$(ext_norun) : %.$(ext_source_html) Makefile 
	$(eval z_name = $(subst .$(ext_norun),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	@if $(ifeq__) $(z_return) 0; then \
		if ./$@ $(to_log); \
			then $(ECHO) "XPASS: $(z_name)"; $(RM) $@; \
		else \
			$(ECHO) "XFAIL: $(z_name)"; \
		fi \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "FAIL:  $(z_name) (compiling error)"; $(RM) $@; \
		else \
			$(ECHO) "ERROR: $(z_name)"; \
		fi \
	fi

#
# run all complex test cases
#
complex : $(sort $(subst $(complex_todo),$(complex_done),$(complex_makefiles)))


log : distclean all

#
# 
#
distclean : clean_log clean
	$(RM) $(shell $(FIND) . -regex ".*~") 

#
# remove compiler and assertion messages
#
clean_log :
	$(RM) $(LOG)

#test.xx : 
#	$(eval tempus=$(shell ./dstress_return "$(DMD) test.d -oftest.xx $(to_log)"))
#	echo "$(tempus)"

#
# remove targets and all temp objects
#
clean : $(sort $(subst $(complex_todo),clean,$(complex_makefiles)))
	$(RM) $(OBJ_DIR)/?*.?*
	$(RM) run/?*.$(ext_run) norun/?*.$(ext_norun) compile/?*.$(ext_compile) nocompile/?*.$(ext_nocompile)
