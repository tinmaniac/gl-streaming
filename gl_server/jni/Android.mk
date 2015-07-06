LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := gl_server
LOCAL_SRC_FILES := ../fifo.c \
                   ../glcontrol.c \
                   ../server.c \
                   ../glserver.c

LOCAL_C_INCLUDES := ../
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/gl_server

LOCAL_CFLAGS := -O3 -Wall

include $(BUILD_STATIC_LIBRARY)
