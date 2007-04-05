// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-01-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=810
// @desc@	[Issue 810] Cannot forward reference template

module dstress.compile.f.forward_reference_18_D;

Template!(int) stack;
template Template(T) {}
