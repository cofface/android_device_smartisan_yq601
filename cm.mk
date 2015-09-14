## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := yq601

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/smartisan/yq601/device_yq601.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := yq601
PRODUCT_NAME := cm_yq601
PRODUCT_BRAND := smartisan
PRODUCT_MODEL := YQ601
PRODUCT_MANUFACTURER := smartisan
