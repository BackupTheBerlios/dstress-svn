# $HeadURL$
# $Date$

ifndef DMD
DMD = dmd
endif

ifndef RM
RM = rm
endif

DFLAGS += -O -inline -release

SOURCES = fft.d kernel.d stopwatch.d random.d sor.d sparsematmult.d \
	      array.d montecarlo.d lu.d constants.d scimark2.d

OBJS = fft.o kernel.o stopwatch.o random.o sor.o sparsematmult.o \
	   array.o montecarlo.o lu.o constants.o scimark2.o

all: scimark2

scimark2 : $(SOURCES)
	$(DMD) -ofscimark2 $(DFLAGS) $(SOURCES)

clean :
	$(RM) scimark2 $(OBJS)

.PHONY : all clean
