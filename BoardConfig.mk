#
# Copyright (C) 2012-2014 The CyanogenMod Project
# by Cholokei - leesl0416@naver.com
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm8660
-include device/samsung/msm8660-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/dalikt/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := MSM8660_SURF

# Assert
TARGET_OTA_ASSERT_DEVICE := SHV-E120K,dalikt

# Kernel
BOARD_KERNEL_CMDLINE        := androidboot.hardware=qcom usb_id_pin_rework=true zcache
BOARD_KERNEL_BASE           := 0x48000000
BOARD_KERNEL_PAGESIZE       := 2048
BOARD_MKBOOTIMG_ARGS        := --ramdisk_offset 0x01400000

TARGET_KERNEL_CONFIG        := cyanogenmod_dalikt_defconfig
TARGET_KERNEL_SOURCE        := kernel/samsung/msm8660-common

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 941621248
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2149580800
BOARD_FLASH_BLOCK_SIZE := 131072

# Configs for recovery
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_7x16.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_10x18.h\"
BOARD_RECOVERY_CHAR_WIDTH := 720
BOARD_RECOVERY_CHAR_HEIGHT := 1280
#BOARD_TOUCH_RECOVERY := true

BOARD_HAS_NO_SELECT_BUTTON := true

# Suppress the WIPE command since it can brick our EMMC
BOARD_SUPPRESS_EMMC_WIPE := true

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

# Preload the boot animation to avoid jerkiness
TARGET_BOOTANIMATION_PRELOAD := true

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/dalikt/bluetooth

