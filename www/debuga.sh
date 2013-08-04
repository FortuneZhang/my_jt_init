#!/usr/bin
packagename="com.fortune.app.wp24"
apk="p24-debug.apk"

echo 'auto'
echo 'www build...'
gen
mdclean
mdbuild

echo 'turn to app fold'
cd ..
cd app

echo 'uninstall app...'
adb clean
adb uninstall $packagename

echo 'app build...'
ant debug
adb install -r bin/$apk

adb shell am start -n  $packagename/$packagename.activity.MainActivity
echo 'activity running'

echo 'backing...'

cd ..
cd www
echo 'please see phone'
