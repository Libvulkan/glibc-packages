TERMUX_PKG_HOMEPAGE=https://openldap.org
TERMUX_PKG_DESCRIPTION="OpenLDAP server"
TERMUX_PKG_LICENSE="OpenLDAP"
TERMUX_PKG_MAINTAINER="@termux-pacman"
TERMUX_PKG_VERSION="2.6.8"
TERMUX_PKG_SRCURL=https://www.openldap.org/software/download/OpenLDAP/openldap-release/openldap-${TERMUX_PKG_VERSION}.tgz
TERMUX_PKG_SHA256=48969323e94e3be3b03c6a132942dcba7ef8d545f2ad35401709019f696c3c4e
TERMUX_PKG_DEPENDS="libsasl-glibc, libuuid-glibc, openssl-glibc, unixodbc-glibc, libsodium-glibc, perl-glibc"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--localstatedir=$TERMUX_PREFIX/var/lib/openldap
--enable-dynamic
--enable-syslog
--enable-ipv6
--enable-local
--enable-crypt
--enable-spasswd
--enable-modules
--enable-backends
--enable-argon2
--with-argon2=libsodium
--disable-wt
--enable-overlays=mod
--with-cyrus-sasl
--with-threads
PERLBIN=$TERMUX_PREFIX/bin/perl
"

termux_step_pre_configure() {
	autoconf
}

termux_step_post_configure() {
	sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool
}
