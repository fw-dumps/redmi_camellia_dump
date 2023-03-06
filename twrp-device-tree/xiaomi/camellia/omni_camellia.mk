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

# Inherit from camellia device
$(call inherit-product, device/xiaomi/camellia/device.mk)

PRODUCT_DEVICE := camellia
PRODUCT_NAME := omni_camellia
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2103K19C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="camellia-user 12 SP1A.210812.016 V13.0.6.0.SKSINXM release-keys"

BUILD_FINGERPRINT := Redmi/camellia/camellia:12/SP1A.210812.016/V13.0.6.0.SKSINXM:user/release-keys
