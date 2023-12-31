#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common config from SyberiaOS configurations
$(call inherit-product, vendor/syberia/common.mk)

# Inherit from socrates device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier
PRODUCT_DEVICE := socrates
PRODUCT_NAME := syberia_socrates
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22127RK46C
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="socrates-user 13 TKQ1.220905.001 V14.0.24.0.TMKCNXM release-keys"

BUILD_FINGERPRINT := Redmi/socrates/socrates:13/TKQ1.220905.001/V14.0.24.0.TMKCNXM:user/release-keys


# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Syberia
SYBERIA_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
FORCE_OTA := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
EXTRA_UDFPS_ANIMATIONS := true
WITH_GMS=true
TARGET_GAPPS_ARCH := arm64

# Use gestures by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural
