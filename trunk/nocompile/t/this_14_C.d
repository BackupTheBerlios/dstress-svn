// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-04
// @uri@	news:bug-642-3@http.d.puremagic.com/issues/
// @desc@	[Issue 642] New: error: mixin "static this" into where it cannot be

// __DSTRESS_ELINE__ 15

module dstress.nocompile.t.this_14_C;

void test(){
	this(){
	}
}
