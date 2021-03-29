LOCAL_PATH := device/wolder/miTab_PRO_COLORS

ifeq ($(TARGET_DEVICE), miTab_PRO_COLORS)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
