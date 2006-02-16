// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.class_20_J;

interface A1{
	int foo();
}

interface A2{
	int bar();
}

interface B(T) : T{
	int dummy();
	int bar();
}


class C(T1, T2) : B!(T1), B!(T2){
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
	auto c = new C!(A1, A2)();

	if(c.foo() != 0){
		assert(0);
	}

	if(c.bar() != 1){
		assert(0);
	}

	if(c.dummy() != 2){
		assert(0);
	}

	A1 a1 = c;

	if(a1.foo() != 0){
		assert(0);
	}

	A2 a2 = c;
	
	if(a2.bar() != 1){
		assert(0);
	}

	B!(A1) b1 = c;

	if(b1.bar() != 1){
		assert(0);
	}

	if(b1.dummy() != 2){
		assert(0);
	}

	B!(A2) b2 = c;

	if(b2.bar() != 1){
		assert(0);
	}

	if(b2.dummy() != 2){
		assert(0);
	}

	return 0;
}
