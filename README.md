# 云编译 N1 OpenWrt 固件

**说明**：
- 本项目使用 Github Actions 下载 [Lean](https://github.com/coolsnowwolf/lede) 的 `Openwrt` 源码仓库，进行云编译。
- 本项目使用定时编译（北京时间每周日下午4点开始运行编译）及触发编译（更新 `README.md`、 `script.sh`、 `config.sh`后可开始编译）两种方式。
- 本项目编译固件适配斐讯 N1 盒子，如需刷机，可直接下载 [releases](https://github.com/huangqian8/Cloud-N1-OpenWrt/releases/latest) 内固件。
- 本项目编译配置如下：

**添加编译**（默认未勾选，自选！）
  - [x] 修改架构适配斐讯 N1 盒子
    - [x] Target System —— QEMU ARM Virtual Machine
    - [x] Subtarget —— 64-bit ARM machines
  - [x] `luci-app-docker`
  - [x] `luci-app-dockerman`
  - [x] `luci-theme-opentomcat`
  - [x] `luci-app-adguardhome`
  - [x] `luci-app-amlogic`

**默认编译**（默认勾选，未取消！）
  - [x] `luci-app-autoreboot`
  - [x] `luci-app-filetransfer`
  - [x] `luci-app-nlbwmon`
  - [x] `luci-app-ssr-plus`
    - [x] `Include ChinaDNS-NG`
    - [x] `Include MosDNS`
    - [x] `Include Shadowsocks Simple Obfs Plugin`
    - [x] `Include ShadowsocksR Libev Client`
  - [x] `luci-app-vlmcsd`
  - [x] `luci-app-wol`

**强制编译**（默认勾选，无法取消！）
  - [x] `luci-app-firewall`

**精简编译**（默认勾选，取消！）
  - [x] `luci-app-accesscontrol`
  - [x] `luci-app-arpbind`
  - [x] `luci-app-ddns`
  - [x] `Include rclone-webui`
  - [x] `Include rclone-ng (another webui)`
  - [x] `luci-app-turboacc`
    - [x] `Include Flow Offload`
    - [x] `Include Shortcut-FE CM`
    - [x] `Include BBR CCA`
    - [x] `Include Pdnsd`
  - [x] `UnblockNeteaseMusic Golang Version`
  - [x] `luci-app-upnp`
  - [x] `luci-app-vsftpd`

**更新日志**
- 20250303 修正 `actions/upload-artifact` 版本升级造成的编译错误
- 20240224 更新配置
- 20231129 更新内核版本 6.1.63，删除失效的插件
- 20231015 更新内核版本 6.1.57，集成 `PassWall`
- 20231013 更新截图
- 20231009 更新内核版本 6.1.56
- 20230915 修正 Github Action 空间不足导致的打包失败，更新内核版本 6.1.52
- 20230619 修正 Github Action 空间不足导致的打包失败，更新内核版本 6.1.34
- 20230525 更新配置
- 20230523 更新配置
- 20230211 修正 `set-output` 有效性造成的编译错误，更新内核版本 6.1.10
- 20230118 更新内核版本 6.1.6
- 20221031 更新内核版本 6.0.6
- 20220917 更新配置
- 20220814 更新内核版本 5.19.1
- 20220731 更新内核版本 5.18.15
- 20220620 更新内核版本 5.18.5
- 20220509 更新配置，更新内核版本 5.17.5
- 20220428 添加自动打包命令，生成刷机固件
- 20220427 更新配置，Release 默认保留3个
- 20220426 更新依赖安装命令，更新配置
- 20210827 更新配置，具体功能见截图
- 20210210 修正源码更新造成的编译错误，集成 `docker`。脚本文件调整
- 20201124 修正 `set-env` 有效性造成的编译错误
- 20200926 修正 `openclash` 编译错误
- 20200727 `docker` 兼容性造成编译错误，暂不集成

**界面截图**

![N1_OpenWRT.png](https://github.com/huangqian8/Cloud-N1-OpenWrt/blob/main/snapshot.png)

## 感谢 ❤️
- 源码来源： Lean 的 Openwrt 源码仓库 https://github.com/coolsnowwolf/lede
- 脚本来源： P3TERX 的 使用 GitHub Actions 云编译 OpenWrt https://github.com/P3TERX/Actions-OpenWrt
- 打包脚本： Flippy 的 OpenWrt 打包脚本 Actions https://github.com/ophub/flippy-openwrt-actions