// $HeadURL$
// $Date$
// $URL$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.const_11;

struct MyStruct{
	int i=2;
}

const MyStruct s;
const MyStruct* sp = &s;

