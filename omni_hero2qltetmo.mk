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

# Inherit from hero2qltetmo device
$(call inherit-product, device/samsung/hero2qltetmo/device.mk)

PRODUCT_DEVICE := hero2qltetmo
PRODUCT_NAME := omni_hero2qltetmo
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G935T
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-hms-tmobile-us

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hero2qltetmo-user 8.0.0 R16NW G935TUVSBCTA2 release-keys"

BUILD_FINGERPRINT := samsung/hero2qltetmo/hero2qltetmo:8.0.0/R16NW/G935TUVSBCTA2:user/release-keys
