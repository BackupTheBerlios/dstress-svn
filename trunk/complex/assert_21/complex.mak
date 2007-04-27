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
	complex/assert_21/warning \
	complex/assert_21/$(complex_done) \
	complex/assert_21/clean \
	complex/assert_21/dest
	
complex/assert_21/warning :
	$(error "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/assert_21/complex.done\", \"complex\" or \"all\"")

complex/assert_21/dest = \
	complex/assert_21/assert_21_A

# the actual target, will be called by root's "all" / "complex" target
complex/assert_21/$(complex_done) : $(complex/assert_21/dest) $(return__) $(ifeq__)

#
# link
#
complex/assert_21/assert_21_A : complex/assert_21/a.d complex/assert_21/b.d $(return__) $(ifeq__)
	@$(RM) -f complex/assert_21/*.o
	$(eval z_name = $@)
	$(eval z_return = $(shell cd complex/assert_21; $(return__) "$(DMD) $(DFLAGS) a.d b.d -ofassert_21_A $(to_log) && ./assert_21_A $(to_log)"))
	@if $(ifeq__) $(z_return) 0; then \
		 $(ECHO) "Torture-Sub-1/31-PASS: $(z_name)"; \
	else \
		$(ECHO) "Torture-Sub-1/31-FAIL: $(z_name)"; \
	fi 

#
# cleanup
# 
clean ::
	$(RM) complex/assert_21/*.done $(complex/assert_21/dest) complex/assert_21/*.o
	
