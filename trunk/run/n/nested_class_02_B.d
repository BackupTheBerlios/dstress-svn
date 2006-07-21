// $HeadURL$
// $Date$
// $Author$

module dstress.run.n.nested_class_02_B;

void func(){
	int m;

	class Inner{
		void test(int i){
			m=i;
		}
	}

	Inner inner = new Inner();
	assert(m==0);
	inner.test(1);
	assert(m==1);
}

int main(){
	func();
	return 0;
}
