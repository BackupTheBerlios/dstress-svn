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
# NOTE: this has to be an absolut path (required for some complex.mak files)
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

# tools
return__	= ./return__
ifeq__		= ./ifeq__
extract__	= ./extract__

# settings
to_log = >> $(LOG) 2>&1
ext_run = exe
ext_norun = bin
ext_nocompile = no
ext_compile = o
ext_source = d
ext_source_html = html
complex_todo = complex.mak
complex_done = complex.done
flag_pattern = __DSTRESS_DFLAGS__


.PHONY: all basic_tools compile nocompile run norun complex clean distclean clean_log log
#
# test everything
#
all : Makefile compile nocompile run norun complex

#
# the tools
#
$(return__) : return__.c Makefile
	$(CC) $(CFLAGS) $< -o $@

$(ifeq__) : ifeq__.c Makefile
	$(CC) $(CFLAGS) $< -o $@

$(extract__) : extract__.c Makefile
	$(CC) $(CFLAGS) $< -o $@

basic_tools : $(ifeq__) $(return__) $(extract__)
	

#
# include complex test cases
#
complex_makefiles = $(sort $(shell $(FIND) complex -regex ".*$(complex_todo)"))
include $(complex_makefiles)

# 
# extract potential compiling flags from the test case sources
# 
define extract_z_flags
	$(eval z_flags = $(shell $(extract__) $(flag_pattern) < $<))
endef

#
# target should fail to compile
#
nocompile : Makefile $(sort $(subst .$(ext_source),.$(ext_nocompile),$(shell $(FIND) nocompile -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_nocompile),$(shell $(FIND) nocompile -regex ".*\\.$(ext_source_html)" ) ) )

define analyse_nocompile
	@if $(ifeq__) $(z_return) 0 ; then \
		$(ECHO) "XPASS: $(z_name)"; $(RM) $@; \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "XFAIL: $(z_name)"; $(TOUCH) $@; \
		else \
			$(ECHO) "ERROR: $(z_name) [$(z_return)]"; $(RM) $@; \
		fi \
	fi
endef

%.$(ext_nocompile) : %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_nocompile),,$@))
	$(extract_z_flags)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -od$(OBJ_DIR) $< $(to_log)"))
	$(analyse_nocompile)

%.$(ext_nocompile) : %.$(ext_source_html) basic_tools
	$(eval z_name = $(subst .$(ext_nocompile),,$@))
	$(extract_z_flags)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -od$(OBJ_DIR) $< $(to_log)"))
	$(analyse_nocompile)

#
# target should compile (excludes linking)
#
compile : Makefile $(sort $(subst .$(ext_source),.$(ext_compile),$(shell $(FIND) compile -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_compile),$(shell $(FIND) compile -regex ".*\\.$(ext_source_html)" ) ) )

define analyse_compile
	@if $(ifeq__) $(z_return) 0 ; then \
		$(ECHO) "PASS:  $(z_name)"; \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "FAIL:  $(z_name)"; $(RM) $@; \
		else \
			$(ECHO) "ERROR: $(z_name) [$(z_return)]"; $(RM) $@; \
		fi \
	fi
endef

%.$(ext_compile) : %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_compile),,$@))
	$(extract_z_flags)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -of$@ $< $(to_log)"))
	$(analyse_compile)


%.$(ext_compile) : %.$(ext_source_html) basic_tools
	$(eval z_name = $(subst .$(ext_compile),,$@))
	$(extract_z_flags)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -of$@ $< $(to_log)"))
	$(analyse_compile)

# 
# target should compile, link and run
# 
run : Makefile $(sort $(subst .$(ext_source),.$(ext_run),$(shell $(FIND) run -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_run),$(shell $(FIND) run -regex ".*\\.$(ext_source_html)" ) ) )

define analyse_run
	@if $(ifeq__) $(z_return) 0 ; then \
		$(eval z_return2 = $(shell $(return__) "./$@ $(to_log)")) \
		if $(ifeq__) $(z_return2) 0 ; then \
			$(ECHO) "PASS:  $(z_name)"; \
		else \
			if $(ifeq__) $(z_return2) 256 ; then \
				$(ECHO) "FAIL:  $(z_name)"; $(RM) $@; \
			else \
				$(ECHO) "ERROR: $(z_name) [run: $(z_return2)]"; $(RM) $@; \
			fi \
		fi \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "FAIL:  $(z_name) (compiling error)"; \
		else \
			$(ECHO) "ERROR: $(z_name) [$(z_return)]"; \
		fi \
	fi
endef

%.$(ext_run) : %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_run),,$@))
	$(extract_z_flags)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	$(analyse_run)

%.$(ext_run) : %.$(ext_source_html) basic_tools
	$(eval z_name = $(subst .$(ext_run),,$@))
	$(extract_z_flags)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	$(analyse_run)

#
# target should compile, link and run
# (used for Makefile diagnosis)
#
%.diagnose.$(ext_run) : %.$(ext_source) basic_tools
	# destination: $@
	# source: $<
	$(eval z_name = $(subst .diagnose.$(ext_run),,$@))
	# name: $(z_name)
	# extract__: $(extract__)
	# extract__.cmd: $(extract__) $(flag_pattern) < $<
	$(extract_z_flags)
	# extract__.result: $(z_flags)
	# ifeq__: $(ifeq__)
	# continue if ifeq__ works
	$(ifeq__) someString someString
	# return__: $(return__)
	# dmd: $(DMD)
	$(eval y_tmp = $(shell $(return__) "$(ifeq__) 1 1"))
	# return__.return_code_0: $(y_tmp) (expect=0)
	$(eval y_tmp = $(shell $(return__) "$(DMD) > /dev/null"))
	# return__.return_code_1: $(y_tmp) (expect=256)
	# dmd.cmd: $(DMD) $(DFLAGS) $(z_flags) -od$(OBJ_DIR) -of$@ $< $(to_log)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	# dmd.return: $(z_return)
	# for analyse_run diagnosis: '@if' -> 'if' in 'define analyse_run' (line 185)
	$(analyse_run)
	
#
# target should compile and link but fail to run
# 
norun : Makefile $(sort $(subst .$(ext_source),.$(ext_norun),$(shell $(FIND) norun -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_norun),$(shell $(FIND) norun -regex ".*\\.$(ext_source_html)" ) ) )

define analyse_norun
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
			$(ECHO) "ERROR: $(z_name) [$(z_return)]"; \
		fi \
	fi
endef

%.$(ext_norun) : %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_norun),,$@))
	$(extract_z_flags)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	$(analyse_norun)

%.$(ext_norun) : %.$(ext_source_html) Makefile 
	$(eval z_name = $(subst .$(ext_norun),,$@))
	$(extract_z_flags)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	$(analyse_norun)


#
# run all complex test cases
#
complex : $(sort $(subst $(complex_todo),$(complex_done),$(complex_makefiles)))


log : distclean all

#
# 
#
distclean : clean_log clean
	$(RM) $(shell $(FIND) . -regex ".*~") $(shell $(FIND) . -regex "\\..*\\.swp")
	$(RM) return__ ifeq__ extract__ www/*.class

#
# remove compiler and assertion messages
#
clean_log :
	$(RM) $(LOG)

#
# remove targets and all temp objects
#
clean : $(sort $(subst $(complex_todo),clean,$(complex_makefiles)))
	$(RM) $(OBJ_DIR)/?*.?*
	$(RM) run/?*.$(ext_run) norun/?*.$(ext_norun) compile/?*.$(ext_compile) nocompile/?*.$(ext_nocompile)

# the empty line above has to remain, otherwise some weired problems can arise
