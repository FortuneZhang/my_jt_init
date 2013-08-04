#!/usr/bin
echo 'auto'

adb clean

adb uninstall com.moode.sms.client

ant debug

adb install -r bin/MoodeSMS_client-debug.apk

adb shell am start -n  com.moode.sms.client/com.moode.sms.activity.MainActivity

echo 'activtiy running'
