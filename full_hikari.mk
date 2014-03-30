#
# Copyright 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers

# Get the long list of APNs
PRODUCT_COPY_FILES += device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_hikari
PRODUCT_DEVICE := hikari
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia acro S
PRODUCT_MANUFACTURER := Sony
PRODUCT_RESTRICT_VENDOR_FILES := false
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26w_1266-3204 BUILD_FINGERPRINT=SEMC/LT26w_1266-3204/LT26w:4.0.4/6.1.A.2.50/zfd_zw:user/release-keys PRIVATE_BUILD_DESC="LT26w-user 4.0.4 6.1.A.2.50 zfd_zw test-keys"

# Inherit from costum vendor
$(call inherit-product, vendor/deedwar/config/common.mk)
# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/sony/hikari/device.mk)
$(call inherit-product-if-exists, vendor/sony/hikari/device-vendor.mk)
