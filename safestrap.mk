#TWRP
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true

RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/datamedia/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "datamedia"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

TW_DEFAULT_EXTERNAL_STORAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TW_INCLUDE_SPLASHMENU := true
SPLASH_RECOVERY_KEY := KEY_MENU
SPLASH_CONTINUE_KEY := KEY_SEARCH

# Logging
#TWRP_EVENT_LOGGING := true

# Virtual partition size default (in mb)
BOARD_DEFAULT_VIRT_SYSTEM_SIZE := 1024
BOARD_DEFAULT_VIRT_CACHE_SIZE := 300

BOARD_USE_NO_DEVFS_SETUP := true
BOARD_SUPPRESS_EMMC_WIPE := true
HAVE_SELINUX := true

SAFESTRAP_NO_CUSTOM_UPDATER := true

# Clear kernel compile
TARGET_KERNEL_SOURCE := 
TARGET_KERNEL_CONFIG := 
TARGET_PREBUILT_KERNEL := external/safestrap/kernel

