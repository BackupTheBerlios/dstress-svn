// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2006-11-18
// @uri@	news:bug-551-3@http.d.puremagic.com/issues/
// @desc@	[Issue 551] New: Modulo operator works with imaginary and complex operands

// __DSTRESS_ELINE__ 19

module dstress.nocompile.o.opMod_03_E;

void foo(){
	const float a;
	const ifloat b;

	auto x = a % b;
}
