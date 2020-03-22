#
# This policy configuration will be used by all qcom products
# that inherit from Lineage
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pixys/sepolicy/qcom/private

<<<<<<< HEAD
ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_SEPOLICY_DIRS += \
    device/pixys/sepolicy/qcom \
=======
ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pixys/sepolicy/qcom/dynamic \
    device/pixys/sepolicy/qcom/system
else
BOARD_SEPOLICY_DIRS += \
    device/pixys/sepolicy/qcom/dynamic \
>>>>>>> 25a9db9e434122ea56ab28fb94f49558b12b4c7e
    device/pixys/sepolicy/qcom/vendor
endif
