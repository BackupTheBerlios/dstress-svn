// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-04
// @uri@	news:bug-643-3@http.d.puremagic.com/issues/
// @desc@	[Issue 643] New: dmd crashes with fwd-referenced .sizeof via aliases

module dstress.compile.a.alias_40_A;

const int size = S.sizeof;

struct S{
}

static assert(size == S.sizeof);
