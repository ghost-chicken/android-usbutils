# Android build config for libuhd
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

LOCAL_PATH := $(call my-dir)
LIBUHD_ROOT_REL := ../../usbhid-dump
LIBUHD_ROOT_ABS := $(LOCAL_PATH)/../../usbhid-dump

# libuhd

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  $(LIBUHD_ROOT_REL)/lib/dev.c \
  $(LIBUHD_ROOT_REL)/lib/dev_list.c \
  $(LIBUHD_ROOT_REL)/lib/iface.c \
  $(LIBUHD_ROOT_REL)/lib/iface_list.c \
  $(LIBUHD_ROOT_REL)/lib/libusb.c

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/.. \
  $(LIBUHD_ROOT_ABS)/include

LOCAL_EXPORT_C_INCLUDES := \
  $(LIBUHD_ROOT_ABS)/include

LOCAL_SHARED_LIBRARIES += libusb1.0

LOCAL_MODULE := libuhd

include $(BUILD_STATIC_LIBRARY)
