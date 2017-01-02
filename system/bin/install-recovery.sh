#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8507392:c7f6a7f28d053c1c4d374c55552ac57d14301536; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:8022016:c86308c775559f674190c1a9c6ca1e3cc44937e8 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY c7f6a7f28d053c1c4d374c55552ac57d14301536 8507392 c86308c775559f674190c1a9c6ca1e3cc44937e8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
