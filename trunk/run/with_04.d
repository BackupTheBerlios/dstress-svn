// $HeadURL$
// $Date$
// $Author$

module dstress.run.with_04;

Child dummySuper;

int value=1;

class Parent{
	int value=2;
}

class Child : Parent{
	int value=3;
}

class GrandChild :  Child {
	int value=4;
	
	void test(){
		dummySuper=super;
		value=5;
		with(new Child()){
			assert(value==3);
			assert(super==dummySuper);
		}
	}	
}

int main(){
	GrandChild c = new GrandChild();
	c.test();
	return 0;
}
