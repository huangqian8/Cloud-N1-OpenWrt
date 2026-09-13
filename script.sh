#!/bin/bash
cd openwrt

clone_retry() {
  local repo="$1"
  local target="$2"
  for attempt in 1 2 3; do
    git clone --depth 1 "$repo" "$target" && return 0
    rm -rf "$target"
    sleep 5
  done
  echo "Failed to clone $repo after 3 attempts" >&2
  return 1
}

# Add luci-app-adguardhome
clone_retry https://github.com/rufengsuixing/luci-app-adguardhome.git package-temp/luci-app-adguardhome
mv -f package-temp/luci-app-adguardhome package/lean/
rm -rf package-temp

# Add luci-theme-opentomcat
clone_retry https://github.com/Leo-Jo-My/luci-theme-opentomcat.git theme-temp/luci-theme-opentomcat
rm -rf theme-temp/luci-theme-opentomcat/LICENSE
rm -rf theme-temp/luci-theme-opentomcat/README.md
mv -f theme-temp/luci-theme-opentomcat package/lean/
rm -rf theme-temp
default_theme='opentomcat'
sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci

# Add luci-app-amlogic
clone_retry https://github.com/ophub/luci-app-amlogic.git package-temp/luci-app-amlogic
mv -f package-temp/luci-app-amlogic/luci-app-amlogic package/lean/
rm -rf package-temp
