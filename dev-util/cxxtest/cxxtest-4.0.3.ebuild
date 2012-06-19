# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="CxxTest is a JUnit/CppUnit/xUnit-like unit testing framework for C++."
HOMEPAGE="http://cxxtest.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""
IUSE="examples doc"

RDEPEND="dev-lang/perl"

S="${WORKDIR}/${PN}"

src_install() {
	dobin bin/cxxtestgen

	insinto /usr/include/cxxtest
	doins cxxtest/*

	dodoc README Versions
	use doc && dohtml docs/*
	if use examples; then
		docinto sample
		dodoc sample/*
	fi
}
