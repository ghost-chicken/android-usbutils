# Android build config for usbutils
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
USBUTILS_ROOT_REL := ../..
USBUTILS_ROOT_ABS := $(LOCAL_PATH)/../..
USBHID_DUMP_ROOT_REL := ../../usbhid-dump
USBHID_DUMP_ROOT_ABS := $(LOCAL_PATH)/../../usbhid-dump

# lsusb

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  $(USBUTILS_ROOT_REL)/lsusb.c \
  $(USBUTILS_ROOT_REL)/lsusb-t.c \
  $(USBUTILS_ROOT_REL)/names.c \
  $(USBUTILS_ROOT_REL)/usbmisc.c

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/.. \
  $(USBUTILS_ROOT_ABS)

LOCAL_SHARED_LIBRARIES += libusb1.0

LOCAL_MODULE := lsusb

include $(BUILD_EXECUTABLE)

# usbreset

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  $(USBUTILS_ROOT_REL)/usbreset.c

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/.. \
  $(USBUTILS_ROOT_ABS)

LOCAL_SHARED_LIBRARIES += libusb1.0

LOCAL_MODULE := usbreset

include $(BUILD_EXECUTABLE)

# usbhid-dump

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  $(USBHID_DUMP_ROOT_REL)/src/usbhid-dump.c

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/.. \
  $(USBHID_DUMP_ROOT_ABS)/include

LOCAL_STATIC_LIBRARIES += libuhd
LOCAL_SHARED_LIBRARIES += libusb1.0

LOCAL_MODULE := usbhid-dump

include $(BUILD_EXECUTABLE)
