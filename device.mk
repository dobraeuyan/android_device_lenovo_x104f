#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \
    init.qcom.syspart_fixup.sh \
    init.qcom.sh \
    init.qcom.crashdata.sh \
    init.qti.fm.sh \
    init.class_main.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sensors.sh \
    init.qcom.usb.sh \
    init.qcom.sdio.sh \
    init.qcom.coex.sh \
    init.qcom.post_boot.sh \
    init.qti.ims.sh \
    init.qcom.wifi.sh \
    qca6234-service.sh \
    init.qcom.early_boot.sh \
    init.mdm.sh \
    init.crda.sh \
    init.qcom.class_core.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.msm.usb.configfs.rc \
    init.qcom.usb.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.target.rc \
    init.recovery.qcom.rc \
    init.rc \
    ueventd.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 27

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/lenovo/X104F/X104F-vendor.mk)
