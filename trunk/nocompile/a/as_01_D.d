// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 16

module dstress.nocompile.a.as_01_D;

struct C{
}

C test(Object o){
	C* c;
	c = o as C;
	return c;
}

