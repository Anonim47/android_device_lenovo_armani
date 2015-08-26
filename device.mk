$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lenovo/armani_row/armani_row-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/armani/overlay

# System Properties
-include device/lenovo/armani/system_prop.mk

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_armani
PRODUCT_DEVICE := armani

LOCAL_PATH := device/lenovo/armani

PRODUCT_LOCALES := id_ID
PRODUCT_LOCALES += en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BOOT_JARS += qcmediaplayer

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

#Root
PRODUCT_PACKAGES += \
   fstab.qcom \
   ueventd.qcom.rc \
   init.target.rc \
   init.qcom.usb.rc \
   init.qcom.rc

#Charger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/rootdir/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/rootdir/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/rootdir/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/rootdir/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/rootdir/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/rootdir/charger/battery_0.png:root/res/images/charger/battery_charge.png

# Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/config/dhcpcd.conf:system/etc/dhcpcd.conf \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs_7627a.xml:system/etc/media_codecs.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio_policy.conf \
    audio_policy.msm7x27a \
    audio.r_submix.default \
    audio.usb.default \
    libaudioparameter \
    libaudio-resampler \
    libtinyalsa \
    libaudio-resampler \
    libaudioparameter \
    libdashplayer

# Display
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libc2dcolorconvert \
    liboverlay \
    libtilerenderer \
    libgenlock \
    libqdutils \
    libqdMetaData

 # GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a

# Keys
PRODUCT_PACKAGES += \
    7x27a_kp.kcm \
    atmel_mxt_ts.kl \
    synaptics_rmi4_i2c.kl \
    ft5x06_ts.kl \
    surf_keypad.kl \
    7k_handset.kl \
    7x27a_kp.kl \
    ft6306.kl

# Filesystem management tools
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    hwmac \
    make_ext4fs \
    setup_fs

# Misc
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libcnefeatureconfig \
    libnl_2

# Lights
PRODUCT_PACKAGES += \
   lights.msm7x27a

# OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libc2dcolorconvert

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf \
    wpa_supplicant.conf \
    wpa_supplicant

# Newer camera API isn't supported.
PRODUCT_PROPERTY_OVERRIDES += \
   camera2.portability.force_api=1

# Extras
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    Superuser \
    su \
    dump.f2fs \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs \
    dexopt \
    dex2oat \
    librpc
    
# FM Radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# qcmediaplayer
PRODUCT_PACKAGES += qcmediaplayer

#llvm
PRODUCT_PACKAGES += \
    llvm

#Additional
PRODUCT_PACKAGES += \
   radiooptions
