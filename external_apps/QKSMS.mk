LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := QKSMS
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := messaging Mms
LOCAL_SRC_FILES := com.moez.QKSMS_2220.apk
include $(BUILD_PREBUILT)