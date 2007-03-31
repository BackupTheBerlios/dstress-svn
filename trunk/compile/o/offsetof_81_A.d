// $HeadURL$
// $Date$
// $Author$

// @author@	<guido@grumpy-cat.com
// @date@	2007-02-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=947
// @desc@	[Issue 947] offsetof and alignof for an enum field of a struct fail to compile

module dstress.compile.o.offsetof_81_A;

enum E{
	A,
	B
}

struct S{
	int x;
	E e;
}

static assert(S.x.offsetof != S.e.offsetof);
