#!/bin/bash
cd openwrt
# wireless
#rm -rf files/etc/config/wireless
#rm -rf files/etc/modules.d/wireless_enable
# Add luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git passwall
cp -rf passwall package/feeds/
rm -rf passwall
# Add luci-theme-opentomcat
default_theme='material'
sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci
