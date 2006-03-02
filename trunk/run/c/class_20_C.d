// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.class_20_C;

interface A{
	int foo();
	int bar();
}

interface B{
	int dummy();
	int bar();
}

class C :  A, B{
	int foo(){
		return 0;
	}

	int dummy(){
		return 2;
	}
	
	int bar(){
		return 1;
	}
}

int main(){
	C c = new C();

	if(c.foo() != 0){
		assert(0);
	}

	if(c.bar() != 1){
		assert(0);
	}

	if(c.dummy() != 2){
		assert(0);
	}

	A a = c;

	if(a.foo() != 0){
		assert(0);
	}

	if(a.bar() != 1){
		assert(0);
	}

	B b = c;

	if(b.bar() != 1){
		assert(0);
	}

	if(c.dummy() != 2){
		assert(0);
	}

	return 0;
}