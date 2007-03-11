// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <webmaster@villagersonline.com>
// @date@	2007-03-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1026
// @desc@	[Issue 1026] dmd SEGV when checking length of Tuple elements when length == 0

module dstress.compile.t.tuple_18_C;

template Tuple(Elements...) {
	alias Elements Tuple;
}

union foo {
	Tuple!(int) elements;
}

static assert(foo.elements.length == 1);
