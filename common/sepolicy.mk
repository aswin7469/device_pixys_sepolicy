#
# This policy configuration will be used by all products that
# inherit from Lineage
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/pixys/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pixys/sepolicy/common/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
<<<<<<< HEAD
    device/pixys/sepolicy/common/dynamic
=======
    device/pixys/sepolicy/common/dynamic \
    device/pixys/sepolicy/common/system
>>>>>>> 25a9db9e434122ea56ab28fb94f49558b12b4c7e
else
BOARD_SEPOLICY_DIRS += \
    device/pixys/sepolicy/common/dynamic \
    device/pixys/sepolicy/common/vendor
endif

# Selectively include legacy rules defined by the products
-include device/pixys/sepolicy/legacy-common/sepolicy.mk
