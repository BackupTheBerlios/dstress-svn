// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 16

module dstress.nocompile.enum_37;

enum E{
	A = 1
}

E e;

enum Enum : E {
	B = e
}
