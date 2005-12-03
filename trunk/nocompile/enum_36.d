// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.enum_36;

struct S{
}

const S s;

enum Enum : S {
	A = s
}
