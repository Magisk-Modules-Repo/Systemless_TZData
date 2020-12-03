# Systemless TZData

Update your ROM's TZdata systemlessly. This will fix DST (daylight savings time) in many countries. There is no XDA support thread for this one due to the module's simplicity, and I will release an update when I see that there is an available TZData update.

The latest tzdata file could be found from [here](https://android.googlesource.com/platform/system/timezone/+/refs/heads/master/output_data/iana/), and the corresponding tz_version file could be found from [here](https://android.googlesource.com/platform/system/timezone/+/refs/heads/master/output_data/version/).

NOTICE:
The Time Zone Data module contains two part of it: tzdata and icudtXXl.dat.
This app DOES NOT update tzdata in ICU (as icudtXXl.dat),  but for bionic.
Because icudtXXl.dat not only varies according to the Android version but also to different customized UI.
Simply replace it might cause some serious problems such as system UI crashing. 
If you do need to update this file, you might need to compile this file and test it at your own risk.
For more detail, you could find it from [here](https://source.android.com/devices/tech/config/timezone-rules).



### Changelog:
```
#### V15
Adding tz_version file for 2020D
Remove useless file

#### V14
Updated to TZData 2020D

#### V13
Updated to TZData 2020A
```
You can find the changelog from earlier times [here](https://github.com/Magisk-Modules-Repo/Systemless_TZData/commits/master/README.md).
