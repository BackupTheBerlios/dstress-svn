// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-08-27
// @uri@	news:deojrd$2h97$2@digitaldaemon.com

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.s.super_12_A;

int statusA;
int statusB;

class A{
	class B:A{
		this(){
			statusB++;
			super();
		}
	}

	B b;

	this(){
		statusA++;
		assert(statusA<100);
		
		b = new B;
	}

}

int main(){
	try{
		statusA = 0;
		statusB = 0;
		
		A a = new A;
	}catch{
		assert(statusA == 100);
		assert(statusB == 99);
		return 0;
	}
	assert(0);
}
