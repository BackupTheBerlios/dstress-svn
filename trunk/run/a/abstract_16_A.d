// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.abstract_16_A;

class A{
	int test(){
		return 1;
	}
}

class B : A{
	abstract override int test();
}

class C : B{
	override int test(){
		return 2;
	}
}

int main(){
	C c = new C();

	if(c.test() != 2){
		assert(0);
	}

	B b = c;

	if(b.test() != 2){
		assert(0);
	}

	A a = b;

	if(a.test() == 2){
		return 0;
	}
}
