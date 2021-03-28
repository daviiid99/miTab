# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from miTab_PRO_COLORS device
$(call inherit-product, device/wolder/miTab_PRO_COLORS/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := miTab_PRO_COLORS
PRODUCT_NAME := omni_miTab_PRO_COLORS
PRODUCT_BRAND := wolder
PRODUCT_MODEL := miTab PRO COLORS
PRODUCT_MANUFACTURER := wolder
PRODUCT_RELEASE_NAME := wolder miTab PRO COLORS

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
