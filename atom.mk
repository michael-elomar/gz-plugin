LOCAL_PATH := $(call my-dir)

################################################################################
# gz-plugin
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := gz-plugin
LOCAL_DESCRIPTION := Gazebo plugin

LOCAL_LIBRARIES := gz-cmake gz-utils

LOCAL_CMAKE_CONFIGURE_ARGS := -DBUILD_TESTING:BOOL=False

LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/gz/plugin4

LOCAL_EXPORT_LDLIBS := -lgz-plugin

include $(BUILD_CMAKE)


