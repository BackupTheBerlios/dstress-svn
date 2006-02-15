// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 16

module dstress.nocompile.c.checked_01_B;

void test(){
	short a = 0x7FFF;

	short b;
	
	checked{
		b = a * a;
	}
}
