# 云编译 N1 OpenWrt 固件

**更新日志**
- 20200907 RELEASES_TOKEN 说明
- 20200727 docker兼容性造成编译错误，暂不集成

说明：
- 本项目使用 Github Actions 下载 [Lean](https://github.com/coolsnowwolf/lede) 的 `Openwrt` 源码仓库，进行云编译。
- 必须添加 RELEASES_TOKEN ，[点击此处](https://github.com/settings/tokens)，选择public_repo ，添加到 settings-Secrets-Add a new secret
- 本项目使用定时编译（北京时间每周日下午4点开始自动运行编译）及触发编译（更新script.sh后可开始编译）两种方式。
- 本项目编译固件适配斐讯 N1 盒子，如需刷机，另需使用打包工具生成刷机固件。
- 本项目相对源码默认设置做了如下更改：

**增强项**：（**打勾项**默认**编译**入固件；**未打勾项**默认**不编译**入固件。）
  - [x] 修改架构适配斐讯 N1 盒子
  - [x] 添加 Perl、Python 依赖
  - [x] 修改登录IP为 192.168.2.2，网关、DNS为 192.168.2.1，关闭DHCP服务
  - [x] 添加主题 opentomacat 并设置为默认
  - [x] 添加第三方插件 luci-app-openclash
  - [ ] 添加无线功能（待测试）
  - [ ] 启用 Docker （系统——启动项：启动）
  - [x] 添加第三方插件 luci-app-vssr

**精简项**：
  - [x] luci-app-accesscontrol
  - [x] luci-app-adbyby-plus
  - [x] luci-app-airplay2
  - [x] luci-app-ddns
  - [x] luci-app-ipsec-vpnd
  - [x] luci-app-upnp
  - [x] luci-app-vsftpd
  - [x] luci-app-xlnetacc
  - [x] luci-app-zerotier
  - [x] luci-app-ssr-plus

![snapshot.png](https://i.loli.net/2020/04/07/krxPtyBf6hmzYLq.png)

## 感谢 ❤️
- 源码来源： Lean 的 Openwrt 源码仓库 https://github.com/coolsnowwolf/lede
- 脚本来源： P3TERX 的 使用 GitHub Actions 云编译 OpenWrt https://github.com/P3TERX/Actions-OpenWrt
