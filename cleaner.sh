#!/system/bin/sh
#
# Condition sys.boot_completed checking
until [ `getprop sys.boot_completed`. = 1. ]
    do sleep 60
done
      # Clean call records olders 3 days
      if  [ -d  /data/data/com.google.android.diale*/files/callrecording ]; then
         find /data/data/com.google.android.diale*/files/callrecording/ -type f -name '*.amr' -mtime +3 -exec rm {} \;
      fi;
      sleep 3
      if  [ -d  /sdcard/data/CallRecords-TP ]; then
         find /sdcard/data/CallRecords-TP/ -type f -name '*.amr' -mtime +3 -exec rm {} \;
         find /sdcard/data/CallRecords-TP/ -type f -name '*.m4a' -mtime +3 -exec rm {} \;
         find /sdcard/data/CallRecords-TP/ -type f -name '*.wav' -mtime +3 -exec rm {} \;
      fi;
      sleep 3
      if  [ -d  /sdcard/MIUI/sound_recorder/call_rec ]; then
         find /sdcard/MIUI/sound_recorder/call_rec/ -type f -name '*.mp3' -mtime +3 -exec rm {} \;
      fi;
      sleep 3
      if  [ -d  /sdcard/Music/Call*Recordings ]; then
         find /sdcard/Music/Call*Recordings/ -type f -name '*.aac' -mtime +3 -exec rm {} \;
         find /sdcard/Music/Call*Recordings/ -type f -name '*.amr' -mtime +3 -exec rm {} \;
      fi;
# Done
