#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8450048:a32211ffb60d4ea8c05e428305c2ea7e935f2c6f; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7966720:4ef736aee05add208075bd82746e6948e0fe1ce1 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY a32211ffb60d4ea8c05e428305c2ea7e935f2c6f 8450048 4ef736aee05add208075bd82746e6948e0fe1ce1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
