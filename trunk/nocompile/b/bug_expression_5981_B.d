// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-03
// @uri@	news:bug-641-3@http.d.puremagic.com/issues/
// @desc@	[Issue 641] New: Complex string operations in template argument ICEs dmd

// __DSTRESS_ELINE__ 14

module dstress.nocompile.b.bug_expression_5981_B;

void foo(){
	auto x = ([""]~[])[0];
}
