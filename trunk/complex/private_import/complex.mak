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
	complex/private_import/warning \
	complex/private_import/$(complex_done) \
	complex/private_import/clean

complex/private_import/warning :
	@echo "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/private_import/complex.done\", \"complex\" or \"all\""

# the actual target, will be called by root's "all" / "complex" target
complex/private_import/$(complex_done) : complex/private_import/private_import_01.done complex/private_import/private_import_02.done

#
# compile only the 3rd file
#
complex/private_import/private_import_01.done : complex/private_import/a.$(ext_source) complex/private_import/b.$(ext_source) complex/private_import/c.$(ext_source) complex/private_import/$(complex_todo) basic_tools
	$(eval z_name = $(subst .done,,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -c -Icomplex/private_import/ -ofcomplex/private_import/c.$(ext_compile) complex/private_import/c.$(ext_source) $(to_log)"))
	$(analyse_nocompile)

#
# compile all 3 files at the same time
#
complex/private_import/private_import_02.done : complex/private_import/a.$(ext_source) complex/private_import/b.$(ext_source) complex/private_import/c.$(ext_source) complex/private_import/$(complex_todo) basic_tools
	$(eval z_name = $(subst .done,,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -c -od$(OBJ_DIR) complex/private_import/a.$(ext_source) complex/private_import/b.$(ext_source) complex/private_import/c.$(ext_source) $(to_log)"))
	$(analyse_nocompile)


# this will be called by root's "clean" target
complex/private_import/clean :
	$(RM) complex/private_import/$(complex_done) complex/private_import/?*.$(ext_compile)  complex/private_import/private_import_??.done

