# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit a5-specific vendor tree
$(call inherit-product-if-exists, vendor/htc/a51/a51-vendor.mk)

# Inherit from a51
$(call inherit-product, device/htc/a51/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_a51
PRODUCT_DEVICE := a51
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := a51
