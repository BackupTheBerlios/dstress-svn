// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 10

module dstress.nocompile.struct_06;

struct MyStruct{
	~this(){}
}

int main(){
	MyStruct m;
	return 0;
}
