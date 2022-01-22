#
# Copyright (C) 2013 The CyanogenMod Project
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

# Inherit CM common GSM/Phone stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := goya

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/goya/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := goya
PRODUCT_NAME := cm_goya
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-T11x
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=goya \
    TARGET_DEVICE=goya \
    PRIVATE_BUILD_DESC="goya-user 4.4.4 JDQ39 T110NXXUAOC1 release-keys" \
    BUILD_FINGERPRINT="samsung/goya/goya:4.4.4/JDQ39/T110NXXUAOC1:user/release-keys"
