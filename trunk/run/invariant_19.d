// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2005-02-05
// @uri@	news:cu30gc$29cb$1@digitaldaemon.com

module dstress.run.invariant_19;

class MyClass{

	this(){
	}

	private int g() { 
		return 1;
	}

	invariant{
		assert(g()==1);
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}
