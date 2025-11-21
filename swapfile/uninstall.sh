#!/sbin/sh
export SWAPFILE=/data/swapfile
ui_print "关闭交换文件"
swapoff "$SWAPFILE" || abort "swapoff 失败！"
ui_print "删除交换文件"
rm -f "$SWAPFILE" || abort "移除交换文件$SWAPFILE失败！"
