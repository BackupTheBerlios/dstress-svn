// $HeadURL$
// $Date$
// $Author$

// functions are no member fields

// __DSTRESS_ELINE__ 21

module dstress.nocompile.offsetof_06;

class MyClass{
	int a;
	void test(){
	}
	int b;	
}

int main(){
	MyClass o = new MyClass();

	assert(MyClass.test.offsetof >= 0);

	return 0;
}
