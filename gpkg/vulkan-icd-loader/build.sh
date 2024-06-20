TERMUX_PKG_HOMEPAGE=https://www.khronos.org/vulkan/
TERMUX_PKG_DESCRIPTION="Vulkan Installable Client Driver (ICD) Loader"
TERMUX_PKG_LICENSE="custom"
TERMUX_PKG_LICENSE_FILE="LICENSE.txt"
TERMUX_PKG_MAINTAINER="@termux-pacman"
TERMUX_PKG_VERSION=1.3.288
TERMUX_PKG_SRCURL=https://github.com/KhronosGroup/Vulkan-Loader/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=c3acc079f05a3943ad6ab468adc002bae74f77a54878902166160292f4a52ff1
TERMUX_PKG_DEPENDS="glibc"
TERMUX_PKG_BUILD_DEPENDS="vulkan-headers-glibc, libxrandr-glibc"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DVULKAN_HEADERS_INSTALL_DIR=$TERMUX_PREFIX
-DFALLBACK_CONFIG_DIRS=$TERMUX_PREFIX/etc/xdg
-DFALLBACK_DATA_DIRS=$TERMUX_PREFIX/local/share:$TERMUX_PREFIX/share
-DSYSCONFDIR=$TERMUX_PREFIX/etc
-DBUILD_WSI_XCB_SUPPORT=On
-DBUILD_WSI_XLIB_SUPPORT=On
-DBUILD_WSI_WAYLAND_SUPPORT=On
"
