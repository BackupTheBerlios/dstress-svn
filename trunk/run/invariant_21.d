// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2005-02-05
// @uri@	news:cu30gc$29cb$1@digitaldaemon.com

module dstress.run.invariant_21;

class MyClass{

	private int g() { 
		return 1;
	}

	public void check(){
	}

	invariant{
		assert(g()==1);
	}
}

int main(){
	MyClass c = new MyClass();
	c.check();
	return 0;
}
