#
# Copyright (C) 2012 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/samsung/smdk4412-common/BoardCommonConfig.mk

# Bionic
MALLOC_SVELTE := true

# Exynos4x12 Tablet
BOARD_GLOBAL_CFLAGS += -DEXYNOS4X12_TABLET
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING

# Camera
BOARD_USES_PROPRIETARY_LIBCAMERA := true

# Filesystem
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1444888576
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12620578816
BOARD_CACHEIMAGE_PARTITION_SIZE := 825638912
BOARD_FLASH_BLOCK_SIZE := 2048
TARGET_USERIMAGES_USE_EXT4 := true


# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  WITH_DEXPREOPT := true
endif

# Recovery
# inherit from the proprietary version
-include vendor/samsung/n80xx-common/BoardConfigVendor.mk
TARGET_RECOVERY_DENSITY := mdpi

# Selinux
BOARD_SEPOLICY_DIRS += \
   device/samsung/n80xx-common/selinux


