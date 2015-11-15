# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files
$(call inherit-product, vendor/sicki/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := sickgreen_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0/MRA58N/2324235:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0 MRA58N 2324235 release-keys"

