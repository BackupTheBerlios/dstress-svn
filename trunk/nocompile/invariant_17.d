// invariant may not call non-static public class member functions (stack overflow)

module dstress.nocompile.invariant_17;

class MyClass{
	this(){
	}

	int test(){
		return 0;
	}

	invariant{
		assert(test()!=0);
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}
