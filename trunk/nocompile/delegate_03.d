// $HeaderURL$
// $Date$
// $Author$

// delegates can't be initialized with static member functions or
// non-member functions

module dstress.nocompile.delegate_03;

struct MyStruct{
	static int test(){
		return 3;
	}
}

int main(){
	int delegate() dl;
	
	MyStruct s;
	dl = &s.test;

	return 0;
}
