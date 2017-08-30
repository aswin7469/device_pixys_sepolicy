#
# This policy configuration will be used by all qcom products
# that inherit from Lineage
#

BOARD_SEPOLICY_DIRS += \
    device/pixys/sepolicy/qcom
    device/pixys/sepolicy/qcom/common \
    device/pixys/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
