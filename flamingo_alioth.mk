# Copyright (C) 2021 Paranoid Android
#
#
# Licensed under the Apache License, Version 2.0 (the "License"); you
# may not use this file except in compliance with the License. You may
# obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied. See the License for the specific language governing

# permissions and limitations under the License.
ifeq (flamingo_alioth, $(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/xiaomi/alioth/device.mk)

# Inherit from the Flamingo configuration.
$(call inherit-product, vendor/flamingo/target/product/flamingo.mk)

PRODUCT_NAME := flamingo_alioth
PRODUCT_BRAND := POCO
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2012K11AG
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Flamingo-OS Extras Packages
TARGET_BUILD_MATLOG := false

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080
endif
