// $HeadURL$
// $Date$
// $Author$

module dstress.run.o.outer_01_E;

struct A{
	class B{
	}

	void test(){
		B b = new B();
		if(!(b.outer is this)){
			assert(0);
		}
	}
}

int main(){
	A a;
	a.test();

	return 0;
}
