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
 
.PHONY: \
	complex/debug/warning \
	complex/debug/$(complex_done) \
	complex/debug/clean 

complex/debug/warning :
	@echo "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex\" or \"all\""

# this will be called by root's "all" / "complex" target
complex/debug/$(complex_done) : complex/debug/debug_01.$(ext_run) complex/debug/debug_02.$(ext_run) complex/debug/debug_03.$(ext_run)
	
complex/debug/debug_01.$(ext_run) :  complex/debug/debug_01.$(ext_source)
	$(eval z_name = $(subst .$(ext_run),,$@))
	@if $(DMD) $(DFLAGS) -debug -od$(OBJ_DIR) -of$@ $< $(to_log); then \
		if $@ $(to_log); then \
			$(ECHO) "PASS:  $(z_name)"; \
		else \
			$(ECHO) "XFAIL: $(z_name)"; $(RM) $@; \
		fi \
	else \
		$(ECHO) "XFAIL: $(z_name) (compiling error)"; \
	fi

complex/debug/debug_02.$(ext_run) :  complex/debug/debug_02.$(ext_source) complex/debug/$(complex_todo)
	$(eval z_name = $(subst .$(ext_run),,$@))
	@if $(DMD) $(DFLAGS) -debug=2 -od$(OBJ_DIR) -of$@ $< $(to_log); then \
		if $@ $(to_log); then \
			$(ECHO) "PASS:  $(z_name)"; \
		else \
			$(ECHO) "XFAIL: $(z_name)"; $(RM) $@; \
		fi \
	else \
		$(ECHO) "XFAIL: debug_02 (compiling error)"; \
	fi

complex/debug/debug_03.$(ext_run) :  complex/debug/debug_03.$(ext_source) complex/debug/$(complex_todo)
	$(eval z_name = $(subst .$(ext_run),,$@))
	@if $(DMD) $(DFLAGS) -debug=a -od$(OBJ_DIR) -of$@ $< $(to_log); then \
		if $@ $(to_log); then \
			$(ECHO) "PASS:  $(z_name)"; \
		else \
			$(ECHO) "XFAIL: $(z_name)"; $(RM) $@; \
		fi \
	else \
		$(ECHO) "XFAIL: $(z_name) (compiling error)"; \
	fi


# this will be called by root's "clean" target
complex/debug/clean :
	$(RM) complex/debug/$(complex_done) complex/debug/?*.$(ext_run) complex/debug/?*.$(ext_compile) complex/debug/?*.$(ext_nocompile)
