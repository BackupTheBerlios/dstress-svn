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
	complex/object_02/warning \
	complex/object_02/$(complex_done) \
	complex/object_02/clean \
	complex/object_02/dest
	
complex/object_02/warning :
	$(error "don't invoke this file directly, instead use DStress' root Makefile with the target \"complex/object_02/complex.done\", \"complex\" or \"all\"")

complex/object_02/dest = \
	complex/object_02/object_02_A

# the actual target, will be called by root's "all" / "complex" target
complex/object_02/$(complex_done) : $(complex/object_02/dest) $(return__) $(ifeq__)

#
# compile or nocompile but don't crash
#
complex/object_02/object_02 : complex/object_02/object.d $(return__) $(ifeq__)
	@$(RM) -f complex/object_02/*.o
	$(eval z_name = $@)
	$(eval z_return = $(shell cd complex/object_02; $(return__) "$(DMD) $(DFLAGS) -od$(OBJ_DIR) object.d $(to_log)"))
	@if $(ifeq__) $(z_return) 0; then \
		 $(ECHO) "Torture-Sub-1/31-PASS: $(z_name)"; \
	else \
		if $(ifeq__) $(z_return) 256; then \
			$(ECHO) "Torture-Sub-1/31-PASS: $(z_name)"; \
		else \
			$(ECHO) "Torture-Sub-1/31-ERROR: $(z_name)"; \
		fi \
	fi 

#
# cleanup
# 
clean ::
	$(RM) complex/object_02/*.done $(complex/object_02/dest) complex/object_02/*.o
	
