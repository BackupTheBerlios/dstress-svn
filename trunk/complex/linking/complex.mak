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
	complex/linking/warning \
	complex/linking/$(complex_done) \
	complex/linking/clean \
	complex/linking/dest
	
complex/linking/warning :
	@echo "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/linking/complex.done\", \"complex\" or \"all\""

complex/linking/dest = \
	complex/linking/linking_01 \
	complex/linking/linking_02 

# the actual target, will be called by root's "all" / "complex" target
complex/linking/$(complex_done) : $(complex/linking/dest)

#
# compile all 3 files in 1 step -> link, execute
#
complex/linking/linking_01 : complex/linking/a.d complex/linking/b.d complex/linking/c.d
	$(eval z_name = $@)
	 @$(RM) -f complex/linking/a.o complex/linking/b.o complex/linking/c.o
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ complex/linking/a.d complex/linking/b.d complex/linking/c.d $(to_log)"))
	$(analyse_run)

#
# compile 3 files in 3 steps -> link, execute
#
complex/linking/linking_02 : complex/linking/a.d complex/linking/b.d complex/linking/c.d
	$(eval z_flags = -I.. )
	@$(RM) -f complex/linking/a.o complex/linking/b.o complex/linking/c.o
	$(eval z_name = $@_A)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -ofcomplex/linking/a.o complex/linking/a.d $(to_log)"))
	$(analyse_compile)

	$(eval z_name = $@_B)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -ofcomplex/linking/b.o complex/linking/b.d $(to_log)"))
	$(analyse_compile)

	$(eval z_name = $@_C)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -ofcomplex/linking/c.o complex/linking/c.d $(to_log)"))
	$(analyse_compile)

	$(eval z_name = $@)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -of$@ complex/linking/a.o complex/linking/b.o complex/linking/c.o $(to_log)"))
	$(analyse_run)

# this will be called by root's "clean" target
complex/linking/clean :
	$(RM) complex/linking/*.done $(complex/linking/dest)

