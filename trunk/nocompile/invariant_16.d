// $HeadURL$
// $Date$
// $Author$

// invariant is only allowed in class/union/struct (dmd-0.119 documentation)

// __DSTRESS_ELINE__ 13

module dstress.nocompile.invariant_16;

interface MyInterface{
	private int check();
	invariant(){
		assert(check()!=4);
	}
}
class MyClass : MyInterface {
	void test(){
	}

	private int check(){
		return 4;
	}
}

int main(){
	Myclass c = new MyClass();
	c.test();
	return 0;
}
