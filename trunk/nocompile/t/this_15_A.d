// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2007-02-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=951
// @desc@	[Issue 951] Missing line number: no constructor provided for a class derived from a class with no default constructor

// __DSTRESS_ELINE__ 19

module dstress.nocompile.t.this_15_A;

class Base {
	this(int x) {
	}
}

class Derived : Base {
}
