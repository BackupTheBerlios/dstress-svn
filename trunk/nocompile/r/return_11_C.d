// $HeadURL$
// $Date$
// $Author$

// @author@	<s.d.hammett@googlemail.com>
// @date@	2007-10-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1593
// @desc@	[Issue 1593] ICE compiler crash empty return statement in function

// __DSTRESS_ELINE__ 19

module dstress.nocompile.r.return_11_C;

union S{
	int i;
}

S foo() {
	return;
}

static const S s = foo();
