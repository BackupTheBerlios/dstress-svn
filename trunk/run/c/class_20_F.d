// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.class_20_F;

interface A{
	int foo();
	int bar();
}

interface B(T) : T{
	int dummy();
	int bar();
}


class C : B!(A){
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
	auto c = new C();

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

	B!(A) b = c;

	if(b.bar() != 1){
		assert(0);
	}

	if(c.dummy() != 2){
		assert(0);
	}

	return 0;
}
