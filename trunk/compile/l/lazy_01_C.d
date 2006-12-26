// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.linde@gmail.com>
// @date@	2006-12-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=703
// @desc@	[Issue 703] New: SuperExp::scanForNestedRef Assertion

module dstress.compile.l.lazy_01_C;

class C {
	void func(lazy uint x) {
		func(this.toHash());
	}
}

