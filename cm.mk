# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 854
TARGET_SCREEN_HEIGHT := 480

# Release name
PRODUCT_RELEASE_NAME := armani
PRODUCT_NAME := cm_armani

$(call inherit-product, device/lenovo/armani/full_armani.mk)

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Lenovo/armani_row/armani_row:4.1.2/JZO54K/A706_ROW_S123_140116:user/dev-keys" \
    PRODUCT_BRAND=LENOVO \
    PRODUCT_NAME=armani \
    BUILD_PRODUCT=A706_ROW

