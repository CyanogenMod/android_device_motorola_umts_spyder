# Inherit device configuration for Motorola RAZR.
$(call inherit-product, device/motorola/umts_spyder/full_umts_spyder.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/umts_spyder/overlay/aokp

# Setup device specific product configuration.
PRODUCT_NAME := aokp_umts_spyder
PRODUCT_BRAND := moto
PRODUCT_DEVICE := umts_spyder
PRODUCT_MODEL := XT910
PRODUCT_MANUFACTURER := MOTO
PRODUCT_SFX := umts
ANDROID_VERSION := 4.1.1_r4
#MOTOROLA_BUILD_ID := 6.7.6-226_SPU-DE_TA-2
MOTOROLA_BUILD_ID := JRO03L
MOTOROLA_SOFTWARE_VERSION := 6.76.226.3
DEVELOPER_NAME := dhacker29
DEVELOPER_HOST := dhacker29
DEVELOPMENT_STAGE := Alpha
# Release name and versioning
PRODUCT_RELEASE_NAME := RAZR

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   BUILD_ID=${MOTOROLA_BUILD_ID} \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE} \
   TARGET_BUILD_TYPE=user \
   BUILD_VERSION_TAGS=release-keys \
   BUILD_DISPLAY_ID=JB_${DEVELOPMENT_STAGE}_${MOTOROLA_BUILD_ID} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE}:${ANDROID_VERSION}/${MOTOROLA_BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE}-user ${ANDROID_VERSION} ${MOTOROLA_BUILD_ID} ${DATE} release-keys" \
   BUILD_UTC_DATE= \
   USER=${DEVELOPER_NAME} \
   BUILD_HOST=${DEVELOPER_HOST} \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_540_960.zip:system/media/bootanimation.zip

