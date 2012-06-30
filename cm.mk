# Release name
PRODUCT_RELEASE_NAME := SEDPRETTYNAME

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1024x768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/SEDNAME/full_SEDNAME.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := SEDNAME
PRODUCT_NAME := cm_SEDNAME
PRODUCT_BRAND := SEDBRANDING
PRODUCT_MODEL := SEDPRETTYNAME
PRODUCT_MANUFACTURER := Allwinner

#Set build fingerprint / ID / Product Name etc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SEDNAME BUILD_FINGERPRINT="allwinner/SEDNAME/SEDNAME:4.0.4/IMM76I/330937:user/release-keys" PRIVATE_BUILD_DESC="SEDNAME-user 4.0.4 IMM76I 330937 release-keys"
