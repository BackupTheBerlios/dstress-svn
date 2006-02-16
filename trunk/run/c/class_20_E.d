// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.class_20_E;

interface A{
	int foo();
	int bar();
}

interface B{
	int dummy();
	int bar();
}


class Parent : A, B{
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

class C(T) : T{
}

int main(){
	auto c = new C!(Parent)();

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
