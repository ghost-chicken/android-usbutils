# Android application build config for usbutils
# Copyright (C) 2016  Stephan Linz <linz@li-pro.net>
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
# You should have received a copy of the GNU General Public License along
# with this library; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
#

APP_ABI := all

# Enable position independent executables (PIE) that get enabled by default
# with API level 16 and greater.
#
APP_PIE := true

# Workaround for MIPS toolchain linker being unable to find liblog dependency
# of shared object in NDK versions at least up to r13.
#
APP_LDFLAGS := -llog
