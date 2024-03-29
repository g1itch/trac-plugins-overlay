# Copyright 2009-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

# @ECLASS: trac.eclass
# @MAINTAINER:
# Dmitri Bogomolov <4glitch@gmail.com>
# @BLURB: variables and common flow to install Trac addons
# @DESCRIPTION:
# The trac eclass provides a common naming scheme for installing
# Trac addons.

# @ECLASS-VARIABLE: TRAC_VERSION
# @DESCRIPTION:
# A Trac version for which this addon intended (tested)

# @ECLASS-VARIABLE: ADDON_TYPE
# @DESCRIPTION:
# This can be plugin or macro
[ -z ${ADDON_TYPE} ] && ADDON_TYPE=plugin

[ -z ${MY_PN} ] && MY_PN=${PN/trac-/}

[ -z ${ESVN_REPO_URI} ] && \
ESVN_REPO_URI="http://trac-hacks.org/svn/${MY_PN}${ADDON_TYPE}/${TRAC_VERSION}"

PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1 subversion

LICENSE="BSD"
SLOT="0"
IUSE=""

if [ ${TRAC_VERSION} = trunk ]; then
	TRAC_EBUILD="trac-1.0.1"
else
	TRAC_EBUILD="trac-${TRAC_VERSION}"
fi

RDEPEND=">=www-apps/${TRAC_EBUILD}"
DEPEND="dev-python/setuptools"
S="${WORKDIR}"
