#!/bin/bash
cd openwrt
# wireless
rm -rf files/etc/config/wireless
rm -rf files/etc/modules.d/wireless_enable
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.10/g' openwrt/package/base-files/files/bin/config_generate

# Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings
# Add luci-app-openclash
#git clone https://github.com/vernesong/OpenClash.git package-temp
mv -f package-temp/luci-app-openclash package/lean/
rm -rf package-temp
# Add luci-theme-opentomcat
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git theme-temp/luci-theme-opentomcat
#rm -rf theme-temp/luci-theme-opentomcat/LICENSE
#rm -rf theme-temp/luci-theme-opentomcat/README.md
#mv -f theme-temp/luci-theme-opentomcat package/lean/
#rm -rf theme-temp
#default_theme='opentomcat'
#sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci
# Add luci-app-vssr
#git clone https://github.com/jerrykuku/lua-maxminddb.git package-temp/lua-maxminddb
#git clone https://github.com/jerrykuku/luci-app-vssr.git package-temp/luci-app-vssr
#git clone https://github.com/kenzok8/small.git package-temp/small
#cp -r package-temp/small/* package/lean/
#mv -f package-temp/lua-maxminddb package/lean/
#mv -f package-temp/luci-app-vssr package/lean/
#rm -rf package-temp
# Add luci-theme-opentomcat
#svn co https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat
# Add luci-theme-argon
#rm -rf package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
#Add amlogic管理
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/lean/luci-app-amlogic
#Add luci-app-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/lean/luci-app-passwall
#Add luci-app-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
#Add luci-app-adguardhome
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome
