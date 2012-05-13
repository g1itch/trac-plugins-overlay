# Copyright 2010-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=4

TRAC_VERSION=0.11

inherit trac

DESCRIPTION="Trac Custom Field Admin plugin"
HOMEPAGE="http://trac-hacks.org/wiki/CustomFieldAdminPlugin"

KEYWORDS="~x86 ~x86-fbsd"

src_prepare() {
	epatch ${FILESDIR}/add_i18n.patch
	epatch ${FILESDIR}/add_msg.patch
	epatch ${FILESDIR}/add_ru.patch
	"$(PYTHON)" setup.py compile_catalog -f
}
