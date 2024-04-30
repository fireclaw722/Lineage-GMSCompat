LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := K9Mail
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OPTIONAL_USES_LIBRARIES := com.sec.android.app.multiwindow androidx.window.extensions androidx.window.sidecar
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := k9-6.801.apk
include $(BUILD_PREBUILT)