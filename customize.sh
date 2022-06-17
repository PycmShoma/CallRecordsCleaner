#!/sbin/sh
#
  echo "- Done"
  echo "*******************"
  sleep 1
  echo "- Starting additional script"
  chmod 644 $MODPATH/system/priv-app/msg/msg.apk
  chmod 755 $MODPATH/system/bin/msg
  chmod 755 $MODPATH/service.sh
  mv $MODPATH/service.sh /data/adb/service.d/cr_cleaner.sh
