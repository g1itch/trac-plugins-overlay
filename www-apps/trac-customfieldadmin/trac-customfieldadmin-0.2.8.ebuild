# Copyright 2010-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5

TRAC_VERSION=0.11

inherit trac

DESCRIPTION="Trac Custom Field Admin plugin"
HOMEPAGE="http://trac-hacks.org/wiki/CustomFieldAdminPlugin"

KEYWORDS="~x86 ~amd64 ~x86-fbsd"

src_prepare() {
	"$(PYTHON)" setup.py compile_catalog -f
}
