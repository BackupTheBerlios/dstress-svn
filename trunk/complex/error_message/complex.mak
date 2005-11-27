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
	complex/error_message/warning \
	complex/error_message/$(complex_done) \
	complex/error_message/clean

.SUFFIXES:: \
	.error_count
	
complex/error_message/warning :
	@echo "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/error_message/complex.done\", \"complex\" or \"all\""

#
# name__command__line__arguments.cmdnullfail
#
# all double underscores in the arguments will be replaced by whitespace 
#
complex/error_message/raw = \
	complex/error_message/__error_message_01_A.error_count \
	complex/error_message/__error_message_01_B.error_count \
	complex/error_message/__error_message_01_C.error_count

# the actual target, will be called by root's "all" / "complex" target
complex/error_message/$(complex_done) : $(complex/error_message/raw)

%.error_count : 
	$(eval z_raw = $(subst __, ,$*))
	$(eval z_name = $(word 2,$(z_raw)))
	$(eval z_arg = $(subst __,,$(subst ,.d,$(z_name))))
	@if $(CD) complex/error_message ; $(DMD) -c $(z_arg) | wc -l | grep "^[0-9][0-9][0-9]" $(to_log); then \
		$(ECHO) "FAIL: $(z_name)"; \
	else \
		$(ECHO) "PASS: $(z_name)"; \
	fi 
	
# this will be called by root's "clean" target
complex/error_message/clean :
	$(RM) complex/error_message/*.done complex/error_message/*.$(dest_compile)

