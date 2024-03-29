#!/sbin/sh
#
# Copyright © 2020 Nemesis Team
#

# Modern devices use /system as root ("/")
system_as_root=`getprop ro.build.system_root_image`
if [ "$system_as_root" == "true" ]; then
  if umount /vendor; then
    exit 0
  fi
else
  if umount /vendor; then
    exit 0
  fi
fi

exit 1
