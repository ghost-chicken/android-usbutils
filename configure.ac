AC_INIT([usbutils],
	[008],
	[linux-usb@vger.kernel.org])
AC_PREREQ(2.60)
AM_INIT_AUTOMAKE([check-news foreign 1.9 dist-bzip2])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])
AC_PREFIX_DEFAULT([/usr])

AC_USE_SYSTEM_EXTENSIONS
AC_SYS_LARGEFILE

AC_CHECK_HEADERS([byteswap.h])
AC_CHECK_FUNCS([nl_langinfo iconv])

PKG_CHECK_MODULES(LIBUSB, libusb-1.0 >= 1.0.9)

AC_ARG_ENABLE([udev], [AC_HELP_STRING([--enable-udev],
	[use udev for device name compilation (recommended) [default=yes]])],
	[], [enable_udev="yes"])
if test "x$enable_udev" = "xyes" ; then
	PKG_CHECK_MODULES(UDEV, libudev >= 196)
	AC_DEFINE(USE_UDEV, 1, [Use udev for name compilation from modalias])
fi
AC_SUBST(USE_UDEV)
AM_CONDITIONAL(USE_UDEV, test "x$enable_udev" = xyes)

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([
	Makefile
])
AC_CONFIG_SUBDIRS([usbhid-dump])

AC_OUTPUT
AC_MSG_RESULT([
	usbutils $VERSION
	=============

	prefix:                 ${prefix}
	datarootdir:            ${datarootdir}
	datadir:                ${datadir}
	mandir:                 ${mandir}

	usb.ids:                ${datadir}/usb.ids
	libudev:                ${enable_udev}

	compiler:               ${CC}
	cflags:                 ${CFLAGS}
	ldflags:                ${LDFLAGS}
])
