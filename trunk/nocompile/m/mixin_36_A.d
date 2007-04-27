// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2007-04-24
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1187
// @desc@	[Issue 1187] Segfault with syntax error in two-level mixin.

// __DSTRESS_ELINE__ 15

module dstress.nocompile.m.mixin_36_A;

void a(){
	mixin(`mixin`);
}
