#!/usr/bin
echo 'auto'
echo 'www build...'
gen
mdclean
mdbuild

echo 'turn to app'
cd ..
cd app

echo 'uninstall app...'
adb clean
adb uninstall com.fortune.app.wp24

echo 'app build...'
ant debug
adb install -r bin/p24-debug.apk

adb shell am start -n  com.fortune.app.wp24/com.fortune.app.wp24.MainActivity
echo 'activity running'

echo 'backing...'

cd ..
cd www
