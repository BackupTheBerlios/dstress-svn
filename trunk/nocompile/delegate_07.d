// $HeaderURL$
// $Date$
// $Author$

// delegates can only be initialized with non-static member functions

// __DSTRESS_ELINE__ 19

module dstress.nocompile.delegate_07;

struct MyStruct{
	int test;
}

int main(){
	int delegate() dl;
	
	MyStruct s;
	dl = &s.test;

	return 0;
}
