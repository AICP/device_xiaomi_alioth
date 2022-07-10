#
# Copyright (C) 2021 The AicpOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common aicp stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := aicp_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="alioth_global-user 11 RKQ1.200826.002 V13.0.2.0.SKHMIXM release-keys"

PRODUCT_OVERRIDE_INFO := true
PRODUCT_OVERRIDE_FINGERPRINT := google/raven/raven:12/SQ3A.220705.003.A1/8672226:user/release-keys

BUILD_FINGERPRINT := POCO/alioth_global/alioth:12/RKQ1.200826.002/V13.0.2.0.SKHMIXM:user/release-keys
