# GnuMakefile for dstress

OBJ_DIR = obj
LOG	= log.txt

ifndef DMD
DMD	= dmd
endif

ifdef DEFLAGS
X_DEFLAGS = $(DFLAGS)
endif

DFLAGS 	= $(X_DFLAGS) -od$(OBJ_DIR)

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

dest_run = $(sort $(subst .$(ext_source),.$(ext_run),$(shell $(FIND) run -regex ".*\\.$(ext_source)" ) ) )
dest_run += $(sort $(subst .$(ext_source_html),.$(ext_run),$(shell $(FIND) run -regex ".*\\.$(ext_source_html)" ) ) )

dest_norun = $(sort $(subst .$(ext_source),.$(ext_norun),$(shell $(FIND) norun -regex ".*\\.$(ext_source)" ) ) )
dest_norun += $(sort $(subst .$(ext_source_html),.$(ext_norun),$(shell $(FIND) norun -regex ".*\\.$(ext_source_html)" ) ) )

dest_compile = $(sort $(subst .$(ext_source),.$(ext_compile),$(shell $(FIND) compile -regex ".*\\.$(ext_source)" ) ) )
dest_compile += $(sort $(subst .$(ext_source_html),.$(ext_compile),$(shell $(FIND) compile -regex ".*\\.$(ext_source_html)" ) ) )


dest_nocompile = $(sort $(subst .$(ext_source),.$(ext_nocompile),$(shell $(FIND) nocompile -regex ".*\\.$(ext_source)" ) ) )
dest_nocompile += $(sort $(subst .$(ext_source_html),.$(ext_nocompile),$(shell $(FIND) nocompile -regex ".*\\.$(ext_source_html)" ) ) )

all : compile nocompile run norun 

nocompile : $(dest_nocompile)

%.$(ext_nocompile) : %.$(ext_source)
	@if $(DMD) -c -of$@ $< $(to_log); then $(ECHO) "XPASS: $(subst .$(ext_nocompile),,$@)"; $(RM) $@; else $(ECHO) "FAIL:  $(subst .$(ext_nocompile),,$@)"; $(TOUCH) $@; fi

%.$(ext_nocompile) : %.$(ext_source_html)
	        @if $(DMD) -c -of$@ $< $(to_log); then $(ECHO) "XPASS: $(subst .$(ext_nocompile),,$@)"; $(RM) $@; else $(ECHO) "FAIL:  $(subst .$(ext_nocompile),,$@)"; $(TOUCH) $@; fi


compile : $(dest_compile)

%.$(ext_compile) : %.$(ext_source)
	@if $(DMD) -c -of$@ $< $(to_log) ; then $(ECHO) "PASS:  $(subst .$(ext_compile),,$@)"; $(TOUCH) $@; else $(ECHO) "XFAIL: $(subst .$(ext_compile),,$@)"; $(RM) $@; fi

%.$(ext_compile) : %.$(ext_source_html)
	        @if $(DMD) -c -of$@ $< $(to_log) ; then $(ECHO) "PASS:  $(subst .$(ext_compile),,$@)"; $(TOUCH) $@; else $(ECHO) "XFAIL: $(subst .$(ext_compile),,$@)"; $(RM) $@; fi


run : $(dest_run)

%.$(ext_run) : %.$(ext_source)
	@if $(DMD) $(DFLAGS) -of$@ $< $(to_log); then if $@ $(to_log); then $(ECHO) "PASS:  $(subst .$(ext_run),,$@)"; else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@)"; $(RM) $@; fi else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@) (compiling error)"; fi

%.$(ext_run) : %.$(ext_source_html)
	        @if $(DMD) $(DFLAGS) -of$@ $< $(to_log); then if $@ $(to_log); then $(ECHO) "PASS:  $(subst .$(ext_run),,$@)"; else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@)"; $(RM) $@; fi else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@) (compiling error)"; fi

norun : $(dest_norun)

%.$(ext_norun) : %.$(ext_source)
	@if $(DMD) $(DFLAGS) -of$@ $< $(to_log); then if $@ $(to_log); then $(ECHO) "XPASS:  $(subst .$(ext_norun),,$@)"; else $(ECHO) "FAIL: $(subst .$(ext_norun),,$@)"; $(RM) $@; fi else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@) (compiling error)"; fi

%.$(ext_norun) : %.$(ext_source_html)
	        @if $(DMD) $(DFLAGS) -of$@ $< $(to_log); then if $@ $(to_log); then $(ECHO) "XPASS:  $(subst .$(ext_norun),,$@)"; else $(ECHO) "FAIL: $(subst .$(ext_norun),,$@)"; $(RM) $@; fi else $(ECHO) "XFAIL: $(subst .$(ext_run),,$@) (compiling error)"; fi


clean_log :
	$(RM) $(LOG)

clean :
	$(RM) $(OBJ_DIR)/*.* $(dest_run) $(dest_norun) $(dest_compile) $(dest_nocompile)
