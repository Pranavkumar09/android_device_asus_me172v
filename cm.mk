# Release name
PRODUCT_RELEASE_NAME := ME172V

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/asus/me172v/full_me172v.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := me172v
PRODUCT_NAME := cm_me172v
PRODUCT_BRAND := Asus
PRODUCT_MODEL := ME172V
PRODUCT_MANUFACTURER := Asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME= WW_me172v BUILD_FINGERPRINT= asus/WW_me172v/me172v:4.1.1/JRO03H/WW_user_4.5.4.52875837_20140520:user/release-keys
