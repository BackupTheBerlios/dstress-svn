# GnuMakefile for dstress

ifndef OBJ_DIR
OBJ_DIR = obj
endif

ifndef LOG
LOG	= log.txt
endif

ifndef DMD
DMD	= dmd
endif

ifndef FIND
FIND	= find 
endif 

ifndef RM
RM	= rm -rf
endif

ifndef ECHO
ECHO	= echo
endif

ifndef TOUCH
TOUCH	= touch
endif

ifndef MAKE
MAKE 	= make
endif

to_log = >> $(LOG) 2>&1
ext_run = exe
ext_norun = bin
ext_nocompile = no
ext_compile = o
ext_source = d
ext_source_html = html

all : Makefile compile nocompile run norun

.PHONY: all compile nocompile run norun clean distclean clean_log log


nocompile : Makefile $(sort $(subst .$(ext_source),.$(ext_nocompile),$(shell $(FIND) nocompile -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_nocompile),$(shell $(FIND) nocompile -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_nocompile) : %.$(ext_source) Makefile
	@if $(DMD) $(DFLAGS) -c -of$@ $< $(to_log); then $(ECHO) "XPASS: $(subst .$(ext_nocompile),,$@)"; $(RM) $@; else $(ECHO) "FAIL:  $(subst .$(ext_nocompile),,$@)"; $(TOUCH) $@; fi

%.$(ext_nocompile) : %.$(ext_source_html) Makefile
	@if $(DMD) $(DFLAGS) -c -of$@ $< $(to_log); then $(ECHO) "XPASS: $(subst .$(ext_nocompile),,$@)"; $(RM) $@; else $(ECHO) "FAIL:  $(subst .$(ext_nocompile),,$@)"; $(TOUCH) $@; fi


compile : Makefile $(sort $(subst .$(ext_source),.$(ext_compile),$(shell $(FIND) compile -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_compile),$(shell $(FIND) compile -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_compile) : %.$(ext_source) Makefile
	@if $(DMD) $(DFLAGS) -c -of$@ $< $(to_log) ; then $(ECHO) "PASS:  $(subst .$(ext_compile),,$@)"; $(TOUCH) $@; else $(ECHO) "XFAIL: $(subst .$(ext_compile),,$@)"; $(RM) $@; fi

%.$(ext_compile) : %.$(ext_source_html) Makefile
	@if $(DMD) $(DFLAGS) -c -of$@ $< $(to_log) ; then $(ECHO) "PASS:  $(subst .$(ext_compile),,$@)"; $(TOUCH) $@; else $(ECHO) "XFAIL: $(subst .$(ext_compile),,$@)"; $(RM) $@; fi


run : Makefile $(sort $(subst .$(ext_source),.$(ext_run),$(shell $(FIND) run -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_run),$(shell $(FIND) run -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_run) : %.$(ext_source) Makefile
	@if $(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log); then if $@ $(to_log); then $(ECHO) "PASS:  $(subst .$(ext_run),,$@)"; else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@)"; $(RM) $@; fi else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@) (compiling error)"; fi

%.$(ext_run) : %.$(ext_source_html) Makefile
	@if $(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log); then if $@ $(to_log); then $(ECHO) "PASS:  $(subst .$(ext_run),,$@)"; else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@)"; $(RM) $@; fi else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@) (compiling error)"; fi


norun : Makefile $(sort $(subst .$(ext_source),.$(ext_norun),$(shell $(FIND) norun -regex ".*\\.$(ext_source)" ) ) $(subst .$(ext_source_html),.$(ext_norun),$(shell $(FIND) norun -regex ".*\\.$(ext_source_html)" ) ) )

%.$(ext_norun) : %.$(ext_source) Makefile
	@if $(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log); then if $@ $(to_log); then $(ECHO) "XPASS:  $(subst .$(ext_norun),,$@)"; $(RM) $@; else $(ECHO) "FAIL: $(subst .$(ext_norun),,$@)"; fi else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@) (compiling error)"; $(RM) $@; fi

%.$(ext_norun) : %.$(ext_source_html) Makefile
	@if $(DMD) $(DFLAGS) -od$(OBJ_DIR) -of$@ $< $(to_log); then if $@ $(to_log); then $(ECHO) "XPASS:  $(subst .$(ext_norun),,$@)"; $(RM) $@; else $(ECHO) "FAIL: $(subst .$(ext_norun),,$@)"; fi else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@) (compiling error)"; $(RM) $@; fi


log : distclean all
	

distclean : clean_log clean
	

clean_log :
	$(RM) $(LOG)

clean :
	$(RM) $(OBJ_DIR)/?*.o run/?*.$(ext_run) norun/?*.$(ext_norun) compile/?*.$(ext_compile) nocompile/?*.$(ext_nocompile)
