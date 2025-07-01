#
# SPDX-FileCopyrightText: LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/manaus/device.mk)

# Inherit some common lineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_manaus
PRODUCT_DEVICE := manaus
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 neo

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=manaus \
    BuildDesc="manaus_g_sys-user 14 U1TMS34.107-34-9-3-4 5beb9-cde7fb release-keys" \
    BuildFingerprint=motorola/manaus_g_hal/manaus:12/U1TMS34.107-34-9-3-4/7f92b:user/release-keys
