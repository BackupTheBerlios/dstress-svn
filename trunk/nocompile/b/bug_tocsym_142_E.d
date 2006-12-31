// $HeadURL$
// $Date$
// $Author$

// @author@	Bradley Smith <digitalmars-com@baysmith.com>
// @date@	2006-10-25
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=460
// @desc@	[Issue 460] New: Assertion failure: '!needThis()' on line 143 in file 'tocsym.c'

// __DSTRESS_ELINE__ 19

module dstress.nocompile.b.bug_tocsym_142_E;

struct S {
	int i;
}

void foo() {
	void* f = &S.i;
}
