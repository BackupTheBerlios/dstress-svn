// $HeadURL$
// $Date$
// $Author$

module dstress.run.n.nested_class_01_E;

class Outer{
	static int m=2;

	static class Inner{
		int test(){
			return m;
		}
	}

	Inner inner;

	this(){
		inner = new Inner();
	}
}

int main(){
	Outer o = new Outer();
	assert(o.m == o.inner.test());
	return 0;
}
