#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX2151 device
$(call inherit-product, device/realme/RMX2151/device.mk)

PRODUCT_DEVICE := RMX2151
PRODUCT_NAME := omni_RMX2151
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 7
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_RMX2151-eng 99.87.36 SP2A.220405.004 eng.root.20230612.135457 test-keys"

BUILD_FINGERPRINT := realme/fox_RMX2151/RMX2151:99.87.36/SP2A.220405.004/root06121353:eng/test-keys
