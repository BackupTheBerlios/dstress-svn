// $HeadURL$
// $Date$
// $Author$

module dstress.run.typeof_04;

class A {
	int value(){
		return 'A';
	}
}

class B : A {
	int value(){
		return 'B';
	}

	typeof(super) a;    // y is declared to be an A
	typeof(this) b;     // x is declared to be a B
	
	this(){
		a = new A();
		//b = new B();
	}
}

int main(){
	B b = new B();
	
	assert(b.value == 'B');
	assert(b.a.value == 'A');
	//assert(b.b.value == 'B');
	
	return 0;
}
