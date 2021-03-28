LOCAL_PATH := device/wolder/miTab_PRO_COLORS

ifeq ($(filter miTab), miTab_PRO_COLORS)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
