SHELL=/bin/sh

# GDC, GNU D Compiler, GNU Makefile for install
# Written by Anders F Bjorklund <afb@algonet.se>

GCC_VERSION=3.3.5
GDC_VERSION=0.10

MAJOR=3.3
PREFIX=/usr/local/gcc-$(MAJOR)

DESTDIR=

########################################################################

## ORIG ftp://ftp.gnu.org/gnu/gcc/gcc-${GCC_VERSION}/gcc-${GCC_VERSION}.tar.bz2
## ORIG http://home.earthlink.net/~dvdfrdmn/d/gdc-${GDC_VERSION}.tar.bz2

GCC_MIRROR=http://www.mirrorservice.org/sites/sources.redhat.com/pub/gcc/releases
GDC_MIRROR=http://home.earthlink.net/~dvdfrdmn/d

OS=$(shell uname)
ARCH=$(shell arch)

ifeq ("$(OS)","Darwin")
TAR=gnutar
MAKE=gnumake
WGET=curl -O -k
else # "Linux"
TAR=tar
MAKE=make
WGET=wget -N
endif

CC=gcc
CXX=g++

# XXX: GCC doesn't build with march/mcpu on Linux ?
ifeq ("$(ARCH)","ppc")
COPT=-Os -pipe
CARCH=
#CARCH=-mcpu=powerpc -mtune=750
## CARCH=-mcpu=G4
else # "i386"
COPT=-O2 -g -pipe
CARCH=
#CARCH=-march=i386 -mcpu=i686
## CARCH=-march=pentium4
endif

CFLAGS=$(COPT) $(CARCH)

########################################################################

all: gdc
install: gdc-install phobos phobos-install

.PHONY: prep gdc gdc-install phobos phobos-install clean

gcc-$(GCC_VERSION).tar.bz2:
	$(WGET) "$(GCC_MIRROR)/gcc-$(GCC_VERSION)/gcc-$(GCC_VERSION).tar.bz2"

gdc-$(GDC_VERSION).tar.bz2:
	$(WGET) "$(GDC_MIRROR)/gdc-$(GDC_VERSION).tar.bz2"

prep: gcc-$(GCC_VERSION).tar.bz2 gdc-$(GDC_VERSION).tar.bz2
	$(TAR) xjf gcc-$(GCC_VERSION).tar.bz2; \
	cd gcc-$(GCC_VERSION); \
	patch -p1 -b -z .framework -i ../gcc-$(GCC_VERSION)-framework-headers.patch || true; \
	patch -p1 -b -z .framework -i ../gcc-$(GCC_VERSION)-framework-linker.patch || true; \
	cd gcc; \
	$(TAR) xjf ../../gdc-$(GDC_VERSION).tar.bz2; \
	patch -p1 --forward -i d/patch-gcc-$(MAJOR).x; \
	patch -p0 -b -z .framework -i ../../gdc-0.8-framework.patch || true; \
	cd ../..;
	mkdir -p gcc-$(GCC_VERSION)/phobos

gcc-$(GCC_VERSION)/configure:
	$(MAKE) prep

gdc: gcc-$(GCC_VERSION)/configure
	cd gcc-$(GCC_VERSION); \
	CFLAGS="$(CFLAGS)" CXXFLAGS="$(CFLAGS)" \
	./configure --prefix=$(PREFIX) --enable-languages=c,d,c++ && \
	$(MAKE)

gdc-install:
	cd gcc-$(GCC_VERSION); \
	$(MAKE) install DESTDIR=$(DESTDIR)
	@echo ""
	@echo "To use your new D compiler, add $(PREFIX)/bin to your PATH,"
	@echo "Using something like: export PATH=\"$(PREFIX)/bin:\$$PATH\""

gcc-$(GCC_VERSION)/gcc/d/phobos/configure:
	$(MAKE) prep

phobos: gcc-$(GCC_VERSION)/gcc/d/phobos/configure
	if echo "$(OS)" | grep -i "CYGWIN"; then \
	( cd gcc-$(GCC_VERSION)/gcc/d/phobos && sh prepcygwin.sh ); fi
	cd gcc-$(GCC_VERSION)/phobos; \
	export PATH="$(PREFIX)/bin:$$PATH"; \
	DFLAGS="$(CFLAGS) -frelease" \
	../gcc/d/phobos/configure --prefix=$(PREFIX) && \
	$(MAKE)

phobos-install:
	cd gcc-$(GCC_VERSION)/phobos; \
	export PATH="$(PREFIX)/bin:$$PATH"; \
	$(MAKE) install DESTDIR=$(DESTDIR)

clean:
	rm -rf gcc-$(GCC_VERSION)

