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
# NOTE: almost all tests can be written using §DSTRESS_FLAGS§
#

.PHONY: \
	complex/command_line/warning \
	complex/command_line/$(complex_done) \
	complex/command_line/clean

complex/command_line/warning :
	@echo "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/command_line/complex.done\", \"complex\" or \"all\""

#
# name__command__line__arguments.cmdnullfail
#
# all double underscores in the arguments will be replaced by whitespace 
#
complex/command_line/raw = \
	complex/command_line/command_line_null_source_01__-c.cmdnullfail \
	complex/command_line/command_line_null_source_02__.cmdnullfail \
	complex/command_line/command_line_null_source_03__-c__"".cmdnullfail \
	complex/command_line/command_line_null_source_04__"".cmdnullfail \
	complex/command_line/command_line_null_source_05__-c__..d.cmdnullfail \
	complex/command_line/command_line_null_source_06__..d.cmdnullfail

# the actual target, will be called by root's "all" / "complex" target
complex/command_line/$(complex_done) : $(complex/command_line/raw)

#
# try running without any additional source agruments
# (should fail)
#
%.cmdnullfail : 
	$(eval z_raw = $(subst __, ,$*))
	$(eval z_name = $(word 1,$(z_raw)))
	$(eval z_arg = $(subst $(z_name),,$(z_raw)))
	@if $(CD) complex/command_line ; $(DMD) $(z_arg) $(to_log); then \
		$(ECHO) "XPASS: $(z_name)"; \
	else \
		$(ECHO) "XFAIL: $(z_name)"; \
	fi 
	
# this will be called by root's "clean" target
complex/command_line/clean :
	$(RM) complex/command_line/*.done complex/command_line/*.$(dest_compile) complex/command_line/*.cmdnullfail complex/command_line/a.out

