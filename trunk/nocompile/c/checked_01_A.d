// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 14

module dstress.nocompile.c.checked_01_A;

void test(){
	short a = 0x7FFF;
	short b;
	b = checked(a*a);
}
