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
	complex/arguments/warning \
	complex/arguments/$(complex_done) \
	complex/arguments/clean \
	complex/arguments/dest
	
complex/arguments/warning :
	$(error "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/arguments/complex.done\", \"complex\" or \"all\"")

complex/arguments/dest = \
	complex/arguments/arguments_01.join \
	complex/arguments/arguments_02.join \
	complex/arguments/arguments_03.join \
	complex/arguments/arguments_04.join \
	complex/arguments/arguments_05.join \
	complex/arguments/arguments_01.split \
	complex/arguments/arguments_02.split \
	complex/arguments/arguments_03.split \
	complex/arguments/arguments_04.split \
	complex/arguments/arguments_05.split 

# the actual target, will be called by root's "all" / "complex" target
complex/arguments/$(complex_done) : $(complex/arguments/dest) $(return__) $(ifeq__)

#
# compile all 3 files in 1 step -> link, execute
#
complex/arguments/arguments_%.join : complex/arguments/arguments_%_A.d complex/arguments/arguments_%_X.d $(return__) $(ifeq__)
	@$(RM) -f complex/arguments/*.o
	$(eval z_name = $@)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $(wordlist 1,2,$^) $(to_log)"))
	$(analyse_run)

#
# compile 2 files in 3 steps -> link, execute
#
complex/arguments/arguments_%.split : complex/arguments/arguments_%_A.d complex/arguments/arguments_%_X.d $(return__) $(ifeq__)
	@$(RM) -f complex/arguments/*.o
	$(eval z_name = $@_Y)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -ofcomplex/arguments/a.o $(word 1,$^) $(to_log)"))
	$(analyse_compile)

	$(eval z_name = $@_Z)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) $(z_flags) -c -ofcomplex/arguments/b.o $(word 2,$^) $(to_log)"))
	$(analyse_compile)

	$(eval z_name = $@)
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -of$@ complex/arguments/a.o complex/arguments/b.o $(to_log)"))
	$(analyse_run)

# this will be called by root's "clean" target
complex/arguments/clean :
	$(RM) complex/arguments/*.done  complex/arguments/*.join complex/arguments/*.split  $(complex/arguments/dest) complex/arguments/*.o
	
