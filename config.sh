#!/bin/bash
cd openwrt
cat >> .config <<EOF
CONFIG_TARGET_armvirt=y
CONFIG_TARGET_armvirt_64=y
CONFIG_TARGET_armvirt_64_Default=y
CONFIG_KERNEL_KEXEC=y
CONFIG_OPENSSL_PREFER_CHACHA_OVER_GCM=y
# CONFIG_TARGET_ROOTFS_CPIOGZ is not set
# CONFIG_TARGET_ROOTFS_EXT4FS is not set
# CONFIG_TARGET_ROOTFS_INITRAMFS is not set
# CONFIG_TARGET_ROOTFS_SQUASHFS is not set
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
CONFIG_PACKAGE_python-pip-conf=y
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
CONFIG_PACKAGE_lsblk=y
CONFIG_PACKAGE_losetup=y
CONFIG_PACKAGE_uuidgen=y
CONFIG_PACKAGE_TAR_BZIP2=y
CONFIG_PACKAGE_TAR_GZIP=y
CONFIG_PACKAGE_TAR_POSIX_ACL=y
CONFIG_PACKAGE_TAR_XATTR=y
CONFIG_PACKAGE_TAR_XZ=y
CONFIG_PACKAGE_tar=y
CONFIG_PACKAGE_gawk=y
CONFIG_PACKAGE_getopt=y
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
CONFIG_LIBCURL_COOKIES=y
CONFIG_LIBCURL_FILE=y
CONFIG_LIBCURL_FTP=y
CONFIG_LIBCURL_HTTP=y
CONFIG_LIBCURL_MBEDTLS=y
CONFIG_LIBCURL_NO_SMB="!"
CONFIG_LIBCURL_PROXY=y
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_coreutils-nohup=y
CONFIG_PACKAGE_curl=y
CONFIG_PACKAGE_iptables-mod-extra=y
CONFIG_PACKAGE_kmod-ipt-extra=y
CONFIG_PACKAGE_libcap=y
CONFIG_PACKAGE_libcap-bin=y
CONFIG_PACKAGE_libcap-bin-capsh-shell="/bin/sh"
CONFIG_PACKAGE_libcurl=y
CONFIG_PACKAGE_libdb47=y
CONFIG_PACKAGE_libruby=y
CONFIG_PACKAGE_libxml2=y
CONFIG_PACKAGE_libyaml=y
CONFIG_PACKAGE_luci-app-openclash=y
CONFIG_PACKAGE_ruby=y
CONFIG_PACKAGE_ruby-bigdecimal=y
CONFIG_PACKAGE_ruby-date=y
CONFIG_PACKAGE_ruby-dbm=y
CONFIG_PACKAGE_ruby-digest=y
CONFIG_PACKAGE_ruby-enc=y
CONFIG_PACKAGE_ruby-pstore=y
CONFIG_PACKAGE_ruby-psych=y
CONFIG_PACKAGE_ruby-stringio=y
CONFIG_PACKAGE_ruby-strscan=y
CONFIG_PACKAGE_ruby-yaml=y
CONFIG_PACKAGE_luci-theme-opentomcat=y
# CONFIG_PACKAGE_adbyby is not set
# CONFIG_PACKAGE_ip-full is not set
# CONFIG_PACKAGE_iptables-mod-ipsec is not set
# CONFIG_PACKAGE_kmod-crypto-cbc is not set
# CONFIG_PACKAGE_kmod-crypto-deflate is not set
# CONFIG_PACKAGE_kmod-crypto-des is not set
# CONFIG_PACKAGE_kmod-crypto-echainiv is not set
# CONFIG_PACKAGE_kmod-crypto-hmac is not set
# CONFIG_PACKAGE_kmod-crypto-md5 is not set
# CONFIG_PACKAGE_kmod-ipsec is not set
# CONFIG_PACKAGE_kmod-ipt-ipsec is not set
# CONFIG_PACKAGE_kmod-iptunnel6 is not set
# CONFIG_PACKAGE_kmod-tun is not set
# CONFIG_PACKAGE_libelf is not set
# CONFIG_PACKAGE_libgmp is not set
# CONFIG_PACKAGE_libminiupnpc is not set
# CONFIG_PACKAGE_libnatpmp is not set
# CONFIG_PACKAGE_luci-app-accesscontrol is not set
# CONFIG_PACKAGE_luci-app-adbyby-plus is not set
# CONFIG_PACKAGE_luci-app-arpbind is not set
# CONFIG_PACKAGE_luci-app-ddns is not set
# CONFIG_PACKAGE_luci-app-ipsec-vpnd is not set
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_fuse-utils is not set
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-ng is not set
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-webui is not set
# CONFIG_PACKAGE_luci-app-upnp is not set
# CONFIG_PACKAGE_luci-app-uugamebooster is not set
# CONFIG_PACKAGE_luci-app-vsftpd is not set
# CONFIG_PACKAGE_luci-app-xlnetacc is not set
# CONFIG_PACKAGE_luci-app-zerotier is not set
# CONFIG_PACKAGE_miniupnpd is not set
# CONFIG_PACKAGE_strongswan is not set
# CONFIG_PACKAGE_uugamebooster is not set
# CONFIG_PACKAGE_vsftpd-alt is not set
# CONFIG_PACKAGE_zerotier is not set
# CONFIG_PACKAGE_ca-bundle is not set
# CONFIG_PACKAGE_coreutils is not set
# CONFIG_PACKAGE_dns2socks is not set
# CONFIG_PACKAGE_iptables-mod-tproxy is not set
# CONFIG_PACKAGE_kmod-ip6tables is not set
# CONFIG_PACKAGE_kmod-ipt-tproxy is not set
# CONFIG_PACKAGE_kmod-nf-ipt6 is not set
# CONFIG_PACKAGE_kmod-nf-reject6 is not set
# CONFIG_PACKAGE_libev is not set
# CONFIG_PACKAGE_libmbedtls is not set
# CONFIG_PACKAGE_libsodium is not set
# CONFIG_PACKAGE_luci-app-ssr-plus is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Server is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Xray is not set
# CONFIG_PACKAGE_microsocks is not set
# CONFIG_PACKAGE_resolveip is not set
# CONFIG_PACKAGE_shadowsocks-libev-ss-local is not set
# CONFIG_PACKAGE_shadowsocks-libev-ss-redir is not set
# CONFIG_PACKAGE_shadowsocksr-libev-alt is not set
# CONFIG_PACKAGE_shadowsocksr-libev-server is not set
# CONFIG_PACKAGE_shadowsocksr-libev-ssr-local is not set
# CONFIG_PACKAGE_simple-obfs is not set
# CONFIG_PACKAGE_tcping is not set
CONFIG_PACKAGE_xray-core=y
CONFIG_PACKAGE_lua-maxminddb=y
CONFIG_PACKAGE_luci-app-vssr=y
CONFIG_PACKAGE_boost=y
CONFIG_PACKAGE_boost-date_time=y
CONFIG_PACKAGE_boost-program_options=y
CONFIG_PACKAGE_boost-system=y
CONFIG_PACKAGE_ipt2socks=y
CONFIG_PACKAGE_libmaxminddb=y
CONFIG_PACKAGE_luasocket=y
CONFIG_PACKAGE_trojan=y
CONFIG_PACKAGE_v2ray-plugin=y
CONFIG_boost-compile-visibility-hidden=y
CONFIG_boost-runtime-shared=y
CONFIG_boost-static-and-shared-libs=y
CONFIG_boost-variant-release=y
CONFIG_PACKAGE_cgroupfs-mount=y
CONFIG_PACKAGE_containerd=y
CONFIG_PACKAGE_docker-ce=y
CONFIG_PACKAGE_kmod-br-netfilter=y
CONFIG_PACKAGE_kmod-dax=y
CONFIG_PACKAGE_kmod-dm=y
CONFIG_PACKAGE_kmod-fs-btrfs=y
CONFIG_PACKAGE_kmod-ikconfig=y
CONFIG_PACKAGE_kmod-lib-crc32c=y
CONFIG_PACKAGE_kmod-lib-lzo=y
CONFIG_PACKAGE_kmod-lib-raid6=y
CONFIG_PACKAGE_kmod-lib-xor=y
CONFIG_PACKAGE_kmod-lib-zstd=y
CONFIG_PACKAGE_kmod-nf-ipvs=y
CONFIG_PACKAGE_kmod-veth=y
CONFIG_PACKAGE_libdevmapper=y
CONFIG_PACKAGE_libmount=y
CONFIG_PACKAGE_libnetwork=y
CONFIG_PACKAGE_luci-app-docker=y
CONFIG_PACKAGE_luci-i18n-docker-zh-cn=y
CONFIG_PACKAGE_mount-utils=y
CONFIG_PACKAGE_runc=y
CONFIG_PACKAGE_tini=y
EOF