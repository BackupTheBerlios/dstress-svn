// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2006-10-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=462
// @desc@	[Issue 462] New: invalid typeinfo usage breaks dmd compiler

// __DSTRESS_ELINE__ 16

module dstress.nocompile.t.typeinfo_02_A;

void foo(){
	Object[1] o;
	o[0].typeinfo = o.typeinfo;
}
