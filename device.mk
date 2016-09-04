#
# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

## Get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/d2-common/d2-common-vendor.mk)
$(call inherit-product-if-exists, vendor/samsung/msm8960-common/msm8960-common-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/d2-common/overlay

# Boot animation and screen size
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=320

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/d2-common/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/samsung/d2-common/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/samsung/d2-common/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/d2-common/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Camera
PRODUCT_PACKAGES += \
    Snap

# Camera Wrapper
PRODUCT_PACKAGES += \
    camera.msm8960

# Display
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    memtrack.msm8960

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960 \
    libgps.utils \
    libloc_core \
    libloc_eng

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

PRODUCT_COPY_FILES += \
    device/samsung/d2-common/gps/etc/gps.conf:system/etc/gps.conf \
    device/samsung/d2-common/gps/etc/sap.conf:system/etc/sap.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:system/etc/permissions/android.hardware.sensor.ambient_temperature.xml

# Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/d2-common/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    device/samsung/d2-common/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/samsung/d2-common/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \
    device/samsung/d2-common/configs/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \
    device/samsung/d2-common/keylayout/fsa9485.kl:system/usr/keylayout/fsa9485.kl \
    device/samsung/d2-common/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/samsung/d2-common/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/samsung/d2-common/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
    device/samsung/d2-common/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    device/samsung/d2-common/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/d2-common/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# Logo
PRODUCT_COPY_FILES += \
    device/samsung/d2-common/initlogo.rle:root/initlogo.rle

# Media configuration
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    device/samsung/d2-common/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/d2-common/media/media_profiles.xml:system/etc/media_profiles.xml

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/samsung/d2-common/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/samsung/d2-common/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.led.sh \
    init.qcom.power.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc

# Samsung symbols
PRODUCT_PACKAGES += \
    libsamsung_symbols

# Stlport
PRODUCT_PACKAGES += \
    libstlport

# SPN override
PRODUCT_COPY_FILES += \
    device/samsung/d2-common/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# Voice processing
PRODUCT_PACKAGES += \
    libqcomvoiceprocessing

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/d2-common/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/d2-common/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    hostapd_default.conf \
    libwpa_client \
    macloader \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    libnetcmdiface

# d2-common props
$(call inherit-product, device/samsung/d2-common/system_prop.mk)

# Common Qualcomm
$(call inherit-product, device/samsung/qcom-common/qcom-common.mk)

