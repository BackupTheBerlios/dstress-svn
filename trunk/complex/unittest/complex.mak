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
	complex/unittest/warning \
	complex/unittest/$(complex_done) \
	complex/unittest/run \
	complex/unittest/nocompile \
	complex/unittest/clean 

complex/unittest/warning :
	@echo "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/unittest/complex.done\", \"complex\" or \"all\""

ext_unittest_run = unittest.$(ext_run)
ext_unittest_nocompile = unittest.$(ext_nocompile)

# this will be called by root's "all" / "complex" target
complex/unittest/$(complex_done) : complex/unittest/run complex/unittest/nocompile

complex/unittest/run : $(sort $(subst .$(ext_source),.$(ext_unittest_run),$(shell $(FIND) complex/unittest/run -regex ".*\\.$(ext_source)" )))

complex/unittest/nocompile : $(sort $(subst .$(ext_source),.$(ext_unittest_nocompile),$(shell $(FIND) complex/unittest/nocompile -regex ".*\\.$(ext_source)" )))

#
# target should fail to compile
#
%.$(ext_unittest_nocompile) : %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_unittest_nocompile),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) -unittest $(DFLAGS) -c -of$@ $< $(to_log)"))
	$(analyse_nocompile)

# 
# target should compile, link and run
# 
%.$(ext_unittest_run) :  %.$(ext_source) basic_tools
	$(eval z_name = $(subst .$(ext_unittest_run),,$@))
	$(eval z_return = $(shell $(return__) "$(DMD) $(DFLAGS) -unittest -od$(OBJ_DIR) -of$@ $< $(to_log)"))
	$(analyse_run)


# this will be called by root's "clean" target
complex/unittest/clean :
	$(RM) complex/unittest/$(complex_done) complex/unittest/run/*.$(ext_unittest_run) complex/unittest/nocompile/?*.$(ext_nocompile)

