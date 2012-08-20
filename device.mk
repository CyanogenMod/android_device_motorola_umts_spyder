#
# This is the product configuration for a full umts_spyder
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += device/motorola/umts_spyder/overlay/aosp

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES := \
    charger \
    charger_res_images

# Audio
PRODUCT_COPY_FILES += \
    device/motorola/umts_spyder/audio/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
    device/motorola/umts_spyder/audio/audio.primary.omap4.so:/system/lib/hw/audio.primary.umts_spyder.so \
    device/motorola/umts_spyder/audio/audio_policy.omap4.so:/system/lib/hw/audio_policy.umts_spyder.so \
    device/motorola/umts_spyder/audio/libasound.so:/system/lib/libasound.so \
    device/motorola/umts_spyder/audio/libaudio_ext.so:/system/lib/libaudio_ext.so

# Hardware HALs
PRODUCT_PACKAGES += \
    camera.omap4 \
    libinvensense_mpl \

PRODUCT_PACKAGES += \
    libaudioutils \
    libaudiohw_legacy \

# BlueZ a2dp Audio HAL module
PRODUCT_PACKAGES += \
    audio.a2dp.default

# BlueZ test tools
PRODUCT_PACKAGES += \
    hciconfig \
    hcitool

# Modem
PRODUCT_PACKAGES += \
    Stk \
    libaudiomodemgeneric \
    rild \
    radiooptions

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd.conf \
    wifical.sh \
    TQS_D_1.7.ini \
    TQS_D_1.7_127x.ini \
    crda \
    regulatory.bin \
    calibrator \
    busybox \

# Wifi Direct
PRODUCT_PACKAGES += \
    ti_wfd_libs

# Bluetooth
PRODUCT_PACKAGES += \
    bt_sco_app \
    uim-sysfs 

# Release utilities
PRODUCT_PACKAGES += \
    umts_spyder_releaseutils-check_kernel \
    umts_spyder_releaseutils-finalize_release \
    umts_spyder_releaseutils-mke2fs \
    umts_spyder_releaseutils-tune2fs

PRODUCT_PACKAGES += \
    evtest \
    camera_test \
    Camera \
    CameraOMAP4 \
    Superuser \
    su \
    DockAudio \
    parse_hdmi_edid \

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    FileManager \
    MusicFX \
    Apollo \
    VideoEditor \
    VoiceDialer \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \

# WirelessTether
PRODUCT_PACKAGES += wifi_tether_v3_2-pre1
PRODUCT_COPY_FILES += \
    device/motorola/umts_spyder/prebuilt/lib/libwtnativetask.so:system/lib/libwtnativetask.so \


# Rootfs files
PRODUCT_COPY_FILES += \
    device/motorola/umts_spyder/root/default.prop:/root/default.prop \
    device/motorola/umts_spyder/root/init.rc:/root/init.rc \
    device/motorola/umts_spyder/root/init.mapphone_cdma.rc:/root/init.mapphone_cdma.rc \
    device/motorola/umts_spyder/root/init.mapphone_umts.rc:/root/init.mapphone_umts.rc \
    device/motorola/umts_spyder/root/ueventd.rc:/root/ueventd.rc \
    device/motorola/umts_spyder/root/ueventd.mapphone_cdma.rc:/root/ueventd.mapphone_cdma.rc \
    device/motorola/umts_spyder/root/ueventd.mapphone_umts.rc:/root/ueventd.mapphone_umts.rc \

# Kexec files
PRODUCT_COPY_FILES += \
    device/motorola/umts_spyder/kexec/arm_kexec.ko:system/etc/kexec/arm_kexec.ko \
    device/motorola/umts_spyder/kexec/atags:system/etc/kexec/atags \
    device/motorola/umts_spyder/kexec/devtree:system/etc/kexec/devtree \
    device/motorola/umts_spyder/kexec/kexec:system/etc/kexec/kexec \
    device/motorola/umts_spyder/kexec/kexec.ko:system/etc/kexec/kexec.ko \
    device/motorola/umts_spyder/kexec/uart.ko:system/etc/kexec/uart.ko \
    out/target/product/umts_spyder/ramdisk.img:system/etc/kexec/ramdisk.img \
    out/target/product/umts_spyder/kernel:system/etc/kexec/kernel \

# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \

# Prebuilts
PRODUCT_COPY_FILES += \
    device/motorola/umts_spyder/prebuilt/bin/battd:system/bin/battd \
    device/motorola/umts_spyder/prebuilt/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    device/motorola/umts_spyder/prebuilt/bin/strace:system/bin/strace \
    device/motorola/umts_spyder/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/umts_spyder/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/motorola/umts_spyder/prebuilt/etc/TICameraCameraProperties.xml:system/etc/TICameraCameraProperties.xml \
    device/motorola/umts_spyder/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/motorola/umts_spyder/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/motorola/spyder/prebuilt/etc/firmware/ducati-m3.bin:system/etc/firmware/ducati-m3.bin \

#    device/motorola/umts_spyder/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \

# Backup Tool
PRODUCT_COPY_FILES += \
    device/motorola/umts_spyder/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    device/motorola/umts_spyder/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    device/motorola/umts_spyder/prebuilt/bin/50-backup.sh:system/addon.d/50-backup.sh


# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US


# stuff specific to ti OMAP4 hardware
$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
$(call inherit-product, hardware/ti/wpan/ti-wpan-products.mk)
$(call inherit-product, device/ti/proprietary-open/wl12xx/wlan/wl12xx-wlan-fw-products.mk)
$(call inherit-product-if-exists, vendor/motorola/common/proprietary/imgtec/sgx-imgtec-bins.mk)
$(call inherit-product-if-exists, vendor/motorola/umts_spyder/umts_spyder-vendor.mk)

