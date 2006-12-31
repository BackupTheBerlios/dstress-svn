// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2006-11-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=551
// @desc@	[Issue 551] New: Modulo operator works with imaginary and complex operands

// __DSTRESS_ELINE__ 18

module dstress.nocompile.o.opMod_05_A;

void foo(){
	ireal a;
	ireal b;

	auto x = a % b;
}
