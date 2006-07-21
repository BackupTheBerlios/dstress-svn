// $HeadURL$
// $Date$
// $Author$

module dstress.run.n.nested_class_02_E;

void func(){
	static int m;

	static class Inner{
		int test(){
			return m;
		}
	}

	Inner inner = new Inner();
	assert(inner.test()==m);
}

int main(){
	func();
	return 0;
}
