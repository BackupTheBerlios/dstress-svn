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

.PHONY: all compile nocompile run norun complex clean distclean clean_log log
#
# test everything
#
all : Makefile compile nocompile run norun complex

#
# include complex test cases
#
complex_makefiles = $(sort $(shell $(FIND) complex -regex ".*$(complex_todo)"))
include $(complex_makefiles)

#
# target should fail to compile
#
nocompile : Makefile $(sort $(subst .$(ext_source),.$(ext_nocompile),$(shell $(FIND) nocompile -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_nocompile),$(shell $(FIND) nocompile -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_nocompile) : %.$(ext_source) Makefile
	$(eval z_name = $(subst .$(ext_nocompile),,$@))
	@if $(DMD) $(DFLAGS) -c -of$@ $< $(to_log); then \
		$(ECHO) "XPASS: $(z_name)"; $(RM) $@; \
	else \
		$(ECHO) "FAIL:  $(z_name)"; $(TOUCH) $@; \
	fi

%.$(ext_nocompile) : %.$(ext_source_html) Makefile
	$(eval z_name = $(subst .$(ext_nocompile),,$@))
	@if $(DMD) $(DFLAGS) -c -of$@ $< $(to_log); then \
		$(ECHO) "XPASS: $(z_name)"; $(RM) $@; \
	else \
		$(ECHO) "FAIL:  $(z_name)"; $(TOUCH) $@; \
	fi

%.$(ext_unittest_nocompile) : %.$(ext_source) Makefile
	$(eval z_name = $(subst .$(ext_unittest_nocompile),,$@))
	@if $(DMD) $(DFLAGS) -unittest -c -of$@ $< $(to_log); then \
		$(ECHO) "XPASS: $(z_name)"; $(RM) $@; \
	else \
		$(ECHO) "FAIL:  $(z_name)"; $(TOUCH) $@; \
	fi

#
# target should compile (excludes linking)
#
compile : Makefile $(sort $(subst .$(ext_source),.$(ext_compile),$(shell $(FIND) compile -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_compile),$(shell $(FIND) compile -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_compile) : %.$(ext_source) Makefile
	$(eval z_name = $(subst .$(ext_compile),,$@))
	@if $(DMD) $(DFLAGS) -c -of$@ $< $(to_log) ; then \
		$(ECHO) "PASS:  $(z_name)"; $(TOUCH) $@; \
	else \
		$(ECHO) "XFAIL: $(z_name)"; $(RM) $@; \
	fi

%.$(ext_compile) : %.$(ext_source_html) Makefile
	$(eval z_name = $(subst .$(ext_compile),,$@))
	@if $(DMD) $(DFLAGS) -c -of$@ $< $(to_log) ; then \
		$(ECHO) "PASS:  $(z_name)"; $(TOUCH) $@; \
	else \
		$(ECHO) "XFAIL: $(z_name)"; $(RM) $@; \
	fi


# 
# target should compile, link and run
# 
run : Makefile $(sort $(subst .$(ext_source),.$(ext_run),$(shell $(FIND) run -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_run),$(shell $(FIND) run -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_run) : %.$(ext_source) Makefile
	$(eval z_name = $(subst .$(ext_run),,$@))
	@if $(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log); then \
		if $@ $(to_log); then \
			$(ECHO) "PASS:  $(z_name)"; \
		else \
			$(ECHO) "XFAIL: $(z_name)"; $(RM) $@; \
		fi \
	else \
		$(ECHO) "XFAIL: $(z_name) (compiling error)"; \
	fi

%.$(ext_unittest_run) :  %.$(ext_source) Makefile
	$(eval z_name = $(subst .$(ext_unittest_run),,$@))
	@if $(DMD) $(DFLAGS) -unittest -od$(OBJ_DIR) -of$@ $< $(to_log); then \
		if $@ $(to_log); then \
			$(ECHO) "PASS:  $(z_name)"; \
		else \
			$(ECHO) "XFAIL: $(z_name)"; $(RM) $@; \
		fi \
	else \
		$(ECHO) "XFAIL: $(z_name) (compiling error)"; \
	fi

%.$(ext_run) : %.$(ext_source_html) Makefile
	$(eval z_name = $(subst .$(ext_unittest_run),,$@))
	@if $(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log); then \
		if $@ $(to_log); then \
			$(ECHO) "PASS:  $(z_name)"; \
		else \
			$(ECHO) "XFAIL: $(z_name)"; $(RM) $@; \
		fi \
	else \
		$(ECHO) "XFAIL: $(z_name) (compiling error)"; \
	fi

#
# target should compile and link but fail to run
# 
norun : Makefile $(sort $(subst .$(ext_source),.$(ext_norun),$(shell $(FIND) norun -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_norun),$(shell $(FIND) norun -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_norun) : %.$(ext_source) Makefile
	$(eval z_name = $(subst .$(ext_norun),,$@))
	@if $(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log); then \
		if $@ $(to_log); \
			then $(ECHO) "XPASS: $(z_name)"; $(RM) $@; \
		else \
			$(ECHO) "FAIL:  $(z_name)"; \
		fi \
	else \
		$(ECHO) "XFAIL:  $(z_name) (compiling error)"; $(RM) $@; \
	fi

%.$(ext_norun) : %.$(ext_source_html) Makefile
	$(eval z_name = $(subst .$(ext_norun),,$@))
	@if $(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log); then \
		if $@ $(to_log); \
			then $(ECHO) "XPASS:  $(subst .$(ext_norun),,$@)"; $(RM) $@; \
		else \
			$(ECHO) "FAIL: $(subst .$(ext_norun),,$@)"; \
		fi \
	else \
		$(ECHO) "XFAIL: $(subst .$(ext_run),,$@) (compiling error)"; $(RM) $@; \
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

#
# remove targets and all temp objects
#
clean : $(sort $(subst $(complex_todo),clean,$(complex_makefiles)))
	$(RM) $(OBJ_DIR)/?*.?*
	$(RM) run/?*.$(ext_run) norun/?*.$(ext_norun) compile/?*.$(ext_compile) nocompile/?*.$(ext_nocompile)
