// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.abstract_16_B;

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
	A a = new A();

	if(a.test() == 1){
		return 0;
	}
}
