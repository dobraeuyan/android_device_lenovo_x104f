#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X104F device
$(call inherit-product, device/lenovo/X104F/device.mk)

PRODUCT_DEVICE := X104F
PRODUCT_NAME := lineage_X104F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X104F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hq_msm8909-user 8.1.0 OPM1.171019.026 1603 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X104F/X104F:8.1.0/OPM1.171019.026/052_200805_ROW:user/release-keys
