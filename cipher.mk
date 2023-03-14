$(call inherit-product, vendor/cipher/config/common.mk)
$(call inherit-product, vendor/cipher/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/cipher/config/BoardConfigLineage.mk)
$(call inherit-product, device/cipher/sepolicy/common/sepolicy.mk)
-include vendor/cipher/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

# CipherOS specific flags
# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 720
# Faceunlock Support
TARGET_FACE_UNLOCK_SUPPORTED := true
# Maintainer
CIPHER_MAINTAINER := ItzKaguya
# GMS
CIPHER_GAPPS := true
# Battery Info
CIPHER_BATTERY := 6969
# Screen Size
CIPHER_SCREEN :=  69
# Enable Blurs
CIPHER_BLUR := false
