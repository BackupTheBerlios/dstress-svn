// $HeadURL$
// $Date$
// $Author$

module dstress.run.mixin_10;

MyClass dummyThis;

int value=1;

class MyClass{

	this(){}

	int value=2;
	
	void test(){
		dummyThis=this;
		value=3;
		with(new MyClass()){
			assert(value==2);
			assert(this==dummyThis);
		}
	}	
}

int main(){
	MyClass c = new MyClass();
	c.test();
	return 0;
}
