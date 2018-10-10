#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# inherit from qcom-common
-include device/xiaomi/msm8960-common/BoardConfigCommon.mk

LOCAL_PATH := device/xiaomi/aries

TARGET_BOOTLOADER_NAME       := aries

TARGET_OTA_ASSERT_DEVICE := aries

# Audio
AUDIO_FEATURE_ENABLED_PROXY_DEVICE      := true
AUDIO_FEATURE_ENABLED_AUXPCM_BT         := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP     := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS      := true
BOARD_USES_ALSA_AUDIO                   := true
BOARD_HAVE_AUDIENCE_ES310               := true
BOARD_HAVE_CSD_FAST_CALL_SWITCH         := true
BOARD_HAVE_NEW_QCOM_CSDCLIENT           := true
BOARD_USES_LEGACY_ALSA_AUDIO            := true
TARGET_USES_QCOM_MM_AUDIO               := true
TARGET_USES_QCOM_COMPRESSED_AUDIO       := true
QCOM_ACDB_ENABLED                       := true
QCOM_ANC_HEADSET_ENABLED                := true
QCOM_AUDIO_FORMAT_ENABLED               := true
QCOM_CSDCLIENT_ENABLED                  := true
QCOM_FLUENCE_ENABLED                    := true
QCOM_MULTI_VOICE_SESSION_ENABLED        := true
QCOM_OUTPUT_FLAGS_ENABLED               := true
QCOM_PROXY_DEVICE_ENABLED               := true
QCOM_TUNNEL_LPA_ENABLED                 := true
QCOM_USBAUDIO_ENABLED                   := true
TUNNEL_MODE_SUPPORTS_AMRWB              := true
USE_TUNNEL_MODE                         := true

TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/xiaomi/msm8960
TARGET_KERNEL_CONFIG := aries-perf-user_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x01E00000 # 44M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00F00000 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 8388608
BOARD_CACHEIMAGE_PARTITION_SIZE    := 402653184
BOARD_FLASH_BLOCK_SIZE             := 131072 # (BOARD_KERNEL_PAGESIZE * 64)


OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
HAVE_ADRENO_SOURCE := false

TARGET_RECOVERY_FSTAB            := $(LOCAL_PATH)/rootdir/ramdisk/fstab.qcom

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

-include vendor/xiaomi/aries/BoardConfigVendor.mk

