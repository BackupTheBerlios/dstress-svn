// $HeaderURL$
// $Date$
// $Author$

// delegates can only be initialized with non-static member functions

// __DSTRESS_ELINE__ 19

module dstress.nocompile.delegate_08;

class MyClass{
	int test;
}

int main(){
	int delegate() dl;
	
	MyClass c;
	dl = &c.test;

	return 0;
}
