BOARD_VENDOR := xiaomi

COMMON_PATH := device/xiaomi/cancro

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE  := true
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
TARGET_BOOTLOADER_BOARD_NAME := MSM8974

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_CUSTOM_BOOTIMG_MK   := $(COMMON_PATH)/mkbootimg.mk

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4

ADD_RADIO_FILES ?= true
TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.selinux=permissive
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01E00000

# kernel
TARGET_PREBUILT_KERNEL := $(COMMON_PATH)/kernel
TARGET_KERNEL_ARCH := arm

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Camera
USE_CAMERA_STUB := true
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DOPPO_CAMERA_HARDWARE

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/xiaomi/cancro/bluetooth

# Power HAL
TARGET_POWERHAL_VARIANT := qcom

# Consumer IR
TARGET_PROVIDES_CONSUMERIR_HAL := true

# Simple time service client
BOARD_USES_QC_TIME_SERVICES := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Disable Block Based OTA
BLOCK_BASED_OTA := false

# Logging
TARGET_USES_LOGD := false

# Graphics
BOARD_EGL_CFG := $(COMMON_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
HAVE_ADRENO_SOURCE:= false
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000


# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

BOARD_HAVE_XIAOMI_WIFI := true

# Wlan
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
TARGET_USES_WCNSS_CTRL           := true

# No old RPC for prop
TARGET_NO_RPC := true

# GPS HAL lives here
TARGET_GPS_HAL_PATH := $(COMMON_PATH)/gps
TARGET_PROVIDES_GPS_LOC_API := true

# Use HW crypto for ODE
TARGET_HW_DISK_ENCRYPTION := true

# Enable CNE
BOARD_USES_QCNE := true

# Added to indicate that protobuf-c is supported in this build
PROTOBUF_SUPPORTED := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Enable CPU boosting events in the power HAL
TARGET_USES_CPU_BOOST_HINT := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 671088640
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_PERSISTIMAGE_PARTITION_SIZE := 16777216
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE := 73400320
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB            := $(COMMON_PATH)/rootdir/root/fstab.qcom
RECOVERY_FSTAB_VERSION           := 2
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_NATIVE_DUALBOOT := true
BOARD_NATIVE_DUALBOOT_SINGLEDATA := true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

USE_CHINESE_RECOVERY := false
ifneq ($(USE_CHINESE_RECOVERY),true)
BOARD_USE_CUSTOM_RECOVERY_FONT   := \"roboto_23x41.h\"
BOARD_CUSTOM_RECOVERY_UI         := \
	../../$(COMMON_PATH)/recovery/dualboot.c \
	../../$(COMMON_PATH)/recovery/recovery_ui.c
else
BOARD_USE_CUSTOM_RECOVERY_FONT   := \"fontcn46_28x73.h\"
BOARD_CUSTOM_RECOVERY_UI         := \
	../../$(COMMON_PATH)/recovery/dualboot_cn.c \
	../../$(COMMON_PATH)/recovery/recovery_ui_cn.c
endif

BOARD_HAS_NO_SELECT_BUTTON := true

# SELinux policies
# qcom sepolicy
include device/qcom/sepolicy/sepolicy.mk

-include vendor/xiaomi/cancro/BoardConfigVendor.mk
