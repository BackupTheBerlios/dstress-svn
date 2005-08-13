// $HeadURL$
// $Date$
// $Author$

module dstress.run.o.offsetof_79;

class MyClass{
	int a;
}

int main(){
	MyClass o = new MyClass();

	assert(MyClass.test.offsetof >= 0);

	return 0;
}
