// $HeaderURL$
// $Date$
// $Author$

// delegates can only be initialized with non-static member functions

module dstress.nocompile.delegate_09;

enum MyEnum{
	test
}

int main(){
	int delegate() dl;
	
	MyEnum e;
	dl = &e.test;

	return 0;
}
