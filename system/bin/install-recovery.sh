#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8445952:63fac45309f5b89c663a2a4bc116c242bd33ed9f; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7962624:8ee4c6dd761b4170e6ffe4ecd45df78af564dfbc EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 63fac45309f5b89c663a2a4bc116c242bd33ed9f 8445952 8ee4c6dd761b4170e6ffe4ecd45df78af564dfbc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
