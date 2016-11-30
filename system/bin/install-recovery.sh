#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8450048:397decbf93e7c2d1f45fe95b681a84a8a6aca587; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7966720:e84f31f9fb23815a8455c7d8e43963a63f821e15 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 397decbf93e7c2d1f45fe95b681a84a8a6aca587 8450048 e84f31f9fb23815a8455c7d8e43963a63f821e15:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
