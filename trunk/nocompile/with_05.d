// $HeadURL$
// $Date$
// $Author$

// has to be a class instance or struct reference

// __DSTRESS_ELINE__ 14

module dstress.nocompile.with_05;

class MyClass{
	void test(){
		byte b;
		with(b){
			assert(0);
		}
	}
}

int main(){
	MyClass c = new MyClass();
	c.test();
	return 0;
}
