ui_print   "***************************************"
ui_print   "*  _____ _________    _  _____  _     *"    
ui_print   "* |_   _|__  /  _ \  / \|_   _|/ \    *"   
ui_print   "*   | |   / /| | | |/ _ \ | | / _ \   *"  
ui_print   "*   | |  / /_| |_| / ___ \| |/ ___ \  *"
ui_print   "*   |_| /____|____/_/   \_\_/_/   \_\ *"
ui_print   "*     ~Systemless TZdata Updater~     *"
ui_print   "*      ~By: Ryaniskira & Nkh0472      *"
ui_print   "*           & GrayJackFixxxer~        *"
ui_print   "*                                     *"
ui_print   "***************************************"

ui_print " "
ui_print "  Let's detect what is the version of your Android"
ui_print " "

# Variables
DEVFND=0
SDK_VER=1
SDK_VER_MAX=31
# SDK check
  if [ $API -ge $SDK_VER ] && [ $API -lt $SDK_VER_MAX ]; then
    ui_print "SDK$API detected. It is supported."
    DEVFND=1
  fi
# Abort if no match
if [ $DEVFND == 0 ]; then
  abort "Android is newer than Android 11 or modified build.prop! Aborting."
fi

ui_print "   Let's install tzdata for SDK$API"
if [ $API -ge 29 ]; then 
	cp -afr $MODPATH/system/usr/share/zoneinfo/SOURCES/tzdataN $MODPATH/system/usr/share/zoneinfo/tzdata
	cp -afr $MODPATH/system/usr/share/zoneinfo/SOURCES/tz_versionN $MODPATH/system/usr/share/zoneinfo/tz_version
else
	cp -afr $MODPATH/system/usr/share/zoneinfo/SOURCES/tzdataO $MODPATH/system/usr/share/zoneinfo/tzdata
	cp -afr $MODPATH/system/usr/share/zoneinfo/SOURCES/tz_versionO $MODPATH/system/usr/share/zoneinfo/tz_versionO
fi
rm -rf $MODPATH/system/usr/share/zoneinfo/SOURCES/
