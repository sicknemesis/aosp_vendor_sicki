# Written for SaberMod toolchains, modified as universal by Sicki.
# All credits to original creator, not me!

# Your toolchain version, used for rom
GCC_VERSION := 4.9
# Path rom toolchain
GCC_AND_PATH := prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-$(GCC_VERSION)
#Checks version info
GCC_AND := $(shell $(GCC_AND_PATH)/bin/arm-linux-androideabi-gcc --version)
# Find strings in version info
GCC_AND_NAME := $(filter (UBERTC%) (GCC%) (SaberMod%) (SaberNaro%) (LinaroMod%) (Linaro%),$(GCC_AND))
GCC_AND_NUMBER := $(filter 4.8 4.8.% 4.9 4.9.% 4.10 4.10.%,$(GCC_AND))
GCC_AND_DATE := $(filter 20140% 20141% 20150% 20151%,$(GCC_AND))
GCC_AND_STATUS := $(filter (release) (prerelease) (experimental),$(GCC_AND))
GCC_AND_VERSION := $(GCC_AND_NAME)-($(GCC_AND_NUMBER))-$(GCC_AND_DATE)-$(GCC_AND_STATUS)
#Adds values to build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.gcc.android=$(GCC_AND_VERSION)
