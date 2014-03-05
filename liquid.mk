# Release name
PRODUCT_RELEASE_NAME := GN-CDMA

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# device
$(call inherit-product-if-exists, device/samsung/toroplus/full_toroplus.mk)

# Inherit some common liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := toroplus
PRODUCT_NAME := liquid_toroplus
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
     PRODUCT_NAME=mysidspr \
     BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.3/JWR67B/L700GJ04:user/release-keys" \
     PRIVATE_BUILD_DESC="mysidspr-user 4.3 JWR67B L700GJ04 release-keys"
