// $HeadURL$
// $Date$
// $URL$

// struct allocation at compiletime is impossible

module dstress.nocompile.const_08;

struct MyStruct{
	int i;
}

const MyStruct* s = new MyStruct;

