LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MULTILIB := 64
LOCAL_MODULE := libwvaidl
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_CHECK_ELF_FILES := false
LOCAL_SRC_FILES := prebuilts/lib64/libwvaidl.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.drm-service-lazy.widevine
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := prebuilts/bin/hw/android.hardware.drm-service-lazy.widevine
LOCAL_INIT_RC := prebuilts/etc/init/android.hardware.drm-service-lazy.widevine.rc
LOCAL_VINTF_FRAGMENTS := prebuilts/etc/vintf/manifest/manifest_android.hardware.drm-service.widevine.xml
LOCAL_CHECK_ELF_FILES := false
LOCAL_REQUIRED_MODULES := libdrmclearkeyplugin libwvaidl
LOCAL_POST_INSTALL_CMD := \
    ln -s libprotobuf-cpp-lite-3.9.1.so $(TARGET_OUT_VENDOR)/lib/libprotobuf-cpp-lite.so; \
    ln -s libprotobuf-cpp-lite-3.9.1.so $(TARGET_OUT_VENDOR)/lib64/libprotobuf-cpp-lite.so;
include $(BUILD_PREBUILT)
