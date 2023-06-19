# 云编译 N1 OpenWrt 固件

**更新日志**
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

说明：
- 本项目使用 Github Actions 下载 [Lean](https://github.com/coolsnowwolf/lede) 的 `Openwrt` 源码仓库，进行云编译。
- 本项目使用定时编译（北京时间每周日下午4点开始自动运行编译）及触发编译（更新 `README.md`、 `script.sh`、 `config.sh`后可开始编译）两种方式。
- 本项目编译固件适配斐讯 N1 盒子，如需刷机，可直接下载 [releases](https://github.com/huangqian8/Cloud-N1-OpenWrt/releases) 内固件。
- 本项目相对源码默认设置做了如下更改：

**增强项**：（**打勾项**默认**编译**入固件；**未打勾项**默认**不编译**入固件。具体功能详见截图。）
  - [x] 修改架构适配斐讯 N1 盒子
  - [x] 添加 `Perl` 依赖
  - [x] 编译 `aliyundrive-webdav`
  - [x] 编译 `Docker`
  - [x] 编译 `OpenVPN Server`
  - [x] 编译 `ZeroTier`
  - [x] 添加主题 `opentomacat` 并设置为默认
  - [x] 添加第三方插件 `luci-app-adguardhome`
  - [x] 添加第三方插件 `luci-app-amlogic`
  - [x] 添加第三方插件 `luci-app-vssr`
  - [x] 添加第三方插件 `luci-app-openclash`

**精简项**：
  - [x] luci-app-accesscontrol
  - [x] luci-app-arpbind
  - [x] luci-app-ddns
  - [x] luci-app-filetransfer
  - [x] luci-app-rclone
  - [x] luci-app-turboacc
  - [x] luci-app-upnp
  - [x] luci-app-vsftpd

**界面截图**：

![N1_OpenWRT.png](https://img1.imgtp.com/2023/05/25/1NuJPHhp.png)

## 感谢 ❤️
- 源码来源： Lean 的 Openwrt 源码仓库 https://github.com/coolsnowwolf/lede
- 脚本来源： P3TERX 的 使用 GitHub Actions 云编译 OpenWrt https://github.com/P3TERX/Actions-OpenWrt
- 打包脚本： Flippy 的 OpenWrt 打包脚本 Actions https://github.com/ophub/flippy-openwrt-actions