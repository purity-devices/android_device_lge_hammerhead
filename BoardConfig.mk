#
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2017 Paranoid Android
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

PLATFORM_PATH := device/lge/hammerhead

# Platform
TARGET_BOARD_PLATFORM := msm8974

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

# PowerHAL
TARGET_PROVIDES_POWERHAL := true

# Assertions
TARGET_BOARD_INFO_FILE := $(PLATFORM_PATH)/board-info.txt

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hammerhead
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=hammerhead user_debug=31 maxcpus=2 msm_watchdog_v2.enable=1
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02900000 --tags_offset 0x02700000
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_CONFIG := lineageos_hammerhead_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/hammerhead
TARGET_KERNEL_APPEND_DTB := true
OARD_KERNEL_IMAGE_NAME := zImage-dtb
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-

# Audio/display/media
TARGET_QCOM_AUDIO_VARIANT := caf-msm8974
TARGET_QCOM_DISPLAY_VARIANT := caf-msm8974
TARGET_QCOM_MEDIA_VARIANT := caf-msm8974

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_PATH)/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA:= true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Display
USE_OPENGL_RENDERER := true
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
TARGET_USES_NEW_DUAL_DSI := true
HAVE_ADRENO_SOURCE:= false
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# Wifi related defines
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true
TARGET_NO_RPC := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672
BOARD_CACHEIMAGE_PARTITION_SIZE := 734003200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13725837312
BOARD_FLASH_BLOCK_SIZE := 131072

# Quirks
TARGET_ALLOW_TEXT_RELOCATIONS := true
TARGET_NEEDS_TEXT_RELOCATIONS := true 
TARGET_NEEDS_PLATFORM_TEXTRELS := true
TARGET_USES_MEDIA_EXTENSIONS := true

#TWRP
TW_THEME := portrait_hdpi
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_CRYPTO := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
# The real path for this is /sys/devices/mdp.0/qcom,cmdss_fb_primary.160/leds/lcd-backlight/brightness but the comma doesn't compile correctly
TW_BRIGHTNESS_PATH := "/sys/devices/mdp.0/qcom\x2cmdss_fb_primary.160/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

# Recovery
TARGET_RECOVERY_FSTAB = $(PLATFORM_PATH)/rootdir/etc/fstab.hammerhead
TARGET_RELEASETOOLS_EXTENSIONS := $(PLATFORM_PATH)/recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# SELinux
BOARD_SEPOLICY_DIRS += $(PLATFORM_PATH)/sepolicy

