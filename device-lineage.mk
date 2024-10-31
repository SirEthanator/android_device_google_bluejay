#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Disable Artifact Requirements
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# ANGLE - Almost Native Graphics Layer Engine
PRODUCT_PACKAGES += \
    ANGLE

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# HBM
PRODUCT_PACKAGES := \
    HbmSVManagerOverlay

# Kernel
TARGET_PREBUILT_KERNEL := device/google/bluejay-kernel/Image.lz4

# OrionOS flags
ORION_MAINTAINER := SirEthanator
ORION_BUILD_TYPE := UNOFFICIAL
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true

# Gapps
ORION_GAPPS := true
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Build necessary packages for vendor

# Codec2
PRODUCT_PACKAGES += \
    libexynosv4l2

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Graphics
PRODUCT_PACKAGES += \
    libEGL_angle \
    libGLESv1_CM_angle \
    libGLESv2_angle

# Identity credential
PRODUCT_PACKAGES += \
    android.hardware.identity_credential.xml

# Sensors
PRODUCT_PACKAGES += \
    sensors.dynamic_sensor_hal

# Properties
TARGET_VENDOR_PROP := $(LOCAL_PATH)/vendor.prop
