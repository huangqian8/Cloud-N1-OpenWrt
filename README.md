# 云编译 N1 OpenWrt 固件

**更新日志**
- 20230118 更新内核版本 6.1.6
- 20221031 更新内核版本 6.0.6
- 20220917 更新配置
- 20220814 更新内核版本 5.19.1
- 20220731 更新内核版本 5.18.15
- 20220620 更新内核版本 5.18.5
- 20220509 更新配置，更新内核版本 5.17.5
- 20220428 添加自动打包命令，生成刷机固件
- 20220427 更新配置，Release默认保留3个
- 20220426 更新依赖安装命令，更新配置
- 20210827 更新配置，具体功能见截图
- 20210210 修正源码更新造成的编译错误，集成 docker。脚本文件调整
- 20201124 修正 set-env 有效性造成的编译错误
- 20200926 修正 openclash 编译错误
- 20200727 docker兼容性造成编译错误，暂不集成

说明：
- 本项目使用 Github Actions 下载 [Lean](https://github.com/coolsnowwolf/lede) 的 `Openwrt` 源码仓库，进行云编译。
- 本项目使用定时编译（北京时间每周日下午4点开始自动运行编译）及触发编译（更新script.sh后可开始编译）两种方式。
- 本项目编译固件适配斐讯 N1 盒子，如需刷机，可直接下载 [releases](https://github.com/huangqian8/Cloud-N1-OpenWrt/releases) 内固件。
- 本项目相对源码默认设置做了如下更改：

**增强项**：（**打勾项**默认**编译**入固件；**未打勾项**默认**不编译**入固件。）
  - [x] 修改架构适配斐讯 N1 盒子
  - [x] 添加 Perl依赖
  - [x] 添加主题 opentomacat 并设置为默认
  - [x] 添加第三方插件 luci-app-openclash
  - [x] 启用 Docker （系统——启动项：启动）
  - [x] 添加第三方插件 luci-app-vssr
  - [x] 编译 ZeroTier
  - [x] 添加第三方插件 luci-app-amlogic
  - [x] 添加第三方插件 luci-app-adguardhome

**精简项**：
  - [x] luci-app-accesscontrol
  - [x] luci-app-arpbind
  - [x] luci-app-ddns
  - [x] luci-app-filetransfer
  - [x] luci-app-rclone
  - [x] luci-app-turboacc
  - [x] luci-app-upnp
  - [x] luci-app-vsftpd

![N1_OpenWRT.png](https://i.loli.net/2021/08/27/u4318mKdQlYtek2.png)

## 感谢 ❤️
- 源码来源： Lean 的 Openwrt 源码仓库 https://github.com/coolsnowwolf/lede
- 脚本来源： P3TERX 的 使用 GitHub Actions 云编译 OpenWrt https://github.com/P3TERX/Actions-OpenWrt
- 打包脚本： Flippy 的 OpenWrt 打包脚本 Actions https://github.com/ophub/flippy-openwrt-actions
