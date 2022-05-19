#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2019-Present A-Team Digital Solutions
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from U696CL device
$(call inherit-product, device/umx/U696CL/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/umx/U696CL/recovery/root,recovery/root)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := U696CL
PRODUCT_NAME := twrp_U696CL
PRODUCT_BRAND := Umx
PRODUCT_MODEL := U696CL
PRODUCT_MANUFACTURER := umx
PRODUCT_RELEASE_NAME := Umx U696CL

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    persist.sys.usb.configfs=1
