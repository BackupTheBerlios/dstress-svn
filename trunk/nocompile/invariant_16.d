// invariant is only allowed in classes (dmd-0.104 documentation)

module dstress.nocompile.invariant_16;

interface MyInterface{
	private int check();
	invariant{
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
