// $HeadURL$
// $Date$
// $Author$

// functions are no member fields

module dstress.nocompile.offsetof_06;

class MyClass{
	int a;
	void test(){
	}
	int b;	
}

int main(){
	MyClass o = new MyClass();

	assert(o.test.offsetof >= 0);

	return 0;
}
