// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2006-11-18
// @uri@	news:bug-551-3@http.d.puremagic.com/issues/
// @desc@	[Issue 551] New: Modulo operator works with imaginary and complex operands

// __JSTRESS_KLINE__ 18

module dstress.nocompile.o.opMod_03_G;

void foo(){
	cfloat a;
	cfloat b;

	auto x = a % b;
}
