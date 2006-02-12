// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2006-02-07
// @uri@	news:dsbrc6$lj7$1@digitaldaemon.com

module dstress.run.p.private_11_C;

class A{
	private int x;
}

class B{
	int test(A other){
		return other.x;
	}
}

int main(){
	A a = new A();
	B b = new B();
		
	assert(b.test(a) == 0);
	
	a.x = 3;
	assert(b.test(a) == 3);

	return 0;
}
