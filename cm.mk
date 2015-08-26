#
# Copyright (C) 2013 OmniROM Project
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

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, vendor/cm/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/nokia/normandy/full_normandy.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Discard inherited values and use our own instead.
PRODUCT_NAME := cm_normandy
PRODUCT_DEVICE := normandy
PRODUCT_BRAND := NOKIA
PRODUCT_MANUFACTURER := NOKIA
PRODUCT_MODEL := NOKIAX

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=Nokia \
    PRODUCT_NAME=Nokia_X \
    BUILD_PRODUCT=RM-980
#    BUILD_FINGERPRINT=qcom/msm8625/msm8625:4.1.2/JZO54K/eng.ZYC.20140213.151118:eng/test-keys
