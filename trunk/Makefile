# $HeadURL$
# $Date$
# $Author$
#
# GnuMakefile for DStress http://dstress.kuehne.cn/www/dstress.html
# Copyright (C) 2004, 2005, 2006 Thomas Kuehne
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
OBJ_DIR := obj
endif

# file: append compiler messages and runtime assertions
# NOTE: this has to be an absolut path (required for some complex.mak files)
ifndef LOG
LOG	:= $(PWD)/log.txt
endif

# executeable: the compiler
ifndef DMD
DMD	:= dmd
endif

# executeable: a GNU findutils compatible find (e.g.: find path -regex "?\\.*something")
ifndef FIND
FIND	:= find 
endif 

# executeable: remove zero or more files (e.g.: rm -f a b c)
ifndef RM
RM	:= rm -f
endif

# executeable: change to a given dir (e.g. cd some/other/dir)
ifndef CD
CD	:= cd
endif

# executeable: display a message test (e.g. echo "something to say")
ifndef ECHO
ECHO	:= echo
endif

# executeable: update the timestamp of an existing file or create a new empty file
ifndef TOUCH
TOUCH	:= touch
endif

# executeable: detect if stdin contains "Internal error" (dmd) or "gcc.gnu.org/bugs" (gcd)
ifndef GREP
GREP := grep -s '\(Internal error\)\|\(gcc.gnu.org/bugs\)' > /dev/null 2>&1
endif

# executeable: used to concat files 
ifndef CAT
CAT := cat
endif

###############################################################################
###############################################################################
#
# nothing to customize below
#
###############################################################################
###############################################################################

# tools
return__	:= ./return__
ifeq__		:= ./ifeq__
extract__	:= ./extract__
dstress__	:= ./dstress
crashRun__	:= ./crashRun

# settings
to_log 		:= >> $(LOG) 2>&1
ext_run 	:= exe
ext_norun 	:= bin
ext_nocompile 	:= no
ext_compile 	:= o
ext_source 	:= d
ext_source_html := html
ext_log 	:= log
complex_todo 	:= complex.mak
complex_done 	:= complex.done
flag_pattern 	:= __DSTRESS_DFLAGS__

.PHONY:: all version basic_tools compile nocompile run norun complex clean distclean clean_log

.SUFFIXES:: $(ext_run) $(ext_norun) $(ext_nocompile) $(ext_compile) 
#
# test everything
#
all : Makefile version compile nocompile run norun complex

#
# the tools
#
$(return__) : return__.c Makefile
	$(CC) $(CFLAGS) $< -o $@

$(ifeq__) : ifeq__.c Makefile
	$(CC) $(CFLAGS) $< -o $@

$(extract__) : extract__.c Makefile
	$(CC) $(CFLAGS) $< -o $@

$(dstress__) : dstress.c $(crashRun__) Makefile
	$(CC) $(CFLAGS) $< -o $@

$(crashRun__) : crashRun.c Makefile
	$(CC) $(CFLAGS) $< -o $@

basic_tools : $(ifeq__) $(return__) $(extract__) $(dstress__)

#
# kludge to get version information from DMD and GDC's dmd wraper
#
version:
	@$(ECHO) ">>>> VERSION <<<<"
	@date +"%a, %e %b %Y %T %z"
	@uname -s -m -r
	-@$(DMD)
	-@$(DMD) --version version_dummy.d	
	@$(ECHO) "<<<< VERSION >>>>"

#
# include complex test cases
#
complex_makefiles := $(sort $(shell $(FIND) complex -regex ".*$(complex_todo)"))
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
nocompile : $(dstress__) nocompile_clean
	find nocompile -type f | grep -v ".svn" | sort --ignore-case | xargs -n 1 echo "$(dstress__) torture-nocompile" > nocompile.sh
	chmod +x nocompile.sh
	./nocompile.sh 2>> $(LOG)

nocompile_clean :
	$(eval z_rm = $(shell find nocompile -type f  -name "*\\.o" | grep -v ".svn"))

# used in some complex test cases
define analyse_nocompile
	@if $(ifeq__) $(z_return) 0 ; then \
		$(ECHO) "Torture-Sub-1/31-XPASS: $(z_name)"; $(RM) $@; \
	else \
		if $(CAT) $(z_log) | $(GREP) ; then \
			$(ECHO) "Torture-Sub-1/31-ERROR: $(z_name) [Internal compiler error]"; $(RM) $@; \
		else \
			if $(ifeq__) $(z_return) 256 ; then \
				$(ECHO) "Torture-Sub-1/31-XFAIL: $(z_name)"; $(TOUCH) $@; \
			else \
				$(ECHO) "Torture-Sub-1/31-ERROR: $(z_name) [$(z_return)]"; $(RM) $@; \
			fi \
		fi \
	fi
endef

#
# target should compile (excludes linking)
#
compile : $(dstress__) compile_clean
	find compile -type f | grep -v ".svn" | sort --ignore-case | xargs -n 1 echo "$(dstress__) torture-compile" > compile.sh
	chmod +x compile.sh
	./compile.sh 2>> $(LOG)

compile_clean :
	$(eval z_rm = $(shell find compile -type f  -name "*\\.o" | grep -v ".svn"))

# used in some complex test cases
define analyse_compile
	@if $(ifeq__) $(z_return) 0 ; then \
		$(ECHO) "Torture-Sub-1/31-PASS:  $(z_name)"; $(TOUCH) $@; \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "Torture-Sub-1/31-FAIL:  $(z_name)"; $(RM) $@; \
		else \
			$(ECHO) "Torture-Sub-1/31-ERROR: $(z_name) [$(z_return)]"; $(RM) $@; \
		fi \
	fi
endef

# 
# target should compile, link and run
# 
run : $(dstress__) run_clean
	find run -type f | grep -v ".svn" | sort --ignore-case | xargs -n 1 echo "$(dstress__) torture-run" > run.sh
	chmod +x run.sh
	./run.sh 2>> $(LOG)

run_clean :
	$(eval z_rm = $(shell find run -type f  -name "*\\.exe" | grep -v ".svn"))
	$(RM) $(z_rm)

# used in some complex testcases
define analyse_run
	@if $(ifeq__) $(z_return) 0 ; then \
		$(eval z_return2 = $(shell $(return__) "./$@ $(to_log)")) \
		if $(ifeq__) $(z_return2) 0 ; then \
			$(ECHO) "Torture-Sub-1/31-PASS:  $(z_name)"; \
		else \
			if $(ifeq__) $(z_return2) 256 ; then \
				$(ECHO) "Torture-Sub-1/31-FAIL:  $(z_name)"; $(RM) $@; \
			else \
				$(ECHO) "Torture-Sub-1/31-ERROR: $(z_name) [run: $(z_return2)]"; $(RM) $@; \
			fi \
		fi \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "Torture-Sub-1/31-FAIL:  $(z_name) (compiling error)"; \
		else \
			$(ECHO) "Torture-Sub-1/31-ERROR: $(z_name) [$(z_return)]"; \
		fi \
	fi
endef

#
# target should compile, link and run
# (used for Makefile diagnosis)
#
%.diagnose.$(ext_run) : %.$(ext_source) basic_tools
	# destination: $@
	# source: $<
	$(eval y_tmp = OK)
	# eval: $(y_tmp)
	# shell:
	@$(ECHO) $(shell $(ECHO) "OK")
	$(eval y_tmp = $(shell $(ECHO) "OK"))
	# eval.shell: $(y_tmp)
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
norun : $(dstress__) norun_clean
	find norun -type f | grep -v ".svn" | sort --ignore-case | xargs -n 1 echo "$(dstress__) torture-norun" > norun.sh
	chmod +x norun.sh
	./norun.sh 2>> $(LOG)

norun_clean :
	$(eval z_rm = $(shell find norun -type f  -name "*\\.exe" | grep -v ".svn"))
	$(RM) $(z_rm)

# used in some complex test cases
define analyse_norun
	@if $(ifeq__) $(z_return) 0; then \
		if ./$@ $(to_log); \
			then $(ECHO) "Torture-Sub-1/31-XPASS: $(z_name)"; $(RM) $@; \
		else \
			$(ECHO) "Torture-Sub-1/31-XFAIL: $(z_name)"; \
		fi \
	else \
		if $(ifeq__) $(z_return) 256 ; then \
			$(ECHO) "Torture-Sub-1/31-FAIL:  $(z_name) (compiling error)"; $(RM) $@; \
		else \
			$(ECHO) "Torture-Sub-1/31-ERROR: $(z_name) [$(z_return)]"; \
		fi \
	fi
endef

#
# run all complex test cases
#
complex : basic_tools $(sort $(subst $(complex_todo),$(complex_done),$(complex_makefiles)))

#
# 
#
distclean : clean_log clean
	$(RM) $(shell $(FIND) . -regex ".*~")
	$(RM) $(shell $(FIND) . -regex "\\..*\\.swp")
	$(RM) $(shell $(FIND) . -regex "#.*#")
	$(RM) $(shell $(FIND) . -regex ".*\\.map")
	$(RM) $(shell $(FIND) . -regex ".*\\.bak")
	$(RM) $(crashRun__) $(return__) $(ifeq__) $(extract__) $(dstress__) www/*.class

#
# remove compiler and assertion messages
#
clean_log :
	$(RM) $(LOG)

#
# remove targets and all temp objects
#
complex_clean : $(sort $(subst $(complex_todo),clean,$(complex_makefiles)))
	
clean : complex_clean nocompile_clean compile_clean norun_clean run_clean
	$(RM) $(z_rm) $(OBJ_DIR)/?*.*
	$(RM) run.sh norun.sh compile.sh nocompile.sh

# the empty line above has to remain, otherwise some weired problems can arise
