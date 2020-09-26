#!/bin/bash
# Version: 1.0
cd openwrt
# Disable wireless
#rm -rf files/etc/config/wireless
#rm -rf files/etc/modules.d/wireless_enable
# Change CPU architecture and compression options
cat >> .config <<EOF
CONFIG_TARGET_armvirt=y
CONFIG_TARGET_armvirt_64=y
CONFIG_TARGET_armvirt_64_Default=y
# CONFIG_TARGET_ROOTFS_CPIOGZ is not set
# CONFIG_TARGET_ROOTFS_SQUASHFS is not set
EOF
# Add dependencies
cat >> .config <<EOF
CONFIG_PACKAGE_perl=y
CONFIG_PACKAGE_perl-http-date=y
CONFIG_PACKAGE_perl-xml-parser=y
CONFIG_PACKAGE_perlbase-autosplit=y
CONFIG_PACKAGE_perlbase-b=y
CONFIG_PACKAGE_perlbase-base=y
CONFIG_PACKAGE_perlbase-bigint=y
CONFIG_PACKAGE_perlbase-bignum=y
CONFIG_PACKAGE_perlbase-bytes=y
CONFIG_PACKAGE_perlbase-charnames=y
CONFIG_PACKAGE_perlbase-class=y
CONFIG_PACKAGE_perlbase-compress=y
CONFIG_PACKAGE_perlbase-config=y
CONFIG_PACKAGE_perlbase-cwd=y
CONFIG_PACKAGE_perlbase-dirhandle=y
CONFIG_PACKAGE_perlbase-dynaloader=y
CONFIG_PACKAGE_perlbase-encode=y
CONFIG_PACKAGE_perlbase-encoding=y
CONFIG_PACKAGE_perlbase-env=y
CONFIG_PACKAGE_perlbase-errno=y
CONFIG_PACKAGE_perlbase-essential=y
CONFIG_PACKAGE_perlbase-extutils=y
CONFIG_PACKAGE_perlbase-fcntl=y
CONFIG_PACKAGE_perlbase-feature=y
CONFIG_PACKAGE_perlbase-file=y
CONFIG_PACKAGE_perlbase-filehandle=y
CONFIG_PACKAGE_perlbase-getopt=y
CONFIG_PACKAGE_perlbase-i18n=y
CONFIG_PACKAGE_perlbase-integer=y
CONFIG_PACKAGE_perlbase-io=y
CONFIG_PACKAGE_perlbase-ipc=y
CONFIG_PACKAGE_perlbase-json-pp=y
CONFIG_PACKAGE_perlbase-list=y
CONFIG_PACKAGE_perlbase-locale=y
CONFIG_PACKAGE_perlbase-math=y
CONFIG_PACKAGE_perlbase-mime=y
CONFIG_PACKAGE_perlbase-ostype=y
CONFIG_PACKAGE_perlbase-params=y
CONFIG_PACKAGE_perlbase-posix=y
CONFIG_PACKAGE_perlbase-re=y
CONFIG_PACKAGE_perlbase-scalar=y
CONFIG_PACKAGE_perlbase-selectsaver=y
CONFIG_PACKAGE_perlbase-selfloader=y
CONFIG_PACKAGE_perlbase-socket=y
CONFIG_PACKAGE_perlbase-symbol=y
CONFIG_PACKAGE_perlbase-text=y
CONFIG_PACKAGE_perlbase-thread=y
CONFIG_PACKAGE_perlbase-threads=y
CONFIG_PACKAGE_perlbase-tie=y
CONFIG_PACKAGE_perlbase-time=y
CONFIG_PACKAGE_perlbase-unicode=y
CONFIG_PACKAGE_perlbase-unicore=y
CONFIG_PACKAGE_perlbase-utf8=y
CONFIG_PACKAGE_perlbase-xsloader=y
CONFIG_PERL_NOCOMMENT=y
CONFIG_PERL_THREADS=y
CONFIG_PACKAGE_python=y
CONFIG_PACKAGE_python-base=y
CONFIG_PACKAGE_python-codecs=y
CONFIG_PACKAGE_python-compiler=y
CONFIG_PACKAGE_python-ctypes=y
CONFIG_PACKAGE_python-db=y
CONFIG_PACKAGE_python-decimal=y
CONFIG_PACKAGE_python-distutils=y
CONFIG_PACKAGE_python-email=y
CONFIG_PACKAGE_python-gdbm=y
CONFIG_PACKAGE_python-light=y
CONFIG_PACKAGE_python-logging=y
CONFIG_PACKAGE_python-multiprocessing=y
CONFIG_PACKAGE_python-ncurses=y
CONFIG_PACKAGE_python-openssl=y
CONFIG_PACKAGE_python-pip-conf=y
CONFIG_PACKAGE_python-pydoc=y
CONFIG_PACKAGE_python-sqlite3=y
CONFIG_PACKAGE_python-unittest=y
CONFIG_PACKAGE_python-xml=y
CONFIG_PACKAGE_python3=y
CONFIG_PACKAGE_python3-asyncio=y
CONFIG_PACKAGE_python3-base=y
CONFIG_PACKAGE_python3-cgi=y
CONFIG_PACKAGE_python3-cgitb=y
CONFIG_PACKAGE_python3-codecs=y
CONFIG_PACKAGE_python3-ctypes=y
CONFIG_PACKAGE_python3-dateutil=y
CONFIG_PACKAGE_python3-dbm=y
CONFIG_PACKAGE_python3-decimal=y
CONFIG_PACKAGE_python3-distutils=y
CONFIG_PACKAGE_python3-email=y
CONFIG_PACKAGE_python3-gdbm=y
CONFIG_PACKAGE_python3-light=y
CONFIG_PACKAGE_python3-logging=y
CONFIG_PACKAGE_python3-lzma=y
CONFIG_PACKAGE_python3-multiprocessing=y
CONFIG_PACKAGE_python3-ncurses=y
CONFIG_PACKAGE_python3-openssl=y
CONFIG_PACKAGE_python3-pip=y
CONFIG_PACKAGE_python3-pydoc=y
CONFIG_PACKAGE_python3-setuptools=y
CONFIG_PACKAGE_python3-six=y
CONFIG_PACKAGE_python3-sqlite3=y
CONFIG_PACKAGE_python3-unittest=y
CONFIG_PACKAGE_python3-urllib=y
CONFIG_PACKAGE_python3-xml=y
CONFIG_PACKAGE_python3-yaml=y
CONFIG_PACKAGE_fdisk=y
CONFIG_PACKAGE_libfdisk=y
CONFIG_PACKAGE_blkid=y
CONFIG_PACKAGE_libblkid=y
CONFIG_PACKAGE_lsblk=y
CONFIG_PACKAGE_losetup=y
CONFIG_PACKAGE_uuidgen=y
CONFIG_PACKAGE_TAR_BZIP2=y
CONFIG_PACKAGE_TAR_GZIP=y
CONFIG_PACKAGE_TAR_POSIX_ACL=y
CONFIG_PACKAGE_TAR_XATTR=y
CONFIG_PACKAGE_TAR_XZ=y
CONFIG_PACKAGE_tar=y
CONFIG_TARGET_OPTIMIZATION="-Os -pipe -mcpu=generic -march=armv8-a -mtune=cortex-a53"
CONFIG_TARGET_OPTIONS=y
CONFIG_PACKAGE_gawk=y
CONFIG_PACKAGE_getopt=y
CONFIG_PACKAGE_NTFS-3G_USE_LIBFUSE=y
CONFIG_PACKAGE_acl=y
CONFIG_PACKAGE_attr=y
CONFIG_PACKAGE_badblocks=y
CONFIG_PACKAGE_btrfs-progs=y
CONFIG_PACKAGE_chattr=y
CONFIG_PACKAGE_dosfstools=y
CONFIG_PACKAGE_dumpe2fs=y
CONFIG_PACKAGE_e2freefrag=y
CONFIG_PACKAGE_f2fs-tools=y
CONFIG_PACKAGE_f2fsck=y
CONFIG_PACKAGE_fuse-utils=y
CONFIG_PACKAGE_libacl=y
CONFIG_PACKAGE_libattr=y
CONFIG_PACKAGE_libfuse=y
CONFIG_PACKAGE_liblz4=y
CONFIG_PACKAGE_liblzma=y
CONFIG_PACKAGE_liblzo=y
CONFIG_PACKAGE_libtirpc=y
CONFIG_PACKAGE_libwrap=y
CONFIG_PACKAGE_lsattr=y
CONFIG_PACKAGE_mkhfs=y
CONFIG_PACKAGE_nfs-utils=y
CONFIG_PACKAGE_nfs-utils-libs=y
CONFIG_PACKAGE_resize2fs=y
CONFIG_PACKAGE_squashfs-tools-mksquashfs=y
CONFIG_PACKAGE_squashfs-tools-unsquashfs=y
CONFIG_PACKAGE_swap-utils=y
CONFIG_PACKAGE_tune2fs=y
CONFIG_PACKAGE_xfs-admin=y
CONFIG_PACKAGE_xfs-fsck=y
CONFIG_PACKAGE_xfs-growfs=y
CONFIG_PACKAGE_xfs-mkfs=y
CONFIG_SQUASHFS_TOOLS_LZ4_SUPPORT=y
CONFIG_SQUASHFS_TOOLS_LZO_SUPPORT=y
CONFIG_SQUASHFS_TOOLS_XZ_SUPPORT=y
CONFIG_PACKAGE_lscpu=y
CONFIG_DEFAULT_TARGET_OPTIMIZATION="-Os -pipe -mcpu=generic"
CONFIG_CPU_TYPE="generic"
EOF
# Add luci-app-openclash
git clone https://github.com/vernesong/OpenClash.git package-temp
mv -f package-temp/luci-app-openclash package/lean/
cat >> .config <<EOF
CONFIG_LIBCURL_COOKIES=y
CONFIG_LIBCURL_FILE=y
CONFIG_LIBCURL_FTP=y
CONFIG_LIBCURL_HTTP=y
CONFIG_LIBCURL_MBEDTLS=y
CONFIG_LIBCURL_NO_SMB="!"
CONFIG_LIBCURL_PROXY=y
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_ca-bundle=y
CONFIG_PACKAGE_coreutils=y
CONFIG_PACKAGE_coreutils-nohup=y
CONFIG_PACKAGE_curl=y
CONFIG_PACKAGE_iptables-mod-tproxy=y
CONFIG_PACKAGE_kmod-ip6tables=y
CONFIG_PACKAGE_kmod-ipt-tproxy=y
CONFIG_PACKAGE_kmod-nf-ipt6=y
CONFIG_PACKAGE_kmod-nf-reject6=y
CONFIG_PACKAGE_libcurl=y
CONFIG_PACKAGE_libmbedtls=y
CONFIG_PACKAGE_libncurses=y
CONFIG_PACKAGE_libreadline=y
CONFIG_PACKAGE_luci-app-openclash=y
CONFIG_PACKAGE_terminfo=y
EOF
rm -rf package-temp
# Add luci-theme-opentomcat
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git theme-temp/luci-theme-opentomcat
rm -rf theme-temp/luci-theme-opentomcat/LICENSE
rm -rf theme-temp/luci-theme-opentomcat/README.md
mv -f theme-temp/luci-theme-opentomcat package/lean/
cat >> .config <<EOF
CONFIG_PACKAGE_luci-theme-opentomcat=y
EOF
rm -rf theme-temp
default_theme='opentomcat'
sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci
# Add docker
#cat >> .config <<EOF
#CONFIG_PACKAGE_luci-app-dockerman=y
#CONFIG_PACKAGE_luci-lib-docker=y
#CONFIG_PACKAGE_docker-ce=y
#EOF
# Remove luci-app-*
cat >> .config <<EOF
# CONFIG_PACKAGE_adbyby is not set
# CONFIG_PACKAGE_alsa-lib is not set
# CONFIG_PACKAGE_alsa-utils is not set
# CONFIG_PACKAGE_avahi-dbus-daemon is not set
# CONFIG_PACKAGE_dbus is not set
# CONFIG_PACKAGE_iptables-mod-ipsec is not set
# CONFIG_PACKAGE_kmod-crypto-cbc is not set
# CONFIG_PACKAGE_kmod-crypto-deflate is not set
# CONFIG_PACKAGE_kmod-crypto-des is not set
# CONFIG_PACKAGE_kmod-crypto-echainiv is not set
# CONFIG_PACKAGE_kmod-crypto-hmac is not set
# CONFIG_PACKAGE_kmod-crypto-md5 is not set
# CONFIG_PACKAGE_kmod-crypto-rng is not set
# CONFIG_PACKAGE_kmod-crypto-sha256 is not set
# CONFIG_PACKAGE_kmod-crypto-wq is not set
# CONFIG_PACKAGE_kmod-ipsec is not set
# CONFIG_PACKAGE_kmod-ipt-ipsec is not set
# CONFIG_PACKAGE_kmod-iptunnel6 is not set
# CONFIG_PACKAGE_kmod-sound-core is not set
# CONFIG_PACKAGE_kmod-tun is not set
# CONFIG_PACKAGE_libalac is not set
# CONFIG_PACKAGE_libavahi-client is not set
# CONFIG_PACKAGE_libavahi-dbus-support is not set
# CONFIG_PACKAGE_libconfig is not set
# CONFIG_PACKAGE_libdaemon is not set
# CONFIG_PACKAGE_libdbus is not set
# CONFIG_PACKAGE_libexpat is not set
# CONFIG_PACKAGE_libgmp is not set
# CONFIG_PACKAGE_libminiupnpc is not set
# CONFIG_PACKAGE_libnatpmp is not set
# CONFIG_PACKAGE_libpopt is not set
# CONFIG_PACKAGE_libsoxr is not set
# CONFIG_PACKAGE_luci-app-accesscontrol is not set
# CONFIG_PACKAGE_luci-app-adbyby-plus is not set
# CONFIG_PACKAGE_luci-app-airplay2 is not set
# CONFIG_PACKAGE_luci-app-ddns is not set
# CONFIG_PACKAGE_luci-app-ipsec-vpnd is not set
# CONFIG_PACKAGE_luci-app-upnp is not set
# CONFIG_PACKAGE_luci-app-vsftpd is not set
# CONFIG_PACKAGE_luci-app-xlnetacc is not set
# CONFIG_PACKAGE_luci-app-zerotier is not set
# CONFIG_PACKAGE_miniupnpd is not set
# CONFIG_PACKAGE_shairport-sync-openssl is not set
# CONFIG_PACKAGE_strongswan is not set
# CONFIG_PACKAGE_strongswan-charon is not set
# CONFIG_PACKAGE_strongswan-ipsec is not set
# CONFIG_PACKAGE_strongswan-minimal is not set
# CONFIG_PACKAGE_strongswan-mod-aes is not set
# CONFIG_PACKAGE_strongswan-mod-gmp is not set
# CONFIG_PACKAGE_strongswan-mod-hmac is not set
# CONFIG_PACKAGE_strongswan-mod-kernel-netlink is not set
# CONFIG_PACKAGE_strongswan-mod-nonce is not set
# CONFIG_PACKAGE_strongswan-mod-pubkey is not set
# CONFIG_PACKAGE_strongswan-mod-random is not set
# CONFIG_PACKAGE_strongswan-mod-sha1 is not set
# CONFIG_PACKAGE_strongswan-mod-socket-default is not set
# CONFIG_PACKAGE_strongswan-mod-stroke is not set
# CONFIG_PACKAGE_strongswan-mod-updown is not set
# CONFIG_PACKAGE_strongswan-mod-x509 is not set
# CONFIG_PACKAGE_strongswan-mod-xauth-generic is not set
# CONFIG_PACKAGE_strongswan-mod-xcbc is not set
# CONFIG_PACKAGE_vsftpd-alt is not set
# CONFIG_PACKAGE_zerotier is not set
# CONFIG_PACKAGE_dns2socks is not set
# CONFIG_PACKAGE_libevent2 is not set
# CONFIG_PACKAGE_libuci-lua is not set
# CONFIG_PACKAGE_luci-app-ssr-plus is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Redsocks2 is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Server is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_V2ray is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_V2ray_plugin is not set
# CONFIG_PACKAGE_microsocks is not set
# CONFIG_PACKAGE_redsocks2 is not set
# CONFIG_PACKAGE_shadowsocksr-libev-server is not set
# CONFIG_PACKAGE_simple-obfs is not set
# CONFIG_PACKAGE_tcpping is not set
# CONFIG_PACKAGE_v2ray-plugin is not set
EOF
# Add luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package-temp/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package-temp/luci-app-vssr
mv -f package-temp/lua-maxminddb package/lean/
mv -f package-temp/luci-app-vssr package/lean/
cat >> .config <<EOF
CONFIG_PACKAGE_lua-maxminddb=y
CONFIG_PACKAGE_luci-app-vssr=y
EOF
rm -rf package-temp