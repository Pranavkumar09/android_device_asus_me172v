#
# Copyright (C) 2011 The Android Open-Source Project
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


# Camera options
USE_CAMERA_STUB := false



# inherit from the proprietary version
-include vendor/asus/me172v/BoardConfigVendor.mk

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Board naming
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := wmt
TARGET_BOOTLOADER_BOARD_NAME := wmt

# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true
NEED_WORKAROUND_CORTEX_A9_745320 := true

# Boot/Recovery image settings  
BOARD_KERNEL_CMDLINE := mem=800M root=/dev/ram0 rw initrd=0x01400000,32M console=ttyS0,115200n8 init=/init
BOARD_KERNEL_BASE := 
BOARD_KERNEL_PAGESIZE :=

# Video settings
BOARD_EGL_CFG := device/asus/me172v/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true


# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
ifeq ($(HOST_OS),linux)
TARGET_USERIMAGES_USE_F2FS := 
endif

BOARD_BOOTIMAGE_PARTITION_SIZE := 15648
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15648
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1000024
BOARD_USERDATAIMAGE_PARTITION_SIZE := 500024
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery Options
BOARD_CUSTOM_BOOTIMG_MK := device/asus/me172v/recovery/recovery.mk
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_RECOVERY_FSTAB := device/asus/me172v/ramdisk/fstab.wmt
RECOVERY_FSTAB_VERSION := 
BOARD_RECOVERY_SWIPE := true
