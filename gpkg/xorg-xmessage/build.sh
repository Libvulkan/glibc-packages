TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="Display a message or query in a window"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux-pacman"
TERMUX_PKG_VERSION=1.0.6
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/archive/individual/app/xmessage-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=d2eac545f137156b960877e052fcc8e29795ed735c02f7690fd7b439e6846a12
TERMUX_PKG_DEPENDS="libxaw-glibc"
TERMUX_PKG_BUILD_DEPENDS="xorg-util-macros-glibc"