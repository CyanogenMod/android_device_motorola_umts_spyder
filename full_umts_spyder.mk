# Copyright (C) 2012 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for umts_spyder hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and umts_spyder, hence its name.
#

# Camera and Gallery
PRODUCT_PACKAGES := \
    Gallery

#if we do this after the full_base_telephony is included some of these don't get picked up..
ifeq ($(TARGET_PRODUCT),full_umts_spyder)
PRODUCT_COPY_FILES += \
    device/motorola/umts_spyder/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml
endif

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=umts_spyder

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
# Inherit from umts_spyder device
$(call inherit-product-if-exists, device/motorola/kexec/kexec.mk)
$(call inherit-product, device/motorola/umts_spyder/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_umts_spyder
PRODUCT_DEVICE := umts_spyder
PRODUCT_BRAND := MOTO
PRODUCT_MANUFACTURER := MOTO
PRODUCT_MODEL := MOTOROLA RAZR
