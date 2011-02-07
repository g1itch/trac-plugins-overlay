# Copyright 2009-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI="2"
TRAC_VERSION=trunk

inherit trac

DESCRIPTION="User accounts management plugin for Trac"
HOMEPAGE="http://trac-hacks.org/wiki/AccountManagerPlugin"

KEYWORDS="~x86 ~x86-fbsd"
LICENSE="BEER-WARE"

src_prepare() {
	epatch "${FILESDIR}"/add_i18n.patch
	epatch "${FILESDIR}"/add_msg.patch
	epatch "${FILESDIR}"/add_ru.patch
	"${python}" setup.py compile_catalog -f
}