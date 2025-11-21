#!/sbin/sh
export SWAPFILE="/data/swapfile"
# 创建6G的交换文件
ui_print "创建交换文件"
dd if=/dev/zero of="$SWAPFILE" bs=4K count=1572864 || exit 1

ui_print "启用交换文件"
mkswap "$SWAPFILE" || abort "mkswap 失败！"
swapon "$SWAPFILE" || abort "swapon 失败！"
