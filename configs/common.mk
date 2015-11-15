# Copyright (C) 2015 SimpleAOSP Project
# Copyright (C) 2015 ParanoidAndroid Project
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

# Brand
PRODUCT_BRAND ?= sickgreen

# Local path for prebuilts
LOCAL_PATH := vendor/sicki/prebuilts/common/system

# Backuptool support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addon.d/666-sickgreen.sh:system/addon.d/666-sickgreen.sh \
    $(LOCAL_PATH)/bin/backuptool.functions:system/bin/backuptool.functions \
    $(LOCAL_PATH)/bin/backuptool.sh:system/bin/backuptool.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/sicki/prebuilt/common/etc/init.sicki.rc:root/init.sicki.rc

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/sicki/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/sicki/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
#SickGreen wallpaper
# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/sicki/overlay/common/
# Common build prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
   ro.sicki.version=SickGreen-AOSP-M

include vendor/sicki/configs/gcc.mk
