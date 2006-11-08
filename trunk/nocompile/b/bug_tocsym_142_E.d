// $HeadURL$
// $Date$
// $Author$

// @author@	Bradley Smith <digitalmars-com@baysmith.com>
// @date@	2006-10-25
// @uri@	news:bug-460-3@http.d.puremagic.com/issues/
// @desc@	[Issue 460] New: Assertion failure: '!needThis()' on line 143 in file 'tocsym.c'

// __DSTRESS_ELINE__ 19

module dstress.nocompile.b.bug_tocsym_142_E;

struct S {
	int i;
}

void foo() {
	void* f = &S.i;
}
