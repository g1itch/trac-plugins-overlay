# Copyright 2009-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} )

TRAC_VERSION=1.0
ADDON_TYPE=macro
MY_PN=${PN/-/}

inherit trac

DESCRIPTION="Image svg plugin for Trac."
HOMEPAGE="http://trac-hacks.org/wiki/TracImageSvgMacro"

KEYWORDS="~x86 ~amd64 ~x86-fbsd"
