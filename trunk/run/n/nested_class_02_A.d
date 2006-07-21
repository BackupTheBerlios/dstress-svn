// $HeadURL$
// $Date$
// $Author$

module dstress.run.n.nested_class_02_A;

void func(){
	int m;

	class Inner{
		int test(){
			return m;
		}
	}

	Inner inner = new Inner();
	assert(inner.test()==0);
	m=2;
	assert(inner.test()==2);
}

int main(){
	func();
	return 0;
}
