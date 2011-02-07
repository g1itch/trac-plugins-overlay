# Copyright 2009-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI="2"

TRAC_VERSION=0.11
ADDON_TYPE=macro
MY_PN=${PN/-/}

inherit trac eutils

DESCRIPTION="Image svg plugin for Trac."
HOMEPAGE="http://trac-hacks.org/wiki/TracImageSvgMacro"

KEYWORDS="~x86 ~x86-fbsd"
