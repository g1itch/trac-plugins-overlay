# Copyright 2009-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

TRAC_VERSION=trunk

inherit trac

DESCRIPTION="An extensible, user-customizable notification system for Trac"
HOMEPAGE="http://trac-hacks.org/wiki/AnnouncerPlugin"

KEYWORDS="~x86 ~x86-fbsd"

src_prepare() {
	"$(PYTHON)" setup.py compile_catalog -f
}
