// $HeadURL$
// $Date$
// $Author$

// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1018
// @desc@	[Issue 1018] regression: Error: divide by 0

// __DSTRESS_ELINE__ 14

module dstress.nocompile.o.opMod_01_H;

const ulong a = 2;
const ulong b = 0;
const ulong c = a % b;
