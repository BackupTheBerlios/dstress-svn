// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-04
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=643
// @desc@	[Issue 643] New: dmd crashes with fwd-referenced .sizeof via aliases

module dstress.compile.a.alias_40_A;

const int size = S.sizeof;

struct S{
}

static assert(size == S.sizeof);
