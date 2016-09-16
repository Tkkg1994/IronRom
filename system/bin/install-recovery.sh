#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8448000:2e0eea531cb1f8f8563ccff985bcef8bfd9fd3c0; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7964672:a4274fd263572c9ba8543f4c62d8581ed5ffb77b EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 2e0eea531cb1f8f8563ccff985bcef8bfd9fd3c0 8448000 a4274fd263572c9ba8543f4c62d8581ed5ffb77b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
