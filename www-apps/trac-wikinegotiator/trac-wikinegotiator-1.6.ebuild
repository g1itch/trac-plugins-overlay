# Copyright 2009-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI="2"

TRAC_VERSION=0.10
MY_PN=${PN/-/}

inherit trac

DESCRIPTION="Content negotiation plugin for Trac wiki page"
HOMEPAGE="http://trac-hacks.org/wiki/TracWikiNegotiatorPlugin"

KEYWORDS="~x86 ~x86-fbsd"

src_prepare() {
	epatch "${FILESDIR}"/fix-import.patch
	sed -i -e 's|data_files=.*||g' setup.py
}
