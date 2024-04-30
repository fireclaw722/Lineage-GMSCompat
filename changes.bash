##
## Android 14 / Lineage 21 (U)
##

# Allow Signature-Spoofing on -user builds
cd ~/android/lineage/21/frameworks/base
vi services/core/java/com/android/server/pm/ComputerEngine.java
    # comment or remove lines 1463

## GrapheneOS Ports
cd ~/android/lineage/21/frameworks/base
git fetch https://github.com/GrapheneOS/platform_frameworks_base -t 2024040900
# enable secondary user logout support by default
git cherry-pick adb67d8b3565568c482d00e2dc2e56d17920864a
# stop auto-granting location to system browsers
git cherry-pick 34019eb8e6131702376a9ce0d6657555bdca3844
# appop: Save discrete app op history for more permissions
git cherry-pick 4926cfaae0ea78666515df23cc5df0d792950d6e
# Support forwarding notifications from other users
git cherry-pick 73447a05d283a9786ff156423c8c844c3bb932da

cd ~/android/lineage/21/packages/apps/Settings
git fetch https://github.com/GrapheneOS/platform_packages_apps_Settings -t 2024040900
# add a per-user setting for forwarding censored notifs
git cherry-pick 8dc9a68c5f026b038c45c83a37c3ef56897dda6c #
    # remove string regarding fingerprints setting

cd ~/android/lineage/21/packages/modules/Connectivity
git fetch https://github.com/GrapheneOS/platform_packages_modules_Connectivity -t 2024040900
# Use Cloudflare DNS servers instead of Google DNS servers for diagnostics, connectivity checking and tethering
git cherry-pick 9ae26976001d43583f7e6105f9377dd2274bcb3e

cd ~/android/lineage/21/packages/modules/Permission
git fetch https://github.com/GrapheneOS/platform_packages_modules_Permission -t 2024040900
# stop auto-granting location to system browsers
git cherry-pick 4c05d4de7f45c7c5c3afeb684a82ade1be21a6ce

# Raise maximum users from 4 to 16
cd ~/android/lineage/21/vendor/lineage/overlay/common/frameworks/base/core/res/res/values
vi config.xml
    # Edit
    <integer name="config_multiuserMaximumUsers">16</integer>

# add pre-built apps to build process (see commons-addition.mk for options)
cd ~/android/lineage/21/vendor/lineage/config/
vi common.mk

# Updater URL
cd ~/android/lineage/21/packages/apps/Updater/app/src/main/res/values/
vi strings.xml

### Device-specfic commits
## AVB Pixels
# 7 and 7 Pro
cd ~/android/lineage/21/device/google/gs201
vi BoardConfigLineage.mk
    # comment out disabling vbmeta
    # also, comment out reserved space for GApps if you build w/ GApps
    # also, edit this entry
    BOARD_AVB_VBMETA_VENDOR_KEY_PATH := /home/bldr/.android-certs/avb.pem
# Edit key file to point to key
vi BoardConfig-common.mk
    # edit these entries to the following
    BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := /home/bldr/.android-certs/avb.pem
    BOARD_AVB_BOOT_KEY_PATH := /home/bldr/.android-certs/avb.pem
    BOARD_AVB_INIT_BOOT_KEY_PATH := /home/bldr/.android-certs/avb.pem

# 6 and 6 Pro (should be done because 7 and 7 Pro depend on GS101 as well)
cd ~/android/lineage/21/device/google/gs101
vi BoardConfigLineage.mk
    # comment out disabling vbmeta
    # also, comment out reserved space for GApps if you build w/ GApps
    # also, edit this entry
    BOARD_AVB_VBMETA_VENDOR_KEY_PATH := /home/bldr/.android-certs/avb.pem
# Edit key file to point to key
vi BoardConfig-common.mk
    # edit these entries to the following
    BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := /home/bldr/.android-certs/avb.pem
    BOARD_AVB_BOOT_KEY_PATH := /home/bldr/.android-certs/avb.pem

# 5a
cd ~/android/lineage/21/device/google/redbull
# comment out disabling vbmeta
# also, comment out reserved space for GApps if you build w/ GApps
vi BoardConfigLineage.mk
# Edit key file to point to key
vi BoardConfig-common.mk
    # edit these entries to the following
    BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := /home/bldr/.android-certs/avb.pem
    BOARD_AVB_BOOT_KEY_PATH := /home/bldr/.android-certs/avb.pem

# 3a
cd ~/android/lineage/21/device/google/bonito
# Comment out disabling vbmeta
# Also, comment out reserved space for GApps if you build w/ GApps
vi BoardConfigLineage.mk
# Add lines to point to avb key file
# described here: (https://forum.xda-developers.com/t/guide-re-locking-the-bootloader-on-the-oneplus-8t-with-a-self-signed-build-of-los-18-1.4259409/)
vi BoardConfig-common.mk
    BOARD_AVB_ALGORITHM := SHA256_RSA2048
    BOARD_AVB_KEY_PATH := /home/bldr/.android-certs/avb.pem