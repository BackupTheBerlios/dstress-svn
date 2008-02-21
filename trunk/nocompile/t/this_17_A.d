// $HeadURL$
// $Date$
// $Author$

// @author@	<sean@chittenden.org>
// @date@	2007-09-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1415
// @desc@	[Issue 1415] gdc crash

module dstress.nocompile.t.this_17_A;

// __DSTRESS_ELINE__ 17

class X{
	char[] name;

	static void a() {
		if(!(name is null)){
			assert(0);
		}
	}
}
