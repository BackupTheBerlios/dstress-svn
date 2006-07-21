// $HeadURL$
// $Date$
// $Author$

// @author@	<jarrett.billingsley@gmail.com>
// @date@	2006-04-02
// @uri@	news:bug-80-3@http.d.puremagic.com/bugzilla/

module dstress.run.n.nested_class_04_C;

struct Outer{
	int i;
	
	class Inner{
		int x;

		this(){
			 x = i;
		}
	}

	Inner test(){
		Inner o;

		void bug(){
			o = new Inner();
		}

		bug();

		return o;
	}
}

int main(){
	Outer* outer = new Outer();
	outer.i = 1;
	Outer.Inner inner = outer.test();
	outer.i = 2;
	
	if(inner.x != 1){
		assert(0);
	}

	return 0;
}
