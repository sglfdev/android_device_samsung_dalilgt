$(call inherit-product, device/samsung/dalilgt/full_dalilgt.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SHV-E120K TARGET_DEVICE=SHV-E120K BUILD_FINGERPRINT="samsung/SHV-E120K/SHV-E120K:4.4.2/KOT49H/E120KKKJMK1:user/release-keys" PRIVATE_BUILD_DESC="SHV-E120K-user 4.4.2 KOT49H E120KKKJMK1 release-keys"

PRODUCT_NAME := cm_dalilgt
PRODUCT_DEVICE := dalilgt

