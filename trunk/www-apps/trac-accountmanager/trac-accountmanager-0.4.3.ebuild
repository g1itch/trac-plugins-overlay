# Copyright 2009-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5

TRAC_VERSION=0.11
ESVN_REPO_URI="http://trac-hacks.org/svn/${MY_PN}${ADDON_TYPE}/tags/acct_mgr-0.4.3"

inherit trac

DESCRIPTION="User accounts management plugin for Trac"
HOMEPAGE="http://trac-hacks.org/wiki/AccountManagerPlugin"

KEYWORDS="~x86 ~amd64 ~x86-fbsd"
LICENSE="BEER-WARE"
