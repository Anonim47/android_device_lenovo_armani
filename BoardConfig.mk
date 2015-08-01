#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from the proprietary version

LOCAL_PATH := device/lenovo/armani

TARGET_SPECIFIC_HEADER_PATH := device/lenovo/armani/include

# cflags
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_ABI_HACK -DUSE_MDP3
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a5 -mfpu=neon-vfpv4 -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon-vfpv4 -mfloat-abi=softfp

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
# Define the Bootloader name
TARGET_BOOTLOADER_BOARD_NAME := armani_row
# Try to use ASHMEM if possible (when non-MDP composition is used)
TARGET_GRALLOC_USES_ASHMEM := true

# Arch related defines and optimizations
TARGET_ARCH := arm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOOTLOADER_BOARD_NAME := 7x27
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CORTEX_CACHE_LINE_32 := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

TARGET_BOARD_PLATFORM_GPU := qcom-adreno203
BOARD_USES_ADRENO_200 := true

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/lenovo/armani
TARGET_KERNEL_CONFIG := cyanogen_armani_defconfig

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USES_UNCOMPRESSED_KERNEL := false

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M

ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_EGL_CFG := device/lenovo/armani/config/egl.cfg

BOARD_BOOTIMAGE_PARTITION_SIZE := 13901824
BOARD_CACHEIMAGE_PARTITION_SIZE := 125829120
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13901824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 996147200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 982515712
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_NO_RECOVERY := false
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_CACHE_DEVICE := /dev/block/mmcblk0p18
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p17
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_DATA_DEVICE := /dev/block/mmcblk0p21
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw

# FM
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED
AUDIO_FEATURE_ENABLED_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_PROVIDES_LIBAUDIO := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_HAS_QACT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lenovo/armani/bluetooth

# Dalvik
TARGET_ARCH_LOWMEM := true

# Hardware tunables framework
BOARD_HARDWARE_CLASS := device/lenovo/armani/cmhw/


# Display                                                                              
USE_OPENGL_RENDERER := true
TARGET_QCOM_DISPLAY_VARIANT := legacy        
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true                                           
BOARD_EGL_WORKAROUND_BUG_10194508 := true                                   
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_DOESNT_USE_FENCE_SYNC := true

BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_ION := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED
TARGET_DISPLAY_USE_RETIRE_FENCE := true
BOARD_USE_MHEAP_SCREENSHOT := true
HWUI_COMPILE_FOR_PERF := true

# Add QC Video Enhancements flag
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# SEPOLICY
BOARD_SEPOLICY_DIRS := \
       device/lenovo/armani/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       file_contexts

# EGL
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_CFG := device/lenovo/armani/config/egl.cfg

# Media
TARGET_QCOM_MEDIA_VARIANT := caf
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
TARGET_QCOM_LEGACY_MMPARSER := true
TARGET_QCOM_LEGACY_OMX := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

# Vold
BOARD_VOLD_MAX_PARTITIONS := 19
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# GPS
QCOM_GPS_PATH := hardware/qcom/gps
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

TARGET_PROVIDES_LIBLIGHT := true

BOARD_CHARGER_ENABLE_SUSPEND := true

# Camera
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS
USE_DEVICE_SPECIFIC_CAMERA := true
USE_CAMERA_STUB := true

BOARD_HAL_STATIC_LIBRARIES := libhealthd.msm7x27a

# Webkit
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_FORCE_CPU_UPLOAD := true

# Dex
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),userdebug)
  	DISABLE_DEXPREOPT := true
   else
        WITH_DEXPREOPT := true
  endif
endif

# RIL
BOARD_RIL_CLASS := ../../../device/lenovo/armani/ril/

DEVICE_RESOLUTION := 854x480

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HAS_ATH_WLAN := true
BOARD_WLAN_DEVICE := ath6kl
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/ath6kl/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/ath6kl/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"
WIFI_DRIVER_FW_PATH_PARAM := "/data/misc/wifi/fwpath"

# Recovery
TARGET_RECOVERY_INITRC := device/lenovo/armani/recovery/twrp-init.rc
TW_INTERNAL_STORAGE_PATH := "/sdcard1"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard1"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true 
TW_USE_TOOLBOX := true
TW_TARGET_USES_QCOM_BSP := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TARGET_RECOVERY_FSTAB := device/lenovo/armani/fstab.qcom
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 480x854
SP1_NAME := "persist"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
SP2_NAME := "internal_sd"
SP2_BACKUP_METHOD := files
SP2_MOUNTABLE := 1
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/lenovo/armani/recovery/twrp-graphics.c
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.590337/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255

