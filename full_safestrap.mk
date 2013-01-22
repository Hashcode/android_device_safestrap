# Copyright (C) 2012 The Android Open Source Project

BOARD_IS_MOTOROLA_DEVICE := true

DEVICE_FOLDER := device/generic/safestrap
COMMON_FOLDER := device/generic/safestrap-common

PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/default.prop:$(TARGET_RECOVERY_OUT)/root/default.prop \

# Device specific recovery files
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/sbin/changeslot.sh:$(TARGET_RECOVERY_OUT)/root/sbin/changeslot.sh \
    $(DEVICE_FOLDER)/sbin/build-fs.sh:$(TARGET_RECOVERY_OUT)/root/sbin/build-fs.sh \
    $(DEVICE_FOLDER)/sbin/fixboot.sh:$(TARGET_RECOVERY_OUT)/root/sbin/fixboot.sh \

# Device specific 2nd-init files
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/sbin/fixboot.sh:$(TARGET_RECOVERY_OUT)/root/../2nd-init-files/fixboot.sh \

# Safestrapmenu
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/res/background-blank.png:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/background-blank.png \
    $(DEVICE_FOLDER)/res/background-nonsafe.png:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/background-nonsafe.png \
    $(DEVICE_FOLDER)/res/background-safe.png:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/background-safe.png \
    $(DEVICE_FOLDER)/res/splashkeys.atmxt-i2c:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/splashkeys.atmxt-i2c \
    $(DEVICE_FOLDER)/res/splashkeys.qtouch-touchscreen:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/splashkeys.qtouch-touchscreen \
    $(DEVICE_FOLDER)/res/splashkeys.cyttsp4-i2c:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/splashkeys.cyttsp4-i2c \

# App files
PRODUCT_COPY_FILES += \
    $(COMMON_FOLDER)/app/omap4-common/recovery-check.sh:$(TARGET_RECOVERY_OUT)/root/../APP/recovery-check.sh \
    $(COMMON_FOLDER)/app/omap4-common/recovery-install.sh:$(TARGET_RECOVERY_OUT)/root/../APP/recovery-install.sh \
    $(COMMON_FOLDER)/app/omap4-common/recovery-uninstall.sh:$(TARGET_RECOVERY_OUT)/root/../APP/recovery-uninstall.sh

# Choose a Common Hijack
PRODUCT_COPY_FILES += \
    $(COMMON_FOLDER)/hijacks/logwrapper-xoom2:$(TARGET_RECOVERY_OUT)/root/../install-files/bin/logwrapper \

# Choose a Common backup/restore method
PRODUCT_COPY_FILES += \
    $(COMMON_FOLDER)/sbin/logwrapper-backup-ss.sh:$(TARGET_RECOVERY_OUT)/root/sbin/backup-ss.sh \
    $(COMMON_FOLDER)/sbin/logwrapper-restore-ss.sh:$(TARGET_RECOVERY_OUT)/root/sbin/restore-ss.sh \

$(call inherit-product, $(COMMON_FOLDER)/common.mk)

