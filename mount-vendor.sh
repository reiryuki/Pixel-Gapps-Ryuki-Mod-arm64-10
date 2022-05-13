#!/sbin/sh
#
# Copyright © 2020 Nemesis Team
#

# Modern devices use /system as root ("/")
system_as_root=`getprop ro.build.system_root_image`
if [ "$system_as_root" == "true" ]; then
  if mount /vendor; then
    exit 0
  fi

  active_slot=`getprop ro.boot.slot_suffix`
  if [ ! -z "$active_slot" ]; then
    block=/dev/block/bootdevice/by-name/vendor$active_slot
  else
    block=/dev/block/bootdevice/by-name/vendor
  fi
  mkdir -p /vendor
  if mount -o rw $block /vendor ||
     mount -o rw $block /vendor -t ext4 ||
     mount -o rw $block /vendor -t f2fs; then
    exit 0
  fi
else
  if mount /vendor; then
    exit 0
  fi

  # Try to get the block from /etc/recovery.fstab
  block=`cat /etc/recovery.fstab | cut -d '#' -f 1 | grep /vendor | grep -o '/dev/[^ ]*' | head -1`
  if [ -n "$block" ] && mount $block /vendor; then
    exit 0
  fi
fi

exit 1
