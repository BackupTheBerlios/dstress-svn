// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2005-02-05
// @uri@	news:cu30gc$29cb$1@digitaldaemon.com

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_22;

class MyClass{

	private int g() { 
		return 1;
	}

	invariant{
		assert(g()==1);
	}
}

int main(){
	MyClass c = new MyClass();
	assert(c);
	return 0;
}
