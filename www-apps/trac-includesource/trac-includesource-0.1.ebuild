# Copyright 2009-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} )

TRAC_VERSION=0.11
MY_PN=includesourcepartial

inherit trac

DESCRIPTION="Trac plugin for including fragments of sources in wiki page"
HOMEPAGE="http://trac-hacks.org/wiki/IncludeSourcePartialPlugin"

KEYWORDS="~x86 ~amd64 ~x86-fbsd"

src_prepare() {
	touch includesource/__init__.py
}
