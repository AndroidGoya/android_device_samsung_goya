# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
TARGET_BOARD_PLATFORM := mrvl
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := PXA986


# MRVL hardware
BOARD_USES_MRVL_HARDWARE := true
MRVL_ION := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/goya/include

# Flags
COMMON_GLOBAL_CFLAGS += -DMRVL_HARDWARE
COMMON_GLOBAL_CFLAGS += -DNO_RGBX_8888
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Boot image
TARGET_KERNEL_SOURCE := kernel/samsung/goya
TARGET_KERNEL_CONFIG := cyanogenmod_goya_defconfig
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x10000000

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1594884096
BOARD_CACHEIMAGE_PARTITION_SIZE := 360710144
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5509218304
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true

# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/goya/configs/bdroid
BOARD_HAVE_BLUETOOTH_MRVL := true
MRVL_WIRELESS_DAEMON_API := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR1_AUDIO_BLOB

# WebGL
ENABLE_WEBGL := true

# Wi-Fi
BOARD_HAVE_MARVELL_WIFI := true
BOARD_WLAN_VENDOR := MRVL
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/sd8xxx.ko"
WIFI_DRIVER_MODULE_NAME	:= "sd8xxx"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/firmware/mrvl/sd8777_uapsta.bin cfg80211_wext=12 sta_name=wlan uap_name=wlan wfd_name=p2p fw_name=mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/sd8xxx/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/mlan.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME := "mlan"
WIFI_SDIO_IF_DRIVER_MODULE_ARG := ""
MRVL_WIRELESS_DAEMON_API := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/goya/sepolicies

BOARD_SEPOLICY_UNION += \
    file_contexts \
    device.te \
    dhcp.te \
    file.te \
    init.te \
    mediaserver.te \
    netmgrd.te \
    rild.te \
    secril.te \
    system.te \
    ueventd.te \
    wpa_supplicant.te

# Graphics
VSYNC_EVENT_PHASE_OFFSET_NS := 0
BOARD_USE_BGRA_8888 := true
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/goya/configs/graphics/egl.cfg

# Flags
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# HWComposer
BOARD_USES_HWCOMPOSER := true

# SurfaceFlinger
MRVL_LAUNCH_DMS_IN_SURFACEFLINGER := true
MRVL_INTERFACE_ANIMATION := true
TARGET_FORCE_CPU_UPLOAD := true

# Charging mode
BOARD_LPM_BOOT_ARGUMENT_NAME := lpm_boot
BOARD_LPM_BOOT_ARGUMENT_VALUE := 1
