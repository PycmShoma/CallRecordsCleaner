#!/system/bin/sh
#
# Sleep statements
sleep 60
# Clean call records olders 3 days
      if  [ -d  /sdcard/Music/Call*Recordings ]; then
      find /sdcard/Music/Call*Recordings/ -type f -name '*.amr' -mtime +3 -exec rm {} \;
      find /sdcard/Music/Call*Recordings/ -type f -name '*.aac' -mtime +3 -exec rm {} \;
      fi;

# Done
