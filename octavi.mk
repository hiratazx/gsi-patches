$(call inherit-product, vendor/octavi/config/common_full_phone.mk)
$(call inherit-product, device/octavi/sepolicy/common/sepolicy.mk)
-include vendor/octavi/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

TARGET_FACE_UNLOCK_SUPPORTED := true
OCTAVI_MAINTAINER := ItzKaguya

# APN
PRODUCT_PACKAGES += apns-conf.xml

ifeq ($(TARGET_PRODUCT),treble_arm64_bgN)
  WITH_GAPPS := true
else ifeq ($(TARGET_PRODUCT),treble_a64_bgN)
  WITH_GAPPS := true
else ifeq ($(TARGET_PRODUCT),treble_arm64_bgZ)
  WITH_GAPPS := true
else ifeq ($(TARGET_PRODUCT),treble_a64_bgZ)
  WITH_GAPPS := true
else ifeq ($(TARGET_PRODUCT),treble_arm64_bgS)
  WITH_GAPPS := true
else ifeq ($(TARGET_PRODUCT),treble_a64_bgS)
  WITH_GAPPS := true
else
  WITH_GAPPS := false
endif

# OTA
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
        ro.system.ota.json_url=https://raw.githubusercontent.com/Hirozuto/ota-update/main/octavi-gsi.json
