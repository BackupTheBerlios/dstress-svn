// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2006-10-26
// @uri@	news:bug-462-3@http.d.puremagic.com/issues/
// @desc@	[Issue 462] New: invalid typeinfo usage breaks dmd compiler

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.typeinfo_02_C;

void foo(){
	int[1] x;
	int y;
	x[0].typeinfo = y.typeinfo;
}
