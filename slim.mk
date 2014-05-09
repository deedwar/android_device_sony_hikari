# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/sony/hikari/full_hikari.mk)

# Release name
PRODUCT_RELEASE_NAME := hikari

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hikari
PRODUCT_NAME := slim_hikari
PRODUCT_BRAND := Xperia
PRODUCT_MODEL := Acro S
PRODUCT_MANUFACTURER := Sony
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26w_1266-3204 BUILD_FINGERPRINT=SEMC/LT26w_1266-3204/LT26w:4.0.4/6.1.A.2.50/zfd_zw:user/release-keys PRIVATE_BUILD_DESC="LT26w-user 4.0.4 6.1.A.2.50 zfd_zw test-keys"

