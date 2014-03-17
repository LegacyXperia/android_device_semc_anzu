# Copyright (C) 2011-2013 The CyanogenMod Project
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

# proprietary side of the device
$(call inherit-product, vendor/semc/anzu/anzu-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/anzu/overlay

$(call inherit-product, device/semc/mogami-common/mogami.mk)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.device.rc:root/init.device.rc \
    $(LOCAL_PATH)/rootdir/init.semc.usb.rc:root/init.semc.usb.rc \
    $(LOCAL_PATH)/rootdir/system/etc/hw_config.sh:system/etc/hw_config.sh

# Device specific configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/idc/cy8ctma300_touch.idc:system/usr/idc/cy8ctma300_touch.idc \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/pm8xxx-keypad.kl:system/usr/keylayout/pm8xxx-keypad.kl \
    $(LOCAL_PATH)/rootdir/system/etc/sensors.conf:system/etc/sensors.conf \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/TQS_S_2.6.ini:system/etc/wifi/TQS_S_2.6.ini

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    com.qc.hdmi_out=false
