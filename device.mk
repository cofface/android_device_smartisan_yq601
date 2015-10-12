
# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/smartisan/yq601/yq601-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/kernel:kernel

# System Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.msm8916 \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdb/QRD/QRD_Bluetooth_cal.acdb:system/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD/QRD_General_cal.acdb:system/etc/acdbdata/QRD/QRD_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD/QRD_Global_cal.acdb:system/etc/acdbdata/QRD/QRD_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD/QRD_Handset_cal.acdb:system/etc/acdbdata/QRD/QRD_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD/QRD_Hdmi_cal.acdb:system/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD/QRD_Headset_cal.acdb:system/etc/acdbdata/QRD/QRD_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD/QRD_Speaker_cal.acdb:system/etc/acdbdata/QRD/QRD_Speaker_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Bluetooth_cal.acdb:system/etc/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Bluetooth_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_General_cal.acdb:system/etc/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_General_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Global_cal.acdb:system/etc/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Global_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Handset_cal.acdb:system/etc/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Handset_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Hdmi_cal.acdb:system/etc/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Hdmi_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Headset_cal.acdb:system/etc/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Headset_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Speaker_cal.acdb:system/etc/acdb/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Speaker_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/MTP_Bluetooth_cal.acdb:system/etc/acdb/MTP/MTP_Bluetooth_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/MTP_General_cal.acdb:system/etc/acdb/MTP/MTP_General_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/MTP_Global_cal.acdb:system/etc/acdb/MTP/MTP_Global_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/MTP_Handset_cal.acdb:system/etc/acdb/MTP/MTP_Handset_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/MTP_Hdmi_cal.acdb:system/etc/acdb/MTP/MTP_Hdmi_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/MTP_Headset_cal.acdb:system/etc/acdb/MTP/MTP_Headset_cal.acdb \
	$(LOCAL_PATH)/audio/acdb/MTP/MTP_Speaker_cal.acdb:system/etc/acdb/MTP/MTP_Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio


# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# CRDA
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libtinyxml \
    memtrack.msm8916

# Filesystem
PRODUCT_PACKAGES += \
    e2fsck \
    make_ext4fs \
    setup_fs

# GPS
PRODUCT_PACKAGES += \
     gps.msm8916

# Sensors
PRODUCT_PACKAGES += \
	sensors.msm8916 \
	libcalmodule_akm \
	calmodule.cfg

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml
	
# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag \
    nfc_nci.msm8916

PRODUCT_PACKAGES += \
    libdashplayer \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

# QRNGD
PRODUCT_PACKAGES += \
    qrngd \
    qrngp

# Ramdisk
PRODUCT_PACKAGES += \
    init.crda.sh \
    init.qcom.bt.sh \
    init.qcom.coex.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.target.rc \
    init.qcom.usb.rc \
    init.qti.carrier.rc \
    ueventd.qcom.rc
	
PRODUCT_PACKAGES += \
    init.class_main.sh \
	init.mdm.sh \
	init.qcom.bms.sh \
	init.qcom.class_core.sh \
	init.qcom.early_boot.sh \
	init.qcom.factory.sh \
	init.qcom.sh \
	init.qcom.ssr.sh \
	init.qcom.syspart_fixup.sh \
	init.qcom.usb.sh \
	ueventd.rc

# RIL
PRODUCT_PACKAGES += \
    libxml2

# Torch
PRODUCT_PACKAGES += \
    Torch

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    libwcnss_qmi \
    wcnss_service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
	$(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
	$(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml \
	$(LOCAL_PATH)/configs/nfc-nci.conf:system/etc/nfc-nci.conf \
	$(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf
	

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat
