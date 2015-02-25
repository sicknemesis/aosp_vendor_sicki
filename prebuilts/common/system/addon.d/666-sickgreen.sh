#!/sbin/sh
# 
# /system/addon.d/666-sickgreen.sh
# During a rom upgrade, this script backs up things you want from /system,
# This script will also restore those things, after system format,
# /system is formatted and reinstalled, then the file(s) is/are restored.
# Ripped from SimpleAOSP and CM, credits to them, and thank you!


. /tmp/backuptool.functions

list_files() {
cat <<EOF
etc/hosts
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
