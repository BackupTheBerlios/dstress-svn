// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2007-04-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1153
// @desc@	[Issue 1153] dmd assertion failure

// __DSTRESS_ELINE__ 20

module dstress.nocompile.c.classinfo_02_A;

class Foo{
}

template Wrapper(int i){
} 

mixin Wrapper!(cast(int)(Foo.classinfo.vtbl[0]));

