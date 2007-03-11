// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <webmaster@villagersonline.com>
// @date@	2007-03-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1026
// @desc@	[Issue 1026] dmd SEGV when checking length of Tuple elements when length == 0

module dstress.compile.t.tuple_18_E;

template Tuple(Elements...) {
	alias Elements Tuple;
}

Tuple!() elements;

static assert(elements.length == 0);
