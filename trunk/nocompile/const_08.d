// $HeadURL$
// $Date$
// $URL$

// struct allocation at compiletime is impossible

// __DSTRESS_ELINE__ 15

module dstress.nocompile.const_08;

struct MyStruct{
	int i;
}

const MyStruct* s = new MyStruct;

