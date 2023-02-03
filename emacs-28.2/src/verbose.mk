### verbose.mk --- Makefile fragment for GNU Emacs

## Copyright (C) 2021-2022 Free Software Foundation, Inc.

## This file is part of GNU Emacs.

## GNU Emacs is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## GNU Emacs is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

# 'make' verbosity.
V = 0
ifeq (${V},1)
AM_V_AR =
AM_V_at =
AM_V_CC =
AM_V_CCLD =
AM_V_ELC =
AM_V_ELN =
AM_V_GEN =
AM_V_GLOBALS =
AM_V_NO_PD =
AM_V_RC =
else
AM_V_AR = @echo "  AR      " $@;
AM_V_at = @
AM_V_CC = @echo "  CC      " $@;
AM_V_CCLD = @echo "  CCLD    " $@;
ifeq ($(HAVE_NATIVE_COMP),yes)
ifeq ($(NATIVE_DISABLED),1)
AM_V_ELC = @echo "  ELC     " $@;
AM_V_ELN =
else
AM_V_ELC = @echo "  ELC+ELN " $@;
AM_V_ELN = @echo "  ELN " $@;
endif
else
AM_V_ELC = @echo "  ELC     " $@;
AM_V_ELN =
endif
AM_V_GEN = @echo "  GEN     " $@;
AM_V_GLOBALS = @echo "  GEN     " globals.h;
AM_V_NO_PD = --no-print-directory
AM_V_RC = @echo "  RC      " $@;
endif
