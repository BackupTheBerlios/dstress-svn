// $HeadURL$
// $Date$
// $Author$

// invariant is only allowed in class/union/struct (dmd-0.119 documentation)

// __DSTRESS_ELINE__ 13

module dstress.nocompile.invariant_09;

class MyClass{
	int test(){
		invariant{
			assert(0);
		}
		return 0;
	}
}

int main(){
	Myclass c = new MyClass();
	return c.test();
}
