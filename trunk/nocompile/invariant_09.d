// invariant is only allowed in classes (dmd-0.104 documentation)

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
