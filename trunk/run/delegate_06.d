// $HeaderURL$
// $Date$
// $Author$

module dstress.run.delegate_06;

class MyClass{
	int test(){
		return 3;
	}
}

int main(){
	int delegate() dl;
	
	MyClass c = new MyClass();
	dl = &c.test;
	assert(dl()==3);

	return 0;
}
