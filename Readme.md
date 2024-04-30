# LineageOS w/ Sandboxed Play Services

This repo contains a list of commits and what is necessary to merge them with the latest LineageOS sources (currently Lineage 21), to get Sandboxed Play Services working on LineageOS.

The "scripts" are only guidelines and notes, and are not currently meant to be run. Patchsets *may* be created in the future.

Everything provided here is for others to run builds the same as what is provided.

### Features

* User instead of Userdebug
  * MicroG Signature-spoofing commit updated to work on user builds
* Pixel devices include AVB and corrected dm-verity for bootloader locking *support*
  * **User discretion is advised.** 
  * No support for locked bootloaders
    * See [this Reddit thread](https://www.reddit.com/r/LineageOS/comments/n7yo7u/a_discussion_about_bootloader_lockingunlocking/) for official stance on Bootloader Locking
* Extra Apps
  * **disabled** Reserved space, for system G-Apps and addon install
  * QKSMS replacing stock messaging for SMS/MMS
  * K-9 Mail for an up-to-date email app
  * F-Droid Privileged Extension
    * Needs to be on product partition if loaded via vendor/lineage/config/*.mk
    * Or could be added to build/make (but we do things the Lineage-way here)
* Max number of users raised from 4 to 16
* Blue LineageOS bootanimation (these are unofficial builds after all)
* From GrapheneOS:
  * Secondary User Logout (**broken**)
  * Stop Auto-granting location to system browsers (Currently Jelly)
  * Censored notifications from other users
  * Sandboxed Play Services
    * Many things that are pre-requisite for gmscompat
    * See `gmscompat-patches.bash` for further info
* Everything else standard from LineageOS