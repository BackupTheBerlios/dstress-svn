// $HeadURL$
// $Date$
// $Author$

// @author@	<daiphoenix@lycos.com>
// @date@	2006-03-14
// @uri@	news:bug-50-3@http.d.puremagic.com/bugzilla/

module dstress.run.n.nested_class_05_B;

struct Outer{
	int i;
	
	class Inner{
		int x;

		this(){
			x = i;
		}
	}
}

int main(){
	Outer* outer = new Outer();
	outer.i = 1;
	Outer.Inner inner = outer.new Inner();
	outer.i = 2;

	if(inner.x != 1){
		assert(0);
	}

	return 0;
}
