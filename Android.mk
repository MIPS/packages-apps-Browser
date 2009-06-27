LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := user

# TODO: Remove dependency of application on the test runner (android.test.runner) 
# library.
LOCAL_JAVA_LIBRARIES := android.test.runner

LOCAL_STATIC_JAVA_LIBRARIES := google-framework

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_PACKAGE_NAME := Browser

#ifeq ($(strip $(TARGET_ARCH)),mips)
LOCAL_ASSET_DIR := $(LOCAL_PATH)/arch-mips/assets
#endif

include $(BUILD_PACKAGE)
