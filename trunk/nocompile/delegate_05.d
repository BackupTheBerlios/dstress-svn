// $HeaderURL$
// $Date$
// $Author$

// delegates can't be initialized with static member functions or
// non-member functions

// __DSTRESS_ELINE__ 22

module dstress.nocompile.delegate_05;

class MyClass{
	static int test(){
		return 3;
	}
}

int main(){
	int delegate() dl;
	
	MyClass c;
	dl = &c.test;

	return 0;
}
