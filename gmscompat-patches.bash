####
#### This isn't an actual script, and it is to
#### function as a how-to merge different changes
####
exit

##
## Android 14 / Lineage 21 (U)
##

### Google Play Service // Play Store

cd ~/android/lineage/21/art
git fetch https://github.com/GrapheneOS/platform_art -t 2024040900
# gmscompat: add support for loading DEX files from a file descriptor
git cherry-pick f7353793976191f514742b36fdfcfae8d65fe7c1

cd ~/android/lineage/21/bionic
git fetch https://github.com/GrapheneOS/platform_bionic -t 2024040900
# gmscompat: linker: Add support for opening zip files by fd paths
git cherry-pick 2f7f863da169b24a2d8d1fbef57143593dd28800

cd ~/android/lineage/21/build/make
git fetch https://github.com/GrapheneOS/platform_build -t 2024040900
# add GmsCompat app
git cherry-pick a7a153e16189ebb33a7edb416666fb9192864759

cd ~/android/lineage/21/frameworks/base
git fetch https://github.com/GrapheneOS/platform_frameworks_base -t 2024040900
# always auto-grant permissions that have "normal" protectionLevel
git cherry-pick 5f849930a204c12353415a4589a806235b963c09
# add constants for some system package names
git cherry-pick c4d8fb5472e722580be08f1e742b85dc31854e90
# enable secondary user logout support by default
git cherry-pick adb67d8b3565568c482d00e2dc2e56d17920864a
# stop auto-granting location to system browsers
git cherry-pick 34019eb8e6131702376a9ce0d6657555bdca3844
# appop: Save discrete app op history for more permissions
git cherry-pick 4926cfaae0ea78666515df23cc5df0d792950d6e
# extsettings: add a set of helper classes for defining system settings
git cherry-pick b908a40561af65168dd5e65761864fe1f0e042cd
# add exec spawning sysprop to ExtSettings
git cherry-pick 9e560089a8f1b3a6368fc2784d9cc2fe6165449e
# add system package check methods to PackageUtils
git cherry-pick d32252c55873a69e616fdfdbe7ea57aaa5e474ca
# define package name of first-party app source
git cherry-pick 804f861c0126ee4d869e5c8ccb4a7634c0a1fa83
# add APIs for launching LogViewer app
git cherry-pick 92b1c3a8c3f0ed8c615c95b1ad45b38809a6a099
# add helpers for system_server extensions 
git cherry-pick 192205e2c57550b1ba225245d5543c8837794a95
# Support forwarding notifications from other users
git cherry-pick 73447a05d283a9786ff156423c8c844c3bb932da
# add hooks for modifying PackageManagerService behavior
git cherry-pick 05d89ad32fb78859ae39ab2620ed4f66b1e28bb6
# add hooks for modifying ActivityThread behavior
git cherry-pick 475f6dfedd7c5d7cee4991b70d259a9a1c8b344f
# AppBindArgs: infrastructure for passing extra args to app process init
git cherry-pick 2caca1de7b36dd8cd48299b5e7cd915e2a9a9800
# infrastructure for per-package customization of APK parser
git cherry-pick 036ed5219d27d7e847a9d1c2af0172d88944c279
# PackageExt: infrastructure for attaching extra data to known parsed APKs
git cherry-pick b95769a8a753f5beebf8e70c5a883ee4d4a7fffb
# add PackageId of the first loaded APK to AppGlobals
git cherry-pick 5b46a919a5e7a0d10233df3d9fa0117e19d00811
# add PackageId definitions
git cherry-pick 74aa63a76ec85bfa1716a4c593b8c226adde6b59
# support specifying per-app compatibility configs
git cherry-pick 259523727e2446318d7cbba6b27eaca27c1f7ff2
# infrastructure for attaching extra data to ApplicationInfo objects
git cherry-pick 24e2d773a23245eb5ffb176eee9b2e5be5f4c161
# gosps: support for per-app GrapheneOS-specific persistent state
git cherry-pick bf27141de9c744299f0ba9f6b8159874d8249710
# add method for updating cached package permission state
git cherry-pick 45a1e9deecf020579de860ed93c48c7da27c2b4b
# PackageHooks: infrastructure for per-package hooks in system_server
git cherry-pick c7957c3b1ff8628ff76db5cf10f58551fa8490eb
# infrastructure for spoofing self permission checks
git cherry-pick 13ce469793f7e02dc62293c335ea9d520ca91025
# infrastructure for special runtime permissions
git cherry-pick 13ac987321bd8a32eee50f2abe3d0d0e6f74cde5
# infrastructure for the Storage Scopes feature
git cherry-pick a3c3f0724488961a76bb2076ccc8415cbea29efb
# add an option to show the details of an application error to the user
git cherry-pick ed7c8fe0ca4e10fb945d343779a10030dd56edbc #
# gmscompat: add compatibility layer for unprivileged GMS
git cherry-pick f401907e22f6de77b4a4cdfa57c058a6729f4720 #
# define READ_DEVICE_SERIAL_NUMBER permission for Build.getSerial() access
git cherry-pick 17777eb2b31540189f991f4a1bb791c5fbc23b67
# aauto: define a restricted version of the MANAGE_USB permission
git cherry-pick 1bf06759f478e69694165dc3a09416044bbf4ec6
# aauto: add definition of restricted BLUETOOTH_PRIVILEGED permission
git cherry-pick 00b8d3890b406e9bf33ec7f234e3ad8719ccadc4
# aauto: add definition of restricted WIFI_PRIVILEGED permission
git cherry-pick 42b67ed6a6ea539422e2cdf18c24404d479c2790
# aauto: add definition of restricted READ_PRIVILEGED_PHONE_STATE permission
git cherry-pick c5d890d02c2ad5db00bbe7e7cf63cba4f08a7130
# aauto: support using aauto USB accessory activity as a default activity
git cherry-pick 3d61960b20f40ba65895fdbc7bfb2bd12fcbdb35
# aauto: define ASSOCIATE_COMPANION_DEVICES_RESTRICTED permission
git cherry-pick 0e244bfc5016f5821ff7e2a1d06eb9fa2911c1f2
# aauto: support allowing association with "automotive projection" devices
git cherry-pick 51afda6b01150849dfd5ac52d7811f933aeff33a
# aauto: support granting privileged permissions via PackageHooks
git cherry-pick 6e415ed816c37e969b26592b4fae4926705eb2b7 # 
# 14 QPR2: adjust Package{Ext,Hooks,ParsingHooks}
git cherry-pick dc0876ae9bf92387e36a3e5a28b38b2caa04a3aa
# 14 QPR2: adjust AppCompatConfig integration
git cherry-pick 25af08c4749415910243ade3af22d481c5c66dff
# gmscompat: remove unnecessary workaround for app updates via Play Store
git cherry-pick 605dc212e1d6a8d659cb790bff043524ec140b0d
# gmscompat: remove unused GCarrierSettingsApp.getPackageSpec() method
git cherry-pick 1156900849adb8d73c59d53a086546335287ff8b

# fixes
vi services/core/java/com/android/server/pm/GosPackageStatePmHooks.java
    # comment out 716-717
vi services/core/java/com/android/server/ext/PackageManagerHooks.java
    # Line 23
    # import com.android.server.pm.pkg.parsing.ParsingPackage;
    # changes to 
    # import com.android.internal.pm.pkg.parsing.ParsingPackage;

# API updates not imported from commits
cp ~/patches/module-lib-lint-baseline.txt ~/android/lineage/21/frameworks/base/core/api/module-lib-lint-baseline.txt
cp ~/patches/system-lint-baseline.txt  ~/android/lineage/21/frameworks/base/core/api/system-lint-baseline.txt
git commit

cd ~/android/lineage/21/libcore
git fetch https://github.com/GrapheneOS/platform_libcore -t 2024040900
# gmscompat: support for Dynamite modules
git cherry-pick acb47593feae72369df3075c074e16a8cbe71f6b

cd ~/android/lineage/21/packages/apps/Settings
git fetch https://github.com/GrapheneOS/platform_packages_apps_Settings -t 2024040900
# add link to Sandboxed Google Play settings
git cherry-pick 6556b720d71e7cc08daf31d087b7a1570d297d76
# add a per-user setting for forwarding censored notifs
git cherry-pick 8dc9a68c5f026b038c45c83a37c3ef56897dda6c

cd ~/android/lineage/21/packages/modules/Connectivity
git fetch https://github.com/GrapheneOS/platform_packages_modules_Connectivity -t 2024040900
# Use Cloudflare DNS servers instead of Google DNS servers for diagnostics, connectivity checking and tethering
git cherry-pick 9ae26976001d43583f7e6105f9377dd2274bcb3e
# gmscompat: Add ConnectivityManager hook for baseline compatibility
git cherry-pick 074b3d7834ae3668b1fee9488c6da2b988cc772b

cd ~/android/lineage/21/packages/modules/Permission
git fetch https://github.com/GrapheneOS/platform_packages_modules_Permission -t 2024040900
# stop auto-granting location to system browsers
git cherry-pick 4c05d4de7f45c7c5c3afeb684a82ade1be21a6ce
# gmscompat: restart GMS processes when permission gets granted
git cherry-pick e5c31f4f473a869572c8b758b3bc26ba70bca27b
# gmscompat: don't restart Android Auto after permission grants by default
git cherry-pick e4dde61eb863eab26ad811deb736da19fd247336

# fixes
vi PermissionController/src/com/android/permissioncontroller/permission/utils/KotlinUtils.kt
    # comment out 1078
git commit

cd ~/android/lineage/21/packages/providers/DownloadProvider
git fetch https://github.com/GrapheneOS/platform_packages_providers_DownloadProvider -t 2024040900
# gmscompat: allow harmless COLUMN_NOTIFICATION_CLASS
git cherry-pick 569db12a167a9e78a3e0d6b8e0281a28aff4e229
