# Copyright 2009-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5
TRAC_VERSION=0.11
ESVN_REPO_URI="http://trac-hacks.org/svn/announcerplugin/${PV}dev"

inherit trac

DESCRIPTION="An extensible, user-customizable notification system for Trac"
HOMEPAGE="http://trac-hacks.org/wiki/AnnouncerPlugin"

KEYWORDS="~x86 ~amd64 ~x86-fbsd"

src_prepare() {
	#8620 on track-hacks.org
	epatch "${FILESDIR}"/resolution-from.patch
	"$(PYTHON)" setup.py compile_catalog -f
}
