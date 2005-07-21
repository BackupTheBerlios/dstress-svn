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

#
# NOTE: almost all tests can be written using __DSTRESS_DFLAGS__
#

.PHONY:: \
	complex/typeinfo_init/warning \
	complex/typeinfo_init/$(complex_done) \
	complex/typeinfo_init/clean \
	complex/typeinfo_init/dest
	
complex/typeinfo_init/warning :
	@echo "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/typeinfo_init/complex.done\", \"complex\" or \"all\""

complex/typeinfo_init/dest = \
	complex/typeinfo_init/typeinfo_init_01 \
	complex/typeinfo_init/typeinfo_init_02 

# the actual target, will be called by root's "all" / "complex" target
complex/typeinfo_init/$(complex_done) : $(complex/typeinfo_init/dest)

#
# compile all 3 files in 1 step -> link, execute
#
complex/typeinfo_init/typeinfo_init_01 : complex/typeinfo_init/a.d complex/typeinfo_init/b.d
	@$(RM) -f complex/typeinfo_init/a.o complex/typeinfo_init/b.o
	$(eval z_name = $@)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ complex/typeinfo_init/a.d complex/typeinfo_init/b.d $(to_log)"))
	$(analyse_run)

#
# compile 2 files in 3 steps -> link, execute
#
complex/typeinfo_init/typeinfo_init_02 : complex/typeinfo_init/a.d complex/typeinfo_init/b.d
	@$(RM) -f complex/typeinfo_init/a.o complex/typeinfo_init/b.o
	$(eval z_name = $@_A)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -ofcomplex/typeinfo_init/a.o complex/typeinfo_init/a.d $(to_log)"))
	$(analyse_compile)

	$(eval z_name = $@_B)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -ofcomplex/typeinfo_init/b.o complex/typeinfo_init/b.d $(to_log)"))
	$(analyse_compile)

	$(eval z_name = $@)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -of$@ complex/typeinfo_init/a.o complex/typeinfo_init/b.o $(to_log)"))
	$(analyse_run)

# this will be called by root's "clean" target
complex/typeinfo_init/clean :
	$(RM) complex/typeinfo_init/*.done $(complex/typeinfo_init/dest)

