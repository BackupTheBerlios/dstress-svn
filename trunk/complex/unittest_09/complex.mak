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
	complex/unittest_09/warning \
	complex/unittest_09/$(complex_done) \
	complex/unittest_09/clean \
	complex/unittest_09/dest
	
complex/unittest_09/warning :
	$(error "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/unittest_09/complex.done\", \"complex\" or \"all\"")

complex/unittest_09/dest = \
	complex/unittest_09/unittest_09_A \
	complex/unittest_09/unittest_09_B \
	complex/unittest_09/unittest_09_C \
	complex/unittest_09/unittest_09_D

# the actual target, will be called by root's "all" / "complex" target
complex/unittest_09/$(complex_done) : $(complex/unittest_09/dest) $(return__) $(ifeq__)

#
# compile and link all 2 files in 1 step -> execute
#
complex/unittest_09/unittest_09_A : complex/unittest_09/a.d complex/unittest_09/c.d $(return__) $(ifeq__)
	@$(RM) -f complex/unittest_09/*.o
	$(eval z_name = $@)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $(wordlist 1,2,$^) $(to_log)"))
	$(analyse_run)

complex/unittest_09/unittest_09_B : complex/unittest_09/b.d complex/unittest_09/d.d $(return__) $(ifeq__)
	@$(RM) -f complex/unittest_09/*.o
	$(eval z_name = $@)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $(wordlist 1,2,$^) $(to_log)"))
	$(analyse_run)

#
# compile and link in 2 steps -> excute
#
complex/unittest_09/unittest_09_C : complex/unittest_09/a.d complex/unittest_09/c.d $(return__) $(ifeq__)
	@$(RM) -f complex/unittest_09/*.o
	$(eval z_name = $@)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -c -unittest -ofcomplex/unittest_09/a.o complex/unittest_09/a.d $(to_log)"))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -c -unittest -ofcomplex/unittest_09/c.o complex/unittest_09/c.d $(to_log)"))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -of$@ complex/unittest_09/a.o complex/unittest_09/c.o $(to_log)"))
	$(analyse_run)

complex/unittest_09/unittest_09_D : complex/unittest_09/b.d complex/unittest_09/d.d $(return__) $(ifeq__)
	@$(RM) -f complex/unittest_09/*.o
	$(eval z_name = $@)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -c -unittest -ofcomplex/unittest_09/b.o complex/unittest_09/b.d $(to_log)"))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -c -unittest -ofcomplex/unittest_09/d.o complex/unittest_09/d.d $(to_log)"))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -of$@ complex/unittest_09/b.o complex/unittest_09/d.o $(to_log)"))
	$(analyse_run)

#
# cleanup
# 
clean ::
	$(RM) complex/unittest_09/*.done $(complex/unittest_09/dest) complex/unittest_09/*.o
	
