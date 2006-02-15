// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 14

module dstress.nocompile.u.unchecked_01_A;

void test(){
	short a = 0x7FFF;
	short b;
	b = unchecked(a * a);
}
