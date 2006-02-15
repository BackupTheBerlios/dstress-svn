// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 16

module dstress.nocompile.u.unchecked_01_B;

void test(){
	short a = 0x7FFF;

	short b;
	
	unchecked{
		b = a * a;
	}
}
