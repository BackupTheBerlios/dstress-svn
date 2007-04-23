# GnuMakefile for DStress http://dstress.kuehne.cn/www/dstress.html
# Copyright (C) 2006 Thomas Kuehne
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

.PHONY:: \
	complex/template_60/warning \
	complex/template_60/$(complex_done) \
	complex/template_60/clean \
	complex/template_60/dest
	
complex/template_60/warning :
	$(error "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/template_60/complex.done\", \"complex\" or \"all\"")

complex/template_60/dest = \
	complex/template_60/template_60_A \
	complex/template_60/template_60_B

# the actual target, will be called by root's "all" / "complex" target
complex/template_60/$(complex_done) : $(complex/template_60/dest) $(return__) $(ifeq__)

#
# link
#
complex/template_60/template_60_A : complex/template_60/a.d complex/template_60/b.d $(return__) $(ifeq__)
	@$(RM) -f complex/template_60/*.o
	$(eval z_name = $@)
	$(eval z_return = $(shell cd complex/template_60; $(return__) "$(DMD) $(DFLAGS) -c a.d $(to_log) && $(DMD) $(DFLAGS) -c b.d && $(DMD) $(DFLAGS) a.o b.o"))
	@if $(ifeq__) $(z_return) 0; then \
		 $(ECHO) "Torture-Sub-1/31-PASS: $(z_name)"; \
	else \
		$(ECHO) "Torture-Sub-1/31-FAIL: $(z_name)"; \
	fi 

complex/template_60/template_60_B : complex/template_60/a.d complex/template_60/b.d $(return__) $(ifeq__)
	@$(RM) -f complex/template_60/*.o
	$(eval z_name = $@)
	$(eval z_return = $(shell cd complex/template_60; $(return__) "$(DMD) $(DFLAGS) a.d b.d $(to_log)"))
	@if $(ifeq__) $(z_return) 0; then \
		 $(ECHO) "Torture-Sub-1/31-PASS: $(z_name)"; \
	else \
		$(ECHO) "Torture-Sub-1/31-FAIL: $(z_name)"; \
	fi 

#
# cleanup
# 
clean ::
	$(RM) complex/template_60/*.done $(complex/template_60/dest) complex/template_60/*.o
	
