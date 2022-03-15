# Device Tree for OnePlus 7T aka Hotdogb for TWRP
## Disclaimer - Unofficial TWRP!
These are personal test builds of mine. In no way do I hold responsibility if it/you messes up your device.
Proceed at your own risk.

Make a directory named local_manifest under .repo, and create a new manifest file, for example hotdog.xml
and then paste the following

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<remote name="github"
	fetch="https://github.com/" />

<project path="device/oneplus/hotdogb"
	name="origin80417/android_device_oneplus_hotdogv2"
	remote="github"
	revision="hotdogb-11" />
</manifest>
```

Sync the sources with

```
repo sync
```

To build, execute these commands in order

```
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
lunch twrp_hotdogb-eng
mka adbd recoveryimage
```

#### Yet to test, let me know and I'll update as I test too
- [ ] Flashing ROMs (AOSP and OOS)
- [ ] ADB (+ sideload)
- [ ] all important partitions listed in mount/backup lists
- [ ] MTP export
- [ ] decrypt /data
- [ ] Backup/restore to/from internal
- [ ] F2FS/EXT4 Support, exFAT/NTFS where supported
- [ ] backup/restore to/from external (USB-OTG) storage
- [ ] update.zip sideload
- [ ] backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)

##### Credits
- CaptainThrowback for original trees.
- mauronofrio for original trees.
- TWRP team and everyone involved for their amazing work.
