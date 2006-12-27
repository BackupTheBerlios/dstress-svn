// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=750
// @desc@	[Issue 750] New: Recursive typeof in function declaration crashes DMD

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.typeof_11_D;

void test(typeof(&test) p) { }

int main() {
	test(&test);
	return 0;
}

