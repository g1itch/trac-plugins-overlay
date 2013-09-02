# Copyright 2009-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5

TRAC_VERSION=0.10
MY_PN=${PN/-/}

inherit trac

DESCRIPTION="Content negotiation plugin for Trac wiki page"
HOMEPAGE="http://trac-hacks.org/wiki/TracWikiNegotiatorPlugin"

KEYWORDS="~x86 ~amd64 ~x86-fbsd"
