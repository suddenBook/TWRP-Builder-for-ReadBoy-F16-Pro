#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tb8788p1_64_wifi device
$(call inherit-product, device/readboy/tb8788p1_64_wifi/device.mk)

PRODUCT_DEVICE := tb8788p1_64_wifi
PRODUCT_NAME := omni_tb8788p1_64_wifi
PRODUCT_BRAND := readboy
PRODUCT_MODEL := Readboy_F16Pro
PRODUCT_MANUFACTURER := readboy

PRODUCT_GMS_CLIENTID_BASE := android-joyar

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8788p1_64_wifi-user 10 QP1A.190711 202311060839 release-keys"

BUILD_FINGERPRINT := readboy/full_tb8788p1_64_wifi/tb8788p1_64_wifi:10/QP1A.190711/202311060839:user/release-keys
