// $HeadURL$
// $Date$
// $URL$

module dstress.nocompile.const_11;

struct MyStruct{
	int i=2;
}

const MyStruct s;
const MyStruct* sp = &s;

