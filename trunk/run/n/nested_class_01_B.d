// $HeadURL$
// $Date$
// $Author$

module dstress.run.n.nested_class_01_B;

class Outer{
	int value;
	Inner inner;

	this(int i){
		inner = new Inner();
		value = i;
	}

	class Inner{
		void test(int i){
			value=i;
		}
	}
}

int main(){
	Outer o = new Outer(3);
	assert(o.value == 3);
	o.inner.test(2);
	assert(o.value == 2);

	return 0;
}
