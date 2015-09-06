# Copyright (C) 2015 The Android Open Source Project
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

$(call inherit-product-if-exists, vendor/asus/me172v/me172v-vendor.mk)


# Files needed for boot/recovery image
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.wmt.rc:root/init.wmt.rc \
    $(LOCAL_PATH)/ramdisk/fstab.wmt:root/fstab.wmt \
    $(LOCAL_PATH)/ramdisk/init:root/init \
    $(LOCAL_PATH)/ramdisk/init.goldfish.rc:root/init.goldfish.rc \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/ramdisk/recovery.fstab:root/recovery.fstab \
    
    
# input device config files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
    $(LOCAL_PATH)/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \

# permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
    frameworks/native/data/etc/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    frameworks/native/data/etc/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    frameworks/native/data/etc/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    frameworks/native/data/etc/platform.xml:system/etc/permissions/platform.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \

# build characteristics setting 
PRODUCT_CHARACTERISTICS := tablet

# extra packages to build for this device
PRODUCT_PACKAGES += \
    AutoParts_tfp \
    com.cyanogenmod.asusdec \
    

# properties specific for this device
PRODUCT_PROPERTY_OVERRIDES := \
    persist.sys.isUsbOtgEnabled=true \
    persist.sys.usb.config=mtp \
    ro.carrier=wifi-only \
    ro.opengles.version= \
    ro.sf.lcd_density=160 \
    tf.enable= \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15


# media files
PRODUCT_COPY_FILES += \
    device/asus/me172v/media_codecs.xml:system/etc/media_codecs.xml \
    device/asus/me172v/media_profiles.xml:system/etc/media_profiles.xml \
    device/asus/me172v/audio_policy.conf:system/etc/audio_policy.conf

# wifi files
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
