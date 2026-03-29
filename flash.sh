#!/bin/bash
echo "=== JP6 Flash Script ==="
echo "Backing up current boot partition..."
dd if=/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot of=/sdcard/pre_flash_backup.img bs=4096
echo "Flashing new boot image..."
dd if=/sdcard/boot_otg.img of=/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot bs=4096
sync
echo "Done! Reboot to test."
