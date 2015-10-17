# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/armani/full_armani.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 854
TARGET_SCREEN_HEIGHT := 480

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := armani_row
PRODUCT_NAME := cm_armani_row
PRODUCT_DEVICE := armani_row
PRODUCT_BRAND := LENOVO
PRODUCT_MODEL := A706_ROW
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# Set build fingerprint / ID / Product name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Lenovo/armani_row/armani_row:4.1.2/JZO54K/A706_ROW_S123_140116:user/dev-keys" \
    PRODUCT_BRAND=LENOVO \
    PRODUCT_NAME=armani_row \
    BUILD_PRODUCT=A706_ROW \
    PRIVATE_BUILD_DESC="armani_row-user 4.1.2 JZO54K A706_ROW_S123_140116 release-keys"

