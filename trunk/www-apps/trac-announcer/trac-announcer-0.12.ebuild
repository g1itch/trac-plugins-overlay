# Copyright 2009-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

TRAC_VERSION=trunk
ESVN_REPO_URI="http://trac-hacks.org/svn/announcerplugin/trunk"
ESVN_REVISION="8409"

inherit trac

DESCRIPTION="An extensible, user-customizable notification system for Trac"
HOMEPAGE="http://trac-hacks.org/wiki/AnnouncerPlugin"

KEYWORDS="~x86 ~x86-fbsd"

src_prepare() {
	"$(PYTHON)" setup.py compile_catalog -f
}
