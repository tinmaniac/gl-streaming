THIS_PATH := $(call my-dir)
#include $(THIS_PATH)/../../../gl_server/jni/Android.mk

LOCAL_PATH := $(THIS_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE    := GLStreamServerNativeActivity

LOCAL_SRC_FILES := GLStreamServerNativeActivity.cpp TeapotRenderer.cpp
#LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../gl_server
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2
#LOCAL_STATIC_LIBRARIES := gl_server cpufeatures android_native_app_glue ndk_helper
LOCAL_STATIC_LIBRARIES := cpufeatures android_native_app_glue ndk_helper

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/ndk_helper)
$(call import-module,android/native_app_glue)
$(call import-module,android/cpufeatures)
