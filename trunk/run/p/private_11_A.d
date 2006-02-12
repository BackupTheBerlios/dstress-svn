// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2006-02-07
// @uri@	news:dsbrc6$lj7$1@digitaldaemon.com

module dstress.run.p.private_11_A;

class A{
	private int x;
}

class Wrapper{
	static class B{
		int test(A other){
			return other.x;
		}
	}
}

int main(){
	A a = new A();
	Wrapper.B b = new Wrapper.B();
	
	assert(b.test(a) == 0);
	
	a.x = 3;
	assert(b.test(a) == 3);

	return 0;
}
