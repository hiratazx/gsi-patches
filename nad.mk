$(call inherit-product, vendor/nusantara/config/common.mk)
$(call inherit-product, vendor/nusantara/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/nusantara/config/BoardConfigNAD.mk)
$(call inherit-product, device/nad/sepolicy/common/sepolicy.mk)
-include vendor/nusantara/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

TARGET_FACE_UNLOCK_SUPPORTED := true
