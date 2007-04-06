// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-04-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1097
// @desc@	[Issue 1097] Missing line number: casting array to array of different element size

// __DSTRESS_ELINE__ 15

module dstress.nocompile.c.cast_35_A;

int[] foo() {
	return cast(int[])"a";
}
