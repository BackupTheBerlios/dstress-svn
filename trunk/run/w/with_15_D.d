// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-09-06
// @uri@	news:bug-325-3@http.d.puremagic.com/issues/
// @desc@	[Issue 325] New: Overriding members and overloading with alias causes bogus error messages in with().

module dstress.run.w.with_15_D;

class Base{
	int data;

	void foo(int i){
		data = i;
	}
	int foo(){
		return data;
	}
}

class Derived : Base{
	alias Base.foo foo;
	
	override void foo(int i){
		super.data = 2 * i;
	}
}

int main(){
	Derived d = new Derived();
	d.foo(3);
	with(d){
		if(foo != 6){
			assert(0);
		}
	}

	return 0;
}

