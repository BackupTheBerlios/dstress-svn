// $HeadURL$
// $Date$
// $Author$

module dstress.run.n.nested_class_01_A;

class Outer{
	int value;
	Inner i;

	this(){
		i = new Inner();
	}

	class Inner{
		int test(){
			return value;
		}
	}
}

int main(){
	Outer o = new Outer();
	Outer.Inner i = o.i;
	o.value = 2;
	assert(i.test()==2);

	return 0;
}
