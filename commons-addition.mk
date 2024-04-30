# F-Droid
PRODUCT_PACKAGES += \
    F-DroidPrivilegedExtension

# SMS replacement
PRODUCT_PACKAGES += \
    QKSMS

# Email
PRODUCT_PACKAGES += \
    K9Mail

# Firefox (Browser replacement) // does not work
PRODUCT_PACKAGES += \
    FirefoxFenix \
    FirefoxFocus

# Cromite (Browser replacement) // does not work
PRODUCT_PACKAGES += \
    Cromite


### OLD NOT USED
# OpenGapps GMS
# replace in partner_gms.mk
GAPPS_VARIANT := pico
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)

# include on Pixel devices
# in their device.mk or device-common.mk
GAPPS_PRODUCT_PACKAGES += \
    GoogleCamera
###

### Also OLD NOT USED
# ARM64 MindtheGapps GMS
-include vendor/gapps/arm64/arm64-vendor.mk

# ARM MindtheGapps GMS
-include vendor/gapps/arm/arm-vendor.mk