# Copyright (C) 2013 The Open SEMC Team
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

# Arbitrary string, comment out for default 'homemade' builds
ROM_BUILDTYPE := OpenSEMC

# Torch
PRODUCT_PACKAGES := \
    OmniTorch

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from omni custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from nozomi device
$(call inherit-product, device/sony/hikari/hikari.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := omni_hikari
PRODUCT_DEVICE := hikari
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia acro S
