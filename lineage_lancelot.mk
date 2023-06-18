#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lancelot device
$(call inherit-product, device/xiaomi/lancelot/device.mk)

PRODUCT_DEVICE := lancelot
PRODUCT_NAME := lineage_lancelot
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := lancelot
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lancelot-user 12 SP1A.210812.016 V14.0.0.1.SJCCNXM release-keys"

BUILD_FINGERPRINT := Redmi/lancelot/lancelot:12/SP1A.210812.016/V14.0.0.1.SJCCNXM:user/release-keys
