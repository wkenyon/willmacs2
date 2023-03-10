### oldXMenu/Makefile.  Generated from Makefile.in by configure.

## Copyright 1985, 1986, 1987 by the Massachusetts Institute of Technology

## Permission to use, copy, modify, and distribute this
## software and its documentation for any purpose and without
## fee is hereby granted, provided that the above copyright
## notice appear in all copies and that both that copyright
## notice and this permission notice appear in supporting
## documentation, and that the name of M.I.T. not be used in
## advertising or publicity pertaining to distribution of the
## software without specific, written prior permission.
## M.I.T. makes no representations about the suitability of
## this software for any purpose.  It is provided "as is"
## without express or implied warranty.


## Copyright (C) 2001-2022 Free Software Foundation, Inc.

## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.


### Commentary:

## To the best of our knowledge, this code was originally based on the
## X11 oldXMenu Makefile, which was automatically generated from the
## X11 oldXMenu Imakefile.  There was no explicit copyright information
## in the Imakefile, therefore we have added the same MIT license as
## used by the rest of the oldXMenu code.


### Code:

srcdir=.
top_builddir = ..
# MinGW CPPFLAGS may use this.
abs_top_srcdir=/scratch/willmacs/emacs-28.2

C_SWITCH_X_SITE= -pthread -I/usr/include/gtk-3.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include -I/usr/include/gtk-3.0 -I/usr/include/gio-unix-2.0 -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/fribidi -I/usr/include/harfbuzz -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include
C_SWITCH_SYSTEM=
C_SWITCH_MACHINE=
PROFILING_CFLAGS = 
WARN_CFLAGS = 
WERROR_CFLAGS = 

EXTRA=insque.o
CC=/usr/bin/gcc-10
CFLAGS=-g3 -O2
CPPFLAGS =   

RM = rm -f
RANLIB = ranlib
AR = ar
ARFLAGS = cr
MKDIR_P = /usr/bin/mkdir -p
EXEEXT = 

OBJS =  Activate.o \
	AddPane.o \
	AddSel.o \
	ChgPane.o \
	ChgSel.o \
	Create.o \
	DelPane.o \
	DelSel.o \
	Destroy.o \
	Error.o \
	EvHand.o \
	FindPane.o \
	FindSel.o \
	InsPane.o \
	InsSel.o \
	Internal.o \
	Locate.o \
	Post.o \
	Recomp.o \
	SetAEQ.o \
	SetFrz.o \
	SetPane.o \
	SetSel.o \
      XDelAssoc.o XLookAssoc.o XCrAssoc.o XDestAssoc.o XMakeAssoc.o

all: libXMenu11.a
.PHONY: all

-include ${top_builddir}/src/verbose.mk

AUTO_DEPEND = yes
DEPDIR = deps
ifeq ($(AUTO_DEPEND),yes)
  DEPFLAGS = -MMD -MF $(DEPDIR)/$*.d -MP
  -include $(ALLOBJS:%.o=$(DEPDIR)/%.d)
else
  DEPFLAGS =
  include $(srcdir)/deps.mk
endif

ALL_CFLAGS=$(C_SWITCH_SYSTEM) $(C_SWITCH_MACHINE) \
  $(C_SWITCH_X_SITE) $(DEPFLAGS) \
  $(WARN_CFLAGS) $(WERROR_CFLAGS) ${PROFILING_CFLAGS} \
  $(CPPFLAGS) $(CFLAGS) -DEMACS_BITMAP_FILES \
  -I../src -I../lib -I${srcdir} -I${srcdir}/../src -I${srcdir}/../lib

.c.o:
	$(AM_V_CC)$(CC) -c ${ALL_CFLAGS} $<

libXMenu11.a: $(OBJS) $(EXTRA)
	$(AM_V_GEN)$(RM) $@
	$(AM_V_at)$(AR) $(ARFLAGS) $@ $(OBJS) $(EXTRA)
	$(AM_V_at)$(RANLIB) $@

.PHONY: mostlyclean clean distclean bootstrap-clean maintainer-clean

clean mostlyclean:
	rm -f libXMenu11.a ./*.o $(DEPDIR)/*

bootstrap-clean maintainer-clean distclean: clean
	rm -f Makefile
	rm -fr $(DEPDIR)

ETAGS = ../lib-src/etags${EXEEXT}

${ETAGS}: FORCE
	${MAKE} -C ../lib-src $(notdir $@)

tagsfiles = $(wildcard ${srcdir}/*.[ch])

FORCE:
.PHONY: tags FORCE
tags: TAGS
TAGS: ${ETAGS} ${tagsfiles}
	${ETAGS} ${tagsfiles}

### Makefile.in ends here
