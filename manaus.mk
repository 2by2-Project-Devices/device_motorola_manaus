#
# SPDX-FileCopyrightText: PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/manaus/device.mk)

# Inherit some common 2by2 stuff.
$(call inherit-product, vendor/2by2/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := manaus
PRODUCT_DEVICE := manaus
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 neo

CUSTOM_PROCESSOR_INFO := Mediatek Dimensity 7030

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=manaus \
    BuildDesc="manaus_g_sys-user 14 U1TDS34.94-12-9-10-2 e34746-5853b release-keys" \
    BuildFingerprint=motorola/manaus_g_sys/manaus:14/U1TDS34.94-12-9-10-2/e34746-5853b:user/release-keys
