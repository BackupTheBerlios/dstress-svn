ifndef DMD
DMD = dmd
endif

DFLAGS += -O -I..

SOURCES = FFT.d kernel.d Stopwatch.d Random.d SOR.d SparseCompRow.d \
	  array.d MonteCarlo.d LU.d constants.d scimark2.d

OBJS = FFT.o kernel.o Stopwatch.o Random.o SOR.o SparseCompRow.o \
	array.o MonteCarlo.o LU.o constants.o scimark2.o

all: scimark2

scimark2 : $(SOURCES)
	$(DMD) -ofscimark2 $(DFLAGS) $(SOURCES)

clean :
	rm $(OBJS)
